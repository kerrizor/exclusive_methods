# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exclusive_methods/version'

Gem::Specification.new do |spec|
  spec.name          = "exclusive_methods"
  spec.version       = ExclusiveMethods::VERSION
  spec.authors       = ["Kerri Miller"]
  spec.email         = ["kerrizor@kerrizor.com"]
  spec.summary       = %q{Adds methods to expose methods exclusive to a class.}
  spec.description   = %q{Adds methods to a Ruby class that return methods that are exclusive to that class, and do not belong to its ancestors.}
  spec.homepage      = "https://github.com/kerrizor/exclusive_methods"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
