# openapi::UniswapDayDataV3DTO

Data accumulated and condensed into day stats for all of Uniswap

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** |  | [optional] 
**vid** | **integer** |  | [optional] 
**id** | **character** | timestamp rounded to current day by dividing by 86400 | [optional] 
**date** | **integer** | timestamp rounded to current day by dividing by 86400 | [optional] 
**volume_eth** | **character** | total volume across all pairs on this day, stored as a derived amount of ETH | [optional] 
**volume_usd** | **character** | total volume across all pairs on this day, stored as a derived amount of USD | [optional] 
**volume_usd_untracked** | **character** | total daily volume in Uniswap derived in terms of USD untracked | [optional] 
**fees_usd** | **character** | fees in USD | [optional] 
**tx_count** | [**BigInteger**](BigInteger.md) |  | [optional] 
**tvl_usd** | **character** | tvl in terms of USD | [optional] 


