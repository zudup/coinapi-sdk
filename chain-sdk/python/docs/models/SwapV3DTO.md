# openapi_client.model.swap_v3_dto.SwapV3DTO

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
**transaction** | None, str,  | NoneClass, str,  |  | [optional] 
**timestamp** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**pool** | None, str,  | NoneClass, str,  |  | [optional] 
**token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**sender** | None, str,  | NoneClass, str,  |  | [optional] 
**recipient** | None, str,  | NoneClass, str,  |  | [optional] 
**origin** | None, str,  | NoneClass, str,  |  | [optional] 
**amount_0** | None, str,  | NoneClass, str,  |  | [optional] 
**amount_1** | None, str,  | NoneClass, str,  |  | [optional] 
**amount_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**sqrt_price_x96** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**tick** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**log_index** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**evaluated_price** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] value must be a 64 bit float
**evaluated_amount** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] value must be a 64 bit float
**evaluated_aggressor** | [**ETradeAggressiveSide**](ETradeAggressiveSide.md) | [**ETradeAggressiveSide**](ETradeAggressiveSide.md) |  | [optional] 
**pool_id** | None, str,  | NoneClass, str,  |  | [optional] 
**transaction_id** | None, str,  | NoneClass, str,  |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

