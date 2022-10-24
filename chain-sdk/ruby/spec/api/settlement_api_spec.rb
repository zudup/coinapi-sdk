=begin
#OnChain API

# This section will provide necessary information about the `OnChain API` protocol.  <br/><br/> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.                             

The version of the OpenAPI document: v1
Contact: support@coinapi.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::SettlementApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SettlementApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::SettlementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SettlementApi' do
    it 'should create an instance of SettlementApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::SettlementApi)
    end
  end

  # unit tests for chains_chain_id_dapps_cow_settlement_historical_get
  # @param chain_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start_block 
  # @option opts [Integer] :end_block 
  # @option opts [Time] :start_date 
  # @option opts [Time] :end_date 
  # @return [nil]
  describe 'chains_chain_id_dapps_cow_settlement_historical_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
