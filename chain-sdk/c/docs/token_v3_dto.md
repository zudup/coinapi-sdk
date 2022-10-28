# token_v3_dto_t

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
**volume** | **char \*** | volume in token units | [optional] 
**volume_usd** | **char \*** | volume in derived USD | [optional] 
**untracked_volume_usd** | **char \*** | volume in USD even on pools with less reliable USD values | [optional] 
**fees_usd** | **char \*** | fees in USD | [optional] 
**tx_count** | [**big_integer_t**](big_integer.md) \* |  | [optional] 
**pool_count** | [**big_integer_t**](big_integer.md) \* |  | [optional] 
**total_value_locked** | **char \*** | liquidity across all pools in token units | [optional] 
**total_value_locked_usd** | **char \*** | liquidity across all pools in derived USD | [optional] 
**total_value_locked_usd_untracked** | **char \*** | TVL derived in USD untracked | [optional] 
**derived_eth** | **char \*** | derived price in ETH | [optional] 
**whitelist_pools** | **list_t \*** | pools token is in that are white listed for USD pricing | [optional] 
**token_symbol** | **char \*** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


