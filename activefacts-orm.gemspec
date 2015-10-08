# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activefacts/orm/version'

Gem::Specification.new do |spec|
  spec.name          = "activefacts-orm"
  spec.version       = ActiveFacts::ORM::VERSION
  spec.authors       = ["Clifford Heath"]
  spec.email         = ["clifford.heath@gmail.com"]

  spec.summary       = %q{ORM format importer for the ActiveFacts fact modeling suite.}
  spec.description   = %q{ORM format importer for the ActiveFacts fact modeling suite.
Install the Natural ORM Architect from http://ormfoundation.org to produce input files.
}
  spec.homepage      = "http://github.com/cjheath/activefacts-orm"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.add_runtime_dependency(%q<activefacts-metamodel>, [">= 1.7.0", "~> 1.7"])
  spec.add_runtime_dependency(%q<nokogiri>)
end
