# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exam1/version'

Gem::Specification.new do |spec|
  spec.name          = "exam1"
  spec.version       = Exam1::VERSION
  spec.authors       = ["Alejandro Delgado Martel"]
  spec.email         = ["alu0100767452@ull.edu.es"]
  spec.summary       = %q{Pruebas TDD para la clase SeleccionSimple y List}
  spec.description   = %q{Se ejecutarán las pruebas haciendo uso de TDD y RSpec sobre la clase SeleccionSimple y la clase List }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.11"

  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"

  spec.add_development_dependency "coveralls"
end
