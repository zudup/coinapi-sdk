# OpenapiClient::PairDTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **factory** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **token_0** | **String** |  | [optional] |
| **token_1** | **String** |  | [optional] |
| **reserve_0** | **String** |  | [optional] |
| **reserve_1** | **String** |  | [optional] |
| **total_supply** | **String** |  | [optional] |
| **reserve_eth** | **String** |  | [optional] |
| **reserve_usd** | **String** |  | [optional] |
| **tracked_reserve_eth** | **String** |  | [optional] |
| **token_0_price** | **String** |  | [optional] |
| **token_1_price** | **String** |  | [optional] |
| **volume_token_0** | **String** |  | [optional] |
| **volume_token_1** | **String** |  | [optional] |
| **volume_usd** | **String** |  | [optional] |
| **untracked_volume_usd** | **String** |  | [optional] |
| **tx_count** | **String** |  | [optional] |
| **liquidity_provider_count** | **String** |  | [optional] |
| **timestamp** | **String** |  | [optional] |
| **block** | **String** |  | [optional] |
| **vid** | **Integer** |  | [optional] |
| **evaluated_ask** | **Float** |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PairDTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  factory: null,
  name: null,
  token_0: null,
  token_1: null,
  reserve_0: null,
  reserve_1: null,
  total_supply: null,
  reserve_eth: null,
  reserve_usd: null,
  tracked_reserve_eth: null,
  token_0_price: null,
  token_1_price: null,
  volume_token_0: null,
  volume_token_1: null,
  volume_usd: null,
  untracked_volume_usd: null,
  tx_count: null,
  liquidity_provider_count: null,
  timestamp: null,
  block: null,
  vid: null,
  evaluated_ask: null
)
```

