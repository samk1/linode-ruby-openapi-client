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

# Unit tests for LinodeOpenapiClient::GetBackup200ResponseDisksInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LinodeOpenapiClient::GetBackup200ResponseDisksInner do
  let(:instance) { LinodeOpenapiClient::GetBackup200ResponseDisksInner.new }

  describe 'test an instance of GetBackup200ResponseDisksInner' do
    it 'should create an instance of GetBackup200ResponseDisksInner' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(LinodeOpenapiClient::GetBackup200ResponseDisksInner)
    end
  end

  describe 'test attribute "filesystem"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["raw", "swap", "ext3", "ext4", "initrd"])
      # validator.allowable_values.each do |value|
      #   expect { instance.filesystem = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "label"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "size"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
