# OpenapiClient::TickV3DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **vid** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **pool_address** | **String** |  | [optional] |
| **tick_idx** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **pool** | **String** |  | [optional] |
| **liquidity_gross** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **liquidity_net** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **price_0** | **String** |  | [optional] |
| **price_1** | **String** |  | [optional] |
| **volume_token_0** | **String** |  | [optional] |
| **volume_token_1** | **String** |  | [optional] |
| **volume_usd** | **String** |  | [optional] |
| **untracked_volume_usd** | **String** |  | [optional] |
| **fees_usd** | **String** |  | [optional] |
| **collected_fees_token_0** | **String** |  | [optional] |
| **collected_fees_token_1** | **String** |  | [optional] |
| **collected_fees_usd** | **String** |  | [optional] |
| **created_at_timestamp** | **Time** |  | [optional] |
| **liquidity_provider_count** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **fee_growth_outside_0x128** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **fee_growth_outside_1x128** | [**BigInteger**](BigInteger.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TickV3DTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  vid: null,
  id: null,
  pool_address: null,
  tick_idx: null,
  pool: null,
  liquidity_gross: null,
  liquidity_net: null,
  price_0: null,
  price_1: null,
  volume_token_0: null,
  volume_token_1: null,
  volume_usd: null,
  untracked_volume_usd: null,
  fees_usd: null,
  collected_fees_token_0: null,
  collected_fees_token_1: null,
  collected_fees_usd: null,
  created_at_timestamp: null,
  liquidity_provider_count: null,
  fee_growth_outside_0x128: null,
  fee_growth_outside_1x128: null
)
```

