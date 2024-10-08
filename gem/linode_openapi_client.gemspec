# -*- encoding: utf-8 -*-

=begin
#Linode API

#[Read the API documentation](https://techdocs.akamai.com/linode-api/reference/api).

The version of the OpenAPI document: 4.177.1
Contact: support@linode.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "linode_openapi_client/version"

Gem::Specification.new do |s|
  s.name        = "linode_openapi_client"
  s.version     = LinodeOpenapiClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sam Kidman"]
  s.email       = ["samkidman@gmail.com"]
  s.homepage    = "https://github.com/samk1/linode-ruby-openapi-client/tree/main/gem"
  s.summary     = "OpenAPI Client for Linode API"
  s.description = "OpenAPI Client for Linode API"
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
