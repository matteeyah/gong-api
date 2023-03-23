# -*- encoding: utf-8 -*-

=begin
#Gong API



OpenAPI spec version: V2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.37
=end

$:.push File.expand_path("../lib", __FILE__)
require "gong_api/version"

Gem::Specification.new do |s|
  s.name        = "gong_api"
  s.version     = GongAPI::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Matija Čupić"]
  s.email       = ["matteeyah@gmail.com"]
  s.homepage    = "https://github.com/matteeyah/gong-api"
  s.summary     = "A Ruby Swagger API client for Gong"
  s.description = "A Ruby Swagger API client for Gong"
  s.license     = 'MIT'
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 2.1', '>= 2.1.0'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rubocop-rspec'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
