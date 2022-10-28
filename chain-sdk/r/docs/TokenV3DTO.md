# openapi::TokenV3DTO

Stores aggregated information for a specific token across all pairs that token is included in.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** |  | [optional] 
**vid** | **integer** |  | [optional] 
**id** | **character** | token address | [optional] 
**symbol** | **character** | token symbol | [optional] 
**name** | **character** | token name | [optional] 
**decimals** | **integer** | token decimals | [optional] 
**total_supply** | [**BigInteger**](BigInteger.md) |  | [optional] 
**volume** | **character** | volume in token units | [optional] 
**volume_usd** | **character** | volume in derived USD | [optional] 
**untracked_volume_usd** | **character** | volume in USD even on pools with less reliable USD values | [optional] 
**fees_usd** | **character** | fees in USD | [optional] 
**tx_count** | [**BigInteger**](BigInteger.md) |  | [optional] 
**pool_count** | [**BigInteger**](BigInteger.md) |  | [optional] 
**total_value_locked** | **character** | liquidity across all pools in token units | [optional] 
**total_value_locked_usd** | **character** | liquidity across all pools in derived USD | [optional] 
**total_value_locked_usd_untracked** | **character** | TVL derived in USD untracked | [optional] 
**derived_eth** | **character** | derived price in ETH | [optional] 
**whitelist_pools** | **array[character]** | pools token is in that are white listed for USD pricing | [optional] 
**token_symbol** | **character** |  | [optional] [readonly] 


