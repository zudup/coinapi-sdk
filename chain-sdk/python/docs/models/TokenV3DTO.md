# openapi_client.model.token_v3_dto.TokenV3DTO

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
**volume** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**untracked_volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**fees_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**tx_count** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**pool_count** | [**BigInteger**](BigInteger.md) | [**BigInteger**](BigInteger.md) |  | [optional] 
**total_value_locked** | None, str,  | NoneClass, str,  |  | [optional] 
**total_value_locked_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**total_value_locked_usd_untracked** | None, str,  | NoneClass, str,  |  | [optional] 
**derived_eth** | None, str,  | NoneClass, str,  |  | [optional] 
**[whitelist_pools](#whitelist_pools)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**token_symbol** | None, str,  | NoneClass, str,  |  | [optional] 

# whitelist_pools

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

