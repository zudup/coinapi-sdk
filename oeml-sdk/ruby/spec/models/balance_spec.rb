=begin
#OEML - REST API

#This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::Balance
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Balance' do
  before do
    # run before each test
    @instance = OpenapiClient::Balance.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Balance' do
    it 'should create an instance of Balance' do
      expect(@instance).to be_instance_of(OpenapiClient::Balance)
    end
  end
  describe 'test attribute "exchange_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end