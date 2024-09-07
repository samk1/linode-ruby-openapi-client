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

# Unit tests for LinodeOpenapiClient::PostObjectStorageBucketAccessRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LinodeOpenapiClient::PostObjectStorageBucketAccessRequest do
  let(:instance) { LinodeOpenapiClient::PostObjectStorageBucketAccessRequest.new }

  describe 'test an instance of PostObjectStorageBucketAccessRequest' do
    it 'should create an instance of PostObjectStorageBucketAccessRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(LinodeOpenapiClient::PostObjectStorageBucketAccessRequest)
    end
  end

  describe 'test attribute "acl"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["private", "public-read", "authenticated-read", "public-read-write", "custom"])
      # validator.allowable_values.each do |value|
      #   expect { instance.acl = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "cors_enabled"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
