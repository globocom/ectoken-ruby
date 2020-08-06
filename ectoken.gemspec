lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name = "ectoken"
  spec.version = EdgeCastToken::VERSION
  spec.authors = ["Maurício de Abreu Antunes"]
  spec.email = ["mauricio.abreua@gmail.com"]

  spec.summary = %q{Encryptor/decryptor for Verizon's edge cast token}
  spec.description = %q{Encryptor/decryptor for Verizon's edge cast token}
  spec.homepage = "https://github.com/mauricioabreu/ectoken-ruby"
  spec.license  = "Apache License 2.0"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/mauricioabreu/ectoken-ruby"
    spec.metadata["changelog_uri"] = "https://github.com/mauricioabreu/ectoken-ruby"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
          "public gem pushes."
  end

  spec.require_paths = ["lib"]
end