# Verizon Edge Cast Token

Encryptor/decryptor for Verizon's ectoken


## Installation

Add this line to your application's Gemfile:

```
gem 'ectoken'
```

And then execute:

```
$ bundle
```

Or install it yourself using:

```
$ gem install ectoken
```

## Usage

This program can encrypt and decrypt Verizon Edge Cast token:

```ruby
require "ectoken"

token = EdgeCastToken::Token.encrypt("12345", "ec_expire=1596103200&ec_url_allow=/images/")
puts token
decrypted = EdgeCastToken::Token.decrypt("12345", decrypted)
puts decrypted
```

You can also use the command line tool:

### Encrypt

```
ectoken -k <key> -t <parameters>
```

Read the docs for available parameters.

### Decrypt

```
ectoken -k <key> -t <encrypted token> -d
```