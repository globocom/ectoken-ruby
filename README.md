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
$ gem install verizon_token
```

## Usage

This program can encrypt and decrypt Verizon Edge Cast token:

```ruby
require "ectoken"

key = "0c8e886bc361f6f2fd3f29facc6eddgl48e2c6f19e49c85ac738c69a25f70581"

token = EdgeCastToken::Token.encrypt(key, "ec_expire=1596103200&ec_url_allow=/images/")
puts token

decrypted = EdgeCastToken::Token.decrypt(key, decrypted)
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

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/globocom/ectoken-ruby