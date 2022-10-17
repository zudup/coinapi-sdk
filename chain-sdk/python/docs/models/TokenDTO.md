# openapi_client.model.token_dto.TokenDTO

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
**factory** | None, str,  | NoneClass, str,  |  | [optional] 
**symbol** | None, str,  | NoneClass, str,  |  | [optional] 
**name** | None, str,  | NoneClass, str,  |  | [optional] 
**decimals** | None, str,  | NoneClass, str,  |  | [optional] 
**total_supply** | None, str,  | NoneClass, str,  |  | [optional] 
**volume** | None, str,  | NoneClass, str,  |  | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**untracked_volume_usd** | None, str,  | NoneClass, str,  |  | [optional] 
**tx_count** | None, str,  | NoneClass, str,  |  | [optional] 
**liquidity** | None, str,  | NoneClass, str,  |  | [optional] 
**derived_eth** | None, str,  | NoneClass, str,  |  | [optional] 
**[whitelist_pairs](#whitelist_pairs)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer
**token_symbol** | None, str,  | NoneClass, str,  |  | [optional] 

# whitelist_pairs

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | str,  | str,  |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

