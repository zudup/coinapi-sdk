# token_v3_day_data_dto_t

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **char \*** |  | [optional] 
**recv_time** | **char \*** |  | [optional] 
**block_number** | **long** |  | [optional] 
**vid** | **long** |  | [optional] 
**id** | **char \*** | token address concatendated with date | [optional] 
**date** | **int** | timestamp rounded to current day by dividing by 86400 | [optional] 
**token** | **char \*** | pointer to token | [optional] 
**volume** | **char \*** | volume in token units | [optional] 
**volume_usd** | **char \*** | volume in derived USD | [optional] 
**untracked_volume_usd** | **char \*** | volume in USD even on pools with less reliable USD values | [optional] 
**total_value_locked** | **char \*** | liquidity across all pools in token units | [optional] 
**total_value_locked_usd** | **char \*** | liquidity across all pools in derived USD | [optional] 
**price_usd** | **char \*** | price at end of period in USD | [optional] 
**fees_usd** | **char \*** | fees in USD | [optional] 
**open** | **char \*** | opening price USD | [optional] 
**high** | **char \*** | high price USD | [optional] 
**low** | **char \*** | low price USD | [optional] 
**close** | **char \*** | close price USD | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


