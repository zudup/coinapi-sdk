# OpenapiClient::TokenV2DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **vid** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **symbol** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **decimals** | **Integer** |  | [optional] |
| **total_supply** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **trade_volume** | **String** |  | [optional] |
| **trade_volume_usd** | **String** |  | [optional] |
| **untracked_volume_usd** | **String** |  | [optional] |
| **tx_count** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **total_liquidity** | **String** |  | [optional] |
| **derived_eth** | **String** |  | [optional] |
| **token_symbol** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokenV2DTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  vid: null,
  id: null,
  symbol: null,
  name: null,
  decimals: null,
  total_supply: null,
  trade_volume: null,
  trade_volume_usd: null,
  untracked_volume_usd: null,
  tx_count: null,
  total_liquidity: null,
  derived_eth: null,
  token_symbol: null
)
```

