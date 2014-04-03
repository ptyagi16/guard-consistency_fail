# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/consistency_fail/version"

Gem::Specification.new do |s|
  s.name        = "guard-consistency_fail"
  s.version     = Guard::ConsistencyFailVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Pankaj Tyagi"]
  s.email       = ["ptyagi@tyagination.com"]
  s.homepage    = 'http://rubygems.org/gems/guard-consistency_fail'
  s.summary     = %q{guard gem for consistency_fail}
  s.description = %q{Guard::ConsistencyFail automatically runs consistency fail when model or schema.rb changes}
  s.license     = 'MIT'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = "guard-consistency_fail"
  
  s.add_dependency 'guard',                     '~> 0.3.0'
  s.add_dependency 'consistency_fail',          '~> 0.3.2'

  s.add_development_dependency 'bundler',       '> 1.0.10'
  s.add_development_dependency 'rspec',         '> 2.5.0'
  s.add_development_dependency 'guard-rspec',   '> 0.2.0'
  s.add_development_dependency 'guard-bundler', '> 0.1.1'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
