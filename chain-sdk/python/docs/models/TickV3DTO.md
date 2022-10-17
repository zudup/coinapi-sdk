# openapi_client.model.tick_v3_dto.TickV3DTO

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
**pool_address** | None, str,  | NoneClass, str,  |  | [optional] 
**tick_idx** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**pool** | None, str,  | NoneClass, str,  |  | [optional] 
**liquidity_gross** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**liquidity_net** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**price_0** | None, str,  | NoneClass, str,  |  | [optional] 
**price_1** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**untracked_volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**fees_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**collected_fees_token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**collected_fees_token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**collected_fees_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**created_at_timestamp** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**liquidity_provider_count** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**fee_growth_outside_0x128** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**fee_growth_outside_1x128** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

