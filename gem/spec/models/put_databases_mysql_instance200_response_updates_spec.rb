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

# Unit tests for LinodeOpenapiClient::PutDatabasesMysqlInstance200ResponseUpdates
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LinodeOpenapiClient::PutDatabasesMysqlInstance200ResponseUpdates do
  let(:instance) { LinodeOpenapiClient::PutDatabasesMysqlInstance200ResponseUpdates.new }

  describe 'test an instance of PutDatabasesMysqlInstance200ResponseUpdates' do
    it 'should create an instance of PutDatabasesMysqlInstance200ResponseUpdates' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(LinodeOpenapiClient::PutDatabasesMysqlInstance200ResponseUpdates)
    end
  end

  describe 'test attribute "hour_of_day"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "duration"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "week_of_month"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "day_of_week"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "frequency"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["weekly", "monthly"])
      # validator.allowable_values.each do |value|
      #   expect { instance.frequency = value }.not_to raise_error
      # end
    end
  end

end
