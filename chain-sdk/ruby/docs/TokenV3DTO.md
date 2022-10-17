# OpenapiClient::TokenV3DTO

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
| **volume** | **String** |  | [optional] |
| **volume_usd** | **String** |  | [optional] |
| **untracked_volume_usd** | **String** |  | [optional] |
| **fees_usd** | **String** |  | [optional] |
| **tx_count** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **pool_count** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **total_value_locked** | **String** |  | [optional] |
| **total_value_locked_usd** | **String** |  | [optional] |
| **total_value_locked_usd_untracked** | **String** |  | [optional] |
| **derived_eth** | **String** |  | [optional] |
| **whitelist_pools** | **Array&lt;String&gt;** |  | [optional] |
| **token_symbol** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TokenV3DTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  vid: null,
  id: null,
  symbol: null,
  name: null,
  decimals: null,
  total_supply: null,
  volume: null,
  volume_usd: null,
  untracked_volume_usd: null,
  fees_usd: null,
  tx_count: null,
  pool_count: null,
  total_value_locked: null,
  total_value_locked_usd: null,
  total_value_locked_usd_untracked: null,
  derived_eth: null,
  whitelist_pools: null,
  token_symbol: null
)
```

