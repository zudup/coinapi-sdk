# openapi_client.model.pair_v2_dto.PairV2DTO

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
**token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**reserve_0** | None, str,  | NoneClass, str,  |  | [optional] 
**reserve_1** | None, str,  | NoneClass, str,  |  | [optional] 
**total_supply** | None, str,  | NoneClass, str,  |  | [optional] 
**reserve_eth** | None, str,  | NoneClass, str,  |  | [optional] 
**reserve_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**tracked_reserve_eth** | None, str,  | NoneClass, str,  |  | [optional] 
**token_0_price** | None, str,  | NoneClass, str,  |  | [optional] 
**token_1_price** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**untracked_volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**tx_count** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**created_at_timestamp** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**liquidity_provider_count** | None, str,  | NoneClass, str,  |  | [optional] 
**evaluated_ask** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] value must be a 64 bit float

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

