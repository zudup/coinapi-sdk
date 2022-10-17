# openapi_client.model.pool_v3_dto.PoolV3DTO

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
**created_at_timestamp** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**fee_tier** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**liquidity** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**sqrt_price** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**fee_growth_global_0x128** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**fee_growth_global_1x128** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**token_0_price** | None, str,  | NoneClass, str,  |  | [optional] 
**token_1_price** | None, str,  | NoneClass, str,  |  | [optional] 
**tick** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**observation_index** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**volume_token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**untracked_volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**fees_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**tx_count** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**collected_fees_token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**collected_fees_token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**collected_fees_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**total_value_locked_token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**total_value_locked_token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**total_value_locked_eth** | None, str,  | NoneClass, str,  |  | [optional] 
**total_value_locked_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**total_value_locked_usd_untracked** | None, str,  | NoneClass, str,  |  | [optional] 
**liquidity_provider_count** | None, str,  | NoneClass, str,  |  | [optional] 
**evaluated_ask** | decimal.Decimal, int, float,  | decimal.Decimal,  |  | [optional] value must be a 64 bit float

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

