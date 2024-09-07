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

# Unit tests for LinodeOpenapiClient::PostObjectStorageKeys200ResponseBucketAccessInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LinodeOpenapiClient::PostObjectStorageKeys200ResponseBucketAccessInner do
  let(:instance) { LinodeOpenapiClient::PostObjectStorageKeys200ResponseBucketAccessInner.new }

  describe 'test an instance of PostObjectStorageKeys200ResponseBucketAccessInner' do
    it 'should create an instance of PostObjectStorageKeys200ResponseBucketAccessInner' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(LinodeOpenapiClient::PostObjectStorageKeys200ResponseBucketAccessInner)
    end
  end

  describe 'test attribute "region"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "cluster"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "permissions"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["read_write", "read_only"])
      # validator.allowable_values.each do |value|
      #   expect { instance.permissions = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "bucket_name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
