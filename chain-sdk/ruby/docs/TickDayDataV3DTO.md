# OpenapiClient::TickDayDataV3DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **date** | **Integer** |  | [optional] |
| **pool** | **String** |  | [optional] |
| **tick** | **String** |  | [optional] |
| **liquidity_gross** | **String** |  | [optional] |
| **liquidity_net** | **String** |  | [optional] |
| **volume_token_0** | **String** |  | [optional] |
| **volume_token_1** | **String** |  | [optional] |
| **volume_usd** | **String** |  | [optional] |
| **fees_usd** | **String** |  | [optional] |
| **fee_growth_outside_0x128** | **String** |  | [optional] |
| **fee_growth_outside_1x128** | **String** |  | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TickDayDataV3DTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  date: null,
  pool: null,
  tick: null,
  liquidity_gross: null,
  liquidity_net: null,
  volume_token_0: null,
  volume_token_1: null,
  volume_usd: null,
  fees_usd: null,
  fee_growth_outside_0x128: null,
  fee_growth_outside_1x128: null,
  vid: null
)
```

