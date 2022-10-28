# WWW::OpenAPIClient::Object::UniswapDayDataV3DTO

## Load the model package
```perl
use WWW::OpenAPIClient::Object::UniswapDayDataV3DTO;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **DATE_TIME** |  | [optional] 
**recv_time** | **DATE_TIME** |  | [optional] 
**block_number** | **int** |  | [optional] 
**vid** | **int** |  | [optional] 
**id** | **string** | timestamp rounded to current day by dividing by 86400 | [optional] 
**date** | **int** | timestamp rounded to current day by dividing by 86400 | [optional] 
**volume_eth** | **string** | total volume across all pairs on this day, stored as a derived amount of ETH | [optional] 
**volume_usd** | **string** | total volume across all pairs on this day, stored as a derived amount of USD | [optional] 
**volume_usd_untracked** | **string** | total daily volume in Uniswap derived in terms of USD untracked | [optional] 
**fees_usd** | **string** | fees in USD | [optional] 
**tx_count** | [**BigInteger**](BigInteger.md) |  | [optional] 
**tvl_usd** | **string** | tvl in terms of USD | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


