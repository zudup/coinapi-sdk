# WWW::OpenAPIClient::Object::TokenV3DayDataDTO

## Load the model package
```perl
use WWW::OpenAPIClient::Object::TokenV3DayDataDTO;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **DATE_TIME** |  | [optional] 
**recv_time** | **DATE_TIME** |  | [optional] 
**block_number** | **int** |  | [optional] 
**vid** | **int** |  | [optional] 
**id** | **string** | token address concatendated with date | [optional] 
**date** | **int** | timestamp rounded to current day by dividing by 86400 | [optional] 
**token** | **string** | pointer to token | [optional] 
**volume** | **string** | volume in token units | [optional] 
**volume_usd** | **string** | volume in derived USD | [optional] 
**untracked_volume_usd** | **string** | volume in USD even on pools with less reliable USD values | [optional] 
**total_value_locked** | **string** | liquidity across all pools in token units | [optional] 
**total_value_locked_usd** | **string** | liquidity across all pools in derived USD | [optional] 
**price_usd** | **string** | price at end of period in USD | [optional] 
**fees_usd** | **string** | fees in USD | [optional] 
**open** | **string** | opening price USD | [optional] 
**high** | **string** | high price USD | [optional] 
**low** | **string** | low price USD | [optional] 
**close** | **string** | close price USD | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


