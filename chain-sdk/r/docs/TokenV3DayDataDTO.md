# openapi::TokenV3DayDataDTO

Token data aggregated across all pairs that include token.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entry_time** | **character** |  | [optional] 
**recv_time** | **character** |  | [optional] 
**block_number** | **integer** |  | [optional] 
**vid** | **integer** |  | [optional] 
**id** | **character** | token address concatendated with date | [optional] 
**date** | **integer** | timestamp rounded to current day by dividing by 86400 | [optional] 
**token** | **character** | pointer to token | [optional] 
**volume** | **character** | volume in token units | [optional] 
**volume_usd** | **character** | volume in derived USD | [optional] 
**untracked_volume_usd** | **character** | volume in USD even on pools with less reliable USD values | [optional] 
**total_value_locked** | **character** | liquidity across all pools in token units | [optional] 
**total_value_locked_usd** | **character** | liquidity across all pools in derived USD | [optional] 
**price_usd** | **character** | price at end of period in USD | [optional] 
**fees_usd** | **character** | fees in USD | [optional] 
**open** | **character** | opening price USD | [optional] 
**high** | **character** | high price USD | [optional] 
**low** | **character** | low price USD | [optional] 
**close** | **character** | close price USD | [optional] 


