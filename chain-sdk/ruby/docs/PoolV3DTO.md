# OpenapiClient::PoolV3DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **vid** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **created_at_timestamp** | **Time** |  | [optional] |
| **token_0** | **String** |  | [optional] |
| **token_1** | **String** |  | [optional] |
| **fee_tier** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **liquidity** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **sqrt_price** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **fee_growth_global_0x128** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **fee_growth_global_1x128** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **token_0_price** | **String** |  | [optional] |
| **token_1_price** | **String** |  | [optional] |
| **tick** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **observation_index** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **volume_token_0** | **String** |  | [optional] |
| **volume_token_1** | **String** |  | [optional] |
| **volume_usd** | **String** |  | [optional] |
| **untracked_volume_usd** | **String** |  | [optional] |
| **fees_usd** | **String** |  | [optional] |
| **tx_count** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **collected_fees_token_0** | **String** |  | [optional] |
| **collected_fees_token_1** | **String** |  | [optional] |
| **collected_fees_usd** | **String** |  | [optional] |
| **total_value_locked_token_0** | **String** |  | [optional] |
| **total_value_locked_token_1** | **String** |  | [optional] |
| **total_value_locked_eth** | **String** |  | [optional] |
| **total_value_locked_usd** | **String** |  | [optional] |
| **total_value_locked_usd_untracked** | **String** |  | [optional] |
| **liquidity_provider_count** | **String** |  | [optional] |
| **evaluated_ask** | **Float** |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PoolV3DTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  vid: null,
  id: null,
  created_at_timestamp: null,
  token_0: null,
  token_1: null,
  fee_tier: null,
  liquidity: null,
  sqrt_price: null,
  fee_growth_global_0x128: null,
  fee_growth_global_1x128: null,
  token_0_price: null,
  token_1_price: null,
  tick: null,
  observation_index: null,
  volume_token_0: null,
  volume_token_1: null,
  volume_usd: null,
  untracked_volume_usd: null,
  fees_usd: null,
  tx_count: null,
  collected_fees_token_0: null,
  collected_fees_token_1: null,
  collected_fees_usd: null,
  total_value_locked_token_0: null,
  total_value_locked_token_1: null,
  total_value_locked_eth: null,
  total_value_locked_usd: null,
  total_value_locked_usd_untracked: null,
  liquidity_provider_count: null,
  evaluated_ask: null
)
```

