require 'ectoken'

RSpec.describe EdgeCastToken do
  ENCRYPTION_KEY = 'a2dafee0d3a207a4bdfceea01b874cce36772674827f062ae0cd10227441ff3e'.freeze
  
  it "has a version number" do
    expect(EdgeCastToken::VERSION).not_to be_empty
  end

  it "can encrypt a token" do
    expect(EdgeCastToken::Token.encrypt(ENCRYPTION_KEY, "ec_expire=1597190399")).not_to be_empty
  end

  it "can decrypt a token" do
    token = EdgeCastToken::Token.encrypt(ENCRYPTION_KEY, "ec_expire=1597190399&ec_url_allow=/foo/bar")
    expect(EdgeCastToken::Token.decrypt(ENCRYPTION_KEY, token)).to eq("ec_expire=1597190399&ec_url_allow=/foo/bar")
  end
end