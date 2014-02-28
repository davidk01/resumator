# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'resumator/version'

Gem::Specification.new do |spec|
  spec.name          = "resumator"
  spec.version       = Resumator::VERSION
  spec.authors       = ["david karapetyan"]
  spec.email         = ["dkarapetyan@scriptcrafty.com"]
  spec.description   = %q{Simple DSL for writing a resume in Ruby.}
  spec.summary       = %q{Declarative code is always easier.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
