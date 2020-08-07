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

token = EdgeCastToken::Token.encrypt("0c8e886bc361f6f2fd3f29facc6eddgl48e2c6f19e49c85ac738c69a25f70581", "ec_expire=1596103200&ec_url_allow=/images/")
puts token
decrypted = EdgeCastToken::Token.decrypt("0c8e886bc361f6f2fd3f29facc6eddgl48e2c6f19e49c85ac738c69a25f70581", decrypted)
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