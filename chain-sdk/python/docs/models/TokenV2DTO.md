# openapi_client.model.token_v2_dto.TokenV2DTO

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
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  |  | [optional] 
**symbol** | None, str,  | NoneClass, str,  |  | [optional] 
**name** | None, str,  | NoneClass, str,  |  | [optional] 
**decimals** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**total_supply** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**trade_volume** | None, str,  | NoneClass, str,  |  | [optional] 
**trade_volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**untracked_volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**tx_count** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**total_liquidity** | None, str,  | NoneClass, str,  |  | [optional] 
**derived_eth** | None, str,  | NoneClass, str,  |  | [optional] 
**token_symbol** | None, str,  | NoneClass, str,  |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

