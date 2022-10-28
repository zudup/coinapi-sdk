# openapi::TokenV2DTO

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
**trade_volume** | **character** | amount of token traded all time across all pairs | [optional] 
**trade_volume_usd** | **character** | amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold) | [optional] 
**untracked_volume_usd** | **character** | amount of token in USD traded all time across pairs (no minimum liquidity threshold) | [optional] 
**tx_count** | [**BigInteger**](BigInteger.md) |  | [optional] 
**total_liquidity** | **character** | total amount of token provided as liquidity across all pairs | [optional] 
**derived_eth** | **character** | ETH per token | [optional] 
**token_symbol** | **character** |  | [optional] [readonly] 


