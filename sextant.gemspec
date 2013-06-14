
# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sextant/version'

Gem::Specification.new do |gem|
  gem.name          = "sextant"
  gem.version       = Sextant::VERSION
  gem.authors       = ["Richard Schneeman"]
  gem.email         = ["richard.schneeman+rubygems@gmail.com"]
  gem.description   = %q{Sextant is a Rails engine that quickly shows the routes available}
  gem.summary       = %q{Sextant is a Rails engine that quickly shows the routes available.}
  gem.homepage      = "https://github.com/schneems/sextant"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", ">= 3.2"

  gem.add_development_dependency "capybara", ">= 0.4.0"
  gem.add_development_dependency "launchy", "~> 2.1.0"
  gem.add_development_dependency "poltergeist"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "sqlite3"
end