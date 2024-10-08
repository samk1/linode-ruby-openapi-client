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

# Unit tests for LinodeOpenapiClient::PutAccountSettingsRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LinodeOpenapiClient::PutAccountSettingsRequest do
  let(:instance) { LinodeOpenapiClient::PutAccountSettingsRequest.new }

  describe 'test an instance of PutAccountSettingsRequest' do
    it 'should create an instance of PutAccountSettingsRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(LinodeOpenapiClient::PutAccountSettingsRequest)
    end
  end

  describe 'test attribute "managed"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "backups_enabled"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "network_helper"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "longview_subscription"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "object_storage"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["disabled", "suspended", "active"])
      # validator.allowable_values.each do |value|
      #   expect { instance.object_storage = value }.not_to raise_error
      # end
    end
  end

end
