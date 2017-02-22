# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geoip_ts/version'

Gem::Specification.new do |spec|
  spec.name          = "geoip_ts"
  spec.version       = GeoipTs::VERSION
  spec.authors       = ["Yuri Delgado","Yair Cosio"]
  spec.email         = ["ymdelgado@hotmail.com", "yair.cosio@tangosource.com"]

  spec.summary       = %q{Consumme of freegeoip API.}
  spec.description   = %q{Getting general information from websites.}
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = "geoip_ts"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "httparty", "~> 0.13.7"
end
