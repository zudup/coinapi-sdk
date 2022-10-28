# # TokenV3DTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **\DateTime** |  | [optional]
**recv_time** | **\DateTime** |  | [optional]
**block_number** | **int** |  | [optional]
**vid** | **int** |  | [optional]
**id** | **string** | token address | [optional]
**symbol** | **string** | token symbol | [optional]
**name** | **string** | token name | [optional]
**decimals** | **int** | token decimals | [optional]
**total_supply** | [**\OpenAPI\Client\Model\BigInteger**](BigInteger.md) |  | [optional]
**volume** | **string** | volume in token units | [optional]
**volume_usd** | **string** | volume in derived USD | [optional]
**untracked_volume_usd** | **string** | volume in USD even on pools with less reliable USD values | [optional]
**fees_usd** | **string** | fees in USD | [optional]
**tx_count** | [**\OpenAPI\Client\Model\BigInteger**](BigInteger.md) |  | [optional]
**pool_count** | [**\OpenAPI\Client\Model\BigInteger**](BigInteger.md) |  | [optional]
**total_value_locked** | **string** | liquidity across all pools in token units | [optional]
**total_value_locked_usd** | **string** | liquidity across all pools in derived USD | [optional]
**total_value_locked_usd_untracked** | **string** | TVL derived in USD untracked | [optional]
**derived_eth** | **string** | derived price in ETH | [optional]
**whitelist_pools** | **string[]** | pools token is in that are white listed for USD pricing | [optional]
**token_symbol** | **string** |  | [optional] [readonly]

[[Back to Model list]](../../README.md#models) [[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)
