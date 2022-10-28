# openapi_client.model.position_snapshot_v3_dto.PositionSnapshotV3DTO

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
**owner** | str,  | str,  | THIS IS SUPER OWNER | [optional] 
**pool** | None, str,  | NoneClass, str,  |  | [optional] 
**position** | None, str,  | NoneClass, str,  |  | [optional] 
**timestamp** | None, str,  | NoneClass, str,  |  | [optional] 
**liquidity** | None, str,  | NoneClass, str,  |  | [optional] 
**deposited_token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**deposited_token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**withdrawn_token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**withdrawn_token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**collected_fees_token_0** | None, str,  | NoneClass, str,  |  | [optional] 
**collected_fees_token_1** | None, str,  | NoneClass, str,  |  | [optional] 
**transaction** | None, str,  | NoneClass, str,  |  | [optional] 
**fee_growth_inside_0_last_x128** | None, str,  | NoneClass, str,  |  | [optional] 
**fee_growth_inside_1_last_x128** | None, str,  | NoneClass, str,  |  | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

