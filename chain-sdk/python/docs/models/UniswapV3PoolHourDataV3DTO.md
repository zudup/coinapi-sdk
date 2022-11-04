# openapi_client.model.uniswap_v3_pool_hour_data_v3_dto.UniswapV3PoolHourDataV3DTO

Hourly stats tracker for pool.

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | Hourly stats tracker for pool. | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**entry_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**recv_time** | str, datetime,  | str,  |  | [optional] value must conform to RFC-3339 date-time
**block_number** | decimal.Decimal, int,  | decimal.Decimal,  | Number of block in which entity was recorded. | [optional] value must be a 64 bit integer
**id** | None, str,  | NoneClass, str,  | Identifier, format: &lt;pool address&gt;-&lt;day id&gt; | [optional] 
**period_start_unix** | decimal.Decimal, int,  | decimal.Decimal,  | Unix timestamp for start of hour. | [optional] value must be a 32 bit integer
**pool** | None, str,  | NoneClass, str,  | Pointer to pool. | [optional] 
**liquidity** | None, str,  | NoneClass, str,  | In range liquidity at end of period. | [optional] 
**sqrt_price** | None, str,  | NoneClass, str,  | Current price tracker at end of period. | [optional] 
**token_0_price** | None, str,  | NoneClass, str,  | Price of token0 - derived from sqrtPrice. | [optional] 
**token_1_price** | None, str,  | NoneClass, str,  | Price of token1 - derived from sqrtPrice. | [optional] 
**tick** | None, str,  | NoneClass, str,  | Current tick at end of period. | [optional] 
**fee_growth_global_0x128** | None, str,  | NoneClass, str,  | Tracker for global fee growth. | [optional] 
**fee_growth_global_1x128** | None, str,  | NoneClass, str,  | Tracker for global fee growth. | [optional] 
**tvl_usd** | None, str,  | NoneClass, str,  | Total value locked derived in USD at end of period. | [optional] 
**volume_token_0** | None, str,  | NoneClass, str,  | Volume in token0. | [optional] 
**volume_token_1** | None, str,  | NoneClass, str,  | Volume in token1. | [optional] 
**volume_usd** | None, str,  | NoneClass, str,  | Volume in USD. | [optional] 
**fees_usd** | None, str,  | NoneClass, str,  | Fees in USD. | [optional] 
**tx_count** | None, str,  | NoneClass, str,  | Number of transactions during period. | [optional] 
**open** | None, str,  | NoneClass, str,  | Opening price of token0. | [optional] 
**high** | None, str,  | NoneClass, str,  | High price of token0. | [optional] 
**low** | None, str,  | NoneClass, str,  | Low price of token0. | [optional] 
**close** | None, str,  | NoneClass, str,  | Close price of token0. | [optional] 
**vid** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 64 bit integer

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)
