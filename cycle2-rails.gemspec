# -*- encoding: utf-8 -*-
require File.expand_path('../lib/cycle2-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mike Alsup", "Tomas Celizna"]
  gem.email         = ["tomas.celizna@gmail.com"]
  gem.description   = %q{Cycle2 is a versatile slideshow plugin for jQuery built around ease-of-use.}
  gem.summary       = %q{Cycle2 is a versatile slideshow plugin for jQuery built around ease-of-use. It supports a declarative initialization style that allows full customization without any scripting. Simply include the plugin, declare your markup, and Cycle2 does the rest.}
  gem.homepage      = "https://github.com/tomasc/cycle2-rails"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "cycle2-rails"
  gem.require_paths = ["lib"]
  gem.version       = Cycle2::Rails::VERSION

  gem.add_dependency "jquery-rails", ">= 2.0"
  
  gem.add_development_dependency "rake"
end
