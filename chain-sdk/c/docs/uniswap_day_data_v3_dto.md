# uniswap_day_data_v3_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** |  | [optional] 
**vid** | **long** |  | [optional] 
**id** | **char \*** | timestamp rounded to current day by dividing by 86400 | [optional] 
**date** | **int** | timestamp rounded to current day by dividing by 86400 | [optional] 
**volume_eth** | **char \*** | total volume across all pairs on this day, stored as a derived amount of ETH | [optional] 
**volume_usd** | **char \*** | total volume across all pairs on this day, stored as a derived amount of USD | [optional] 
**volume_usd_untracked** | **char \*** | total daily volume in Uniswap derived in terms of USD untracked | [optional] 
**fees_usd** | **char \*** | fees in USD | [optional] 
**tx_count** | [**big_integer_t**](big_integer.md) \* |  | [optional] 
**tvl_usd** | **char \*** | tvl in terms of USD | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


