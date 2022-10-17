# OpenapiClient::TokenHourDataV3DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **period_start_unix** | **Integer** |  | [optional] |
| **token** | **String** |  | [optional] |
| **volume** | **String** |  | [optional] |
| **volume_usd** | **String** |  | [optional] |
| **untracked_volume_usd** | **String** |  | [optional] |
| **total_value_locked** | **String** |  | [optional] |
| **total_value_locked_usd** | **String** |  | [optional] |
| **price_usd** | **String** |  | [optional] |
| **fees_usd** | **String** |  | [optional] |
| **open** | **String** |  | [optional] |
| **high** | **String** |  | [optional] |
| **low** | **String** |  | [optional] |
| **close** | **String** |  | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokenHourDataV3DTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  period_start_unix: null,
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
  close: null,
  vid: null
)
```

