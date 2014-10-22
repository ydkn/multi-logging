# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'multi_logging/version'

Gem::Specification.new do |spec|
  spec.name          = 'multi-logging'
  spec.version       = MultiLogging::VERSION
  spec.authors       = ['Florian Schwab']
  spec.email         = ['me@ydkn.de']
  spec.summary       = %q{Log to multiple destinations.}
  spec.description   = %q{Log to multiple destinations.}
  spec.homepage      = 'https://github.com/ydkn/multi-logging'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
