# token_v2_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** |  | [optional] 
**vid** | **long** |  | [optional] 
**id** | **char \*** | token address | [optional] 
**symbol** | **char \*** | token symbol | [optional] 
**name** | **char \*** | token name | [optional] 
**decimals** | **int** | token decimals | [optional] 
**total_supply** | [**big_integer_t**](big_integer.md) \* |  | [optional] 
**trade_volume** | **char \*** | amount of token traded all time across all pairs | [optional] 
**trade_volume_usd** | **char \*** | amount of token in USD traded all time across pairs (only for tokens with liquidity above minimum threshold) | [optional] 
**untracked_volume_usd** | **char \*** | amount of token in USD traded all time across pairs (no minimum liquidity threshold) | [optional] 
**tx_count** | [**big_integer_t**](big_integer.md) \* |  | [optional] 
**total_liquidity** | **char \*** | total amount of token provided as liquidity across all pairs | [optional] 
**derived_eth** | **char \*** | ETH per token | [optional] 
**token_symbol** | **char \*** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


