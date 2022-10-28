# TOKEN_V3_DAY_DATA_DTO

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**recv_time** | [**DATE_TIME**](DATE_TIME.md) |  | [optional] [default to null]
**block_number** | **INTEGER_64** |  | [optional] [default to null]
**vid** | **INTEGER_64** |  | [optional] [default to null]
**id** | [**STRING_32**](STRING_32.md) | token address concatendated with date | [optional] [default to null]
**date** | **INTEGER_32** | timestamp rounded to current day by dividing by 86400 | [optional] [default to null]
**token** | [**STRING_32**](STRING_32.md) | pointer to token | [optional] [default to null]
**volume** | [**STRING_32**](STRING_32.md) | volume in token units | [optional] [default to null]
**volume_usd** | [**STRING_32**](STRING_32.md) | volume in derived USD | [optional] [default to null]
**untracked_volume_usd** | [**STRING_32**](STRING_32.md) | volume in USD even on pools with less reliable USD values | [optional] [default to null]
**total_value_locked** | [**STRING_32**](STRING_32.md) | liquidity across all pools in token units | [optional] [default to null]
**total_value_locked_usd** | [**STRING_32**](STRING_32.md) | liquidity across all pools in derived USD | [optional] [default to null]
**price_usd** | [**STRING_32**](STRING_32.md) | price at end of period in USD | [optional] [default to null]
**fees_usd** | [**STRING_32**](STRING_32.md) | fees in USD | [optional] [default to null]
**open** | [**STRING_32**](STRING_32.md) | opening price USD | [optional] [default to null]
**high** | [**STRING_32**](STRING_32.md) | high price USD | [optional] [default to null]
**low** | [**STRING_32**](STRING_32.md) | low price USD | [optional] [default to null]
**close** | [**STRING_32**](STRING_32.md) | close price USD | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


