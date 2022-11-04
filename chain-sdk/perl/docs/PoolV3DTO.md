# WWW::OpenAPIClient::Object::PoolV3DTO

## Load the model package
```perl
use WWW::OpenAPIClient::Object::PoolV3DTO;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **DATE_TIME** |  | [optional] 
**recv_time** | **DATE_TIME** |  | [optional] 
**block_number** | **int** | Number of block in which entity was recorded. | [optional] 
**vid** | **int** |  | [optional] 
**id** | **string** | Pool address. | [optional] 
**created_at_timestamp** | **DATE_TIME** | Creation time. | [optional] 
**token_0** | **string** | Reference to token0 as stored in pool contract. | [optional] 
**token_1** | **string** | Reference to token1 as stored in pool contract. | [optional] 
**fee_tier** | [**BigInteger**](BigInteger.md) |  | [optional] 
**liquidity** | [**BigInteger**](BigInteger.md) |  | [optional] 
**sqrt_price** | [**BigInteger**](BigInteger.md) |  | [optional] 
**fee_growth_global_0x128** | [**BigInteger**](BigInteger.md) |  | [optional] 
**fee_growth_global_1x128** | [**BigInteger**](BigInteger.md) |  | [optional] 
**token_0_price** | **string** | Token0 per token1. | [optional] 
**token_1_price** | **string** | Token1 per token0. | [optional] 
**tick** | [**BigInteger**](BigInteger.md) |  | [optional] 
**observation_index** | [**BigInteger**](BigInteger.md) |  | [optional] 
**volume_token_0** | **string** | All time token0 swapped. | [optional] 
**volume_token_1** | **string** | All time token1 swapped. | [optional] 
**volume_usd** | **string** | All time USD swapped. | [optional] 
**untracked_volume_usd** | **string** | All time USD swapped, unfiltered for unreliable USD pools. | [optional] 
**fees_usd** | **string** | Fees in USD. | [optional] 
**tx_count** | [**BigInteger**](BigInteger.md) |  | [optional] 
**collected_fees_token_0** | **string** | All time fees collected token0. | [optional] 
**collected_fees_token_1** | **string** | All time fees collected token1. | [optional] 
**collected_fees_usd** | **string** | All time fees collected derived USD. | [optional] 
**total_value_locked_token_0** | **string** | Total token 0 across all ticks. | [optional] 
**total_value_locked_token_1** | **string** |  | [optional] 
**total_value_locked_eth** | **string** | Total token 1 across all ticks. | [optional] 
**total_value_locked_usd** | **string** | Total value locked USD. | [optional] 
**total_value_locked_usd_untracked** | **string** | Total value locked derived ETH. | [optional] 
**liquidity_provider_count** | **string** | Liquidity providers count, used to detect new exchanges. | [optional] 
**evaluated_ask** | **double** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


