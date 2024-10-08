=begin
#Linode API

#[Read the API documentation](https://techdocs.akamai.com/linode-api/reference/api).

The version of the OpenAPI document: 4.177.1
Contact: support@linode.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for LinodeOpenapiClient::PostUploadImage200ResponseImageRegionsInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LinodeOpenapiClient::PostUploadImage200ResponseImageRegionsInner do
  let(:instance) { LinodeOpenapiClient::PostUploadImage200ResponseImageRegionsInner.new }

  describe 'test an instance of PostUploadImage200ResponseImageRegionsInner' do
    it 'should create an instance of PostUploadImage200ResponseImageRegionsInner' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(LinodeOpenapiClient::PostUploadImage200ResponseImageRegionsInner)
    end
  end

  describe 'test attribute "region"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["available", "creating", "pending", "pending deletion", "pending replication", "replicating"])
      # validator.allowable_values.each do |value|
      #   expect { instance.status = value }.not_to raise_error
      # end
    end
  end

end
