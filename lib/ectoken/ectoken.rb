require 'base64'
require 'digest'
require 'openssl'
require 'optparse'

module EdgeCastToken
  def encrypt(key, token)
    digest = Digest::SHA256.digest(key)
    cipher = OpenSSL::Cipher::AES.new(256, :GCM).encrypt
    iv = cipher.random_iv
    cipher.iv = iv
    cipher.key = digest
    cipher_text = cipher.update(token) + cipher.final
    cipher_with_iv = iv + cipher_text + cipher.auth_tag
    Base64.urlsafe_encode64(cipher_with_iv)
  end

  def decrypt(key, token)
    digest = Digest::SHA256.digest(key)
    decoded_token = Base64.urlsafe_decode64(token)
    iv = decoded_token[0..11]
    decipher_text = decoded_token[12..decoded_token.length-17]
    decipher = OpenSSL::Cipher::AES.new(256, :GCM).decrypt
    decipher.iv = iv
    decipher.key = digest
    decipher.update(decipher_text)
  end
end