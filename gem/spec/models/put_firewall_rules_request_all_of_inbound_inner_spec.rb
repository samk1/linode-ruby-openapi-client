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

# Unit tests for LinodeOpenapiClient::PutFirewallRulesRequestAllOfInboundInner
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe LinodeOpenapiClient::PutFirewallRulesRequestAllOfInboundInner do
  let(:instance) { LinodeOpenapiClient::PutFirewallRulesRequestAllOfInboundInner.new }

  describe 'test an instance of PutFirewallRulesRequestAllOfInboundInner' do
    it 'should create an instance of PutFirewallRulesRequestAllOfInboundInner' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(LinodeOpenapiClient::PutFirewallRulesRequestAllOfInboundInner)
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "label"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "protocol"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TCP", "UDP", "ICMP", "IPENCAP"])
      # validator.allowable_values.each do |value|
      #   expect { instance.protocol = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "action"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ACCEPT", "DROP"])
      # validator.allowable_values.each do |value|
      #   expect { instance.action = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "ports"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "addresses"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
