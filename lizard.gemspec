# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lizard/version'

Gem::Specification.new do |gem|
  gem.name          = "lizard"
  gem.version       = Lizard::VERSION
  gem.authors       = ["bjh"]
  gem.email         = ["fake@fake.com"]
  gem.description   = %q{Formatting the Perl CLOC script's CSV output since it isn't really valid/useful CSV.}
  gem.summary       = %q{Basks in the sun, sleeps on rocks, struggles to find love.}
  gem.homepage      = "https://github.com/bjh/lizard"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "trollop", "2.0"
end
