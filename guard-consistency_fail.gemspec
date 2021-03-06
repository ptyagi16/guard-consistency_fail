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

  s.add_dependency 'guard',                     '>= 2.1'
  s.add_dependency 'guard-compat', '~> 1.0'
  s.add_dependency 'consistency_fail'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-bundler'

  s.files            = Dir['{lib,doc,test}/**/*', 'README*']
  s.test_files       = Dir['{test,spec,features}/**/*']
  s.extra_rdoc_files = Dir['{doc}/**/*', 'README*', 'LICENSE']
  s.executables      = Dir['{bin}/**/*'].map{ |f| File.basename f}
  s.require_paths = ["lib"]
end
