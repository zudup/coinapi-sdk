# OpenapiClient::TokenDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **factory** | **String** |  | [optional] |
| **symbol** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **decimals** | **String** |  | [optional] |
| **total_supply** | **String** |  | [optional] |
| **volume** | **String** |  | [optional] |
| **volume_usd** | **String** |  | [optional] |
| **untracked_volume_usd** | **String** |  | [optional] |
| **tx_count** | **String** |  | [optional] |
| **liquidity** | **String** |  | [optional] |
| **derived_eth** | **String** |  | [optional] |
| **whitelist_pairs** | **Array&lt;String&gt;** |  | [optional] |
| **vid** | **Integer** |  | [optional] |
| **token_symbol** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokenDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  factory: null,
  symbol: null,
  name: null,
  decimals: null,
  total_supply: null,
  volume: null,
  volume_usd: null,
  untracked_volume_usd: null,
  tx_count: null,
  liquidity: null,
  derived_eth: null,
  whitelist_pairs: null,
  vid: null,
  token_symbol: null
)
```

