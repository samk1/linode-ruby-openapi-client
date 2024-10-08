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

# Unit tests for LinodeOpenapiClient::LinodeBackupsSchedule
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LinodeOpenapiClient::LinodeBackupsSchedule do
  let(:instance) { LinodeOpenapiClient::LinodeBackupsSchedule.new }

  describe 'test an instance of LinodeBackupsSchedule' do
    it 'should create an instance of LinodeBackupsSchedule' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(LinodeOpenapiClient::LinodeBackupsSchedule)
    end
  end

  describe 'test attribute "window"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Scheduling", "W0", "W2", "W4", "W6", "W8", "W10", "W12", "W14", "W16", "W18", "W20", "W22"])
      # validator.allowable_values.each do |value|
      #   expect { instance.window = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "day"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Scheduling", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"])
      # validator.allowable_values.each do |value|
      #   expect { instance.day = value }.not_to raise_error
      # end
    end
  end

end
