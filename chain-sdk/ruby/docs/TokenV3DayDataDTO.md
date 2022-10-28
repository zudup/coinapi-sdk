# OpenapiClient::TokenV3DayDataDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **vid** | **Integer** |  | [optional] |
| **id** | **String** | token address concatendated with date | [optional] |
| **date** | **Integer** | timestamp rounded to current day by dividing by 86400 | [optional] |
| **token** | **String** | pointer to token | [optional] |
| **volume** | **String** | volume in token units | [optional] |
| **volume_usd** | **String** | volume in derived USD | [optional] |
| **untracked_volume_usd** | **String** | volume in USD even on pools with less reliable USD values | [optional] |
| **total_value_locked** | **String** | liquidity across all pools in token units | [optional] |
| **total_value_locked_usd** | **String** | liquidity across all pools in derived USD | [optional] |
| **price_usd** | **String** | price at end of period in USD | [optional] |
| **fees_usd** | **String** | fees in USD | [optional] |
| **open** | **String** | opening price USD | [optional] |
| **high** | **String** | high price USD | [optional] |
| **low** | **String** | low price USD | [optional] |
| **close** | **String** | close price USD | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokenV3DayDataDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  vid: null,
  id: null,
  date: null,
  token: null,
  volume: null,
  volume_usd: null,
  untracked_volume_usd: null,
  total_value_locked: null,
  total_value_locked_usd: null,
  price_usd: null,
  fees_usd: null,
  open: null,
  high: null,
  low: null,
  close: null
)
```

