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

### Encrypt

```
ectoken -k <key> -t <parameters>
```

Read the docs for available parameters.

### Decrypt

```
ectoken -k <key> -t <encrypted token> -d
```