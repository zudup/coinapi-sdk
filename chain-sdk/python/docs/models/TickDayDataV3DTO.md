# openapi_client.model.tick_day_data_v3_dto.TickDayDataV3DTO

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  |  | [optional] 
**date** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**pool** | None, str,  | NoneClass, str,  |  | [optional] 
**tick** | None, str,  | NoneClass, str,  |  | [optional] 
**liquidity_gross** | None, str,  | NoneClass, str,  |  | [optional] 
**liquidity_net** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**fees_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**fee_growth_outside_0x128** | None, str,  | NoneClass, str,  |  | [optional] 
**fee_growth_outside_1x128** | None, str,  | NoneClass, str,  |  | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

