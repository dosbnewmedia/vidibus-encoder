# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'vidibus/encoder/version'

Gem::Specification.new do |s|
  s.name        = 'vidibus-encoder'
  s.version     = Vidibus::Encoder::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = 'André Pankratz'
  s.email       = 'andre@vidibus.com'
  s.homepage    = 'https://github.com/vidibus/vidibus-encoder'
  s.summary     = 'Encoder framework'
  s.description = s.summary
  s.license     = 'MIT'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = s.name

  s.add_dependency 'posix-spawn'
  s.add_dependency 'vidibus-fileinfo'
  s.add_dependency 'vidibus-uuid'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rr'
  s.add_development_dependency 'simplecov'

  s.files = Dir.glob('{lib,app,config}/**/*') + %w[LICENSE README.md Rakefile]
  s.require_path = 'lib'
end
