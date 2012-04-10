# -*- encoding: utf-8 -*-
require File.expand_path('../lib/lego_nxt/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Steve Klabnik"]
  gem.email         = ["steve@steveklabnik.com"]
  gem.description   = %q{A gem to interface with LEGO NXT robotics.}
  gem.summary       = %q{A gem to interface with LEGO NXT robotics.}
  gem.homepage      = "http://github.com/jumpstartlab/lego_nxt"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "lego_nxt"
  gem.require_paths = ["lib"]
  gem.version       = LegoNXT::VERSION

  gem.add_runtime_dependency 'libusb', '~> 0.1.3'

  gem.add_development_dependency 'rake', '~> 0.9.2'

  # Testing framework
  gem.add_development_dependency 'rspec', '~> 2.9.0'

  # Continous integration testing
  gem.add_development_dependency 'guard', '~> 1.0.1'
  gem.add_development_dependency 'guard-rspec', '~> 0.7.0'

  # Documentation
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'redcarpet'
end
