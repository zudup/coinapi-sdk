# TOKEN_V3_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** |  | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | token address | [optional] [default to null]
**symbol** | [**STRING_32**](STRING_32.md) | token symbol | [optional] [default to null]
**name** | [**STRING_32**](STRING_32.md) | token name | [optional] [default to null]
**decimals** | **INTEGER_32** | token decimals | [optional] [default to null]
**total_supply** | [**BIG_INTEGER**](BigInteger.md) |  | [optional] [default to null]
**volume** | [**STRING_32**](STRING_32.md) | volume in token units | [optional] [default to null]
**volume_usd** | [**STRING_32**](STRING_32.md) | volume in derived USD | [optional] [default to null]
**untracked_volume_usd** | [**STRING_32**](STRING_32.md) | volume in USD even on pools with less reliable USD values | [optional] [default to null]
**fees_usd** | [**STRING_32**](STRING_32.md) | fees in USD | [optional] [default to null]
**tx_count** | [**BIG_INTEGER**](BigInteger.md) |  | [optional] [default to null]
**pool_count** | [**BIG_INTEGER**](BigInteger.md) |  | [optional] [default to null]
**total_value_locked** | [**STRING_32**](STRING_32.md) | liquidity across all pools in token units | [optional] [default to null]
**total_value_locked_usd** | [**STRING_32**](STRING_32.md) | liquidity across all pools in derived USD | [optional] [default to null]
**total_value_locked_usd_untracked** | [**STRING_32**](STRING_32.md) | TVL derived in USD untracked | [optional] [default to null]
**derived_eth** | [**STRING_32**](STRING_32.md) | derived price in ETH | [optional] [default to null]
**whitelist_pools** | [**LIST [STRING_32]**](STRING_32.md) | pools token is in that are white listed for USD pricing | [optional] [default to null]
**token_symbol** | [**STRING_32**](STRING_32.md) |  | [optional] [readonly] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


