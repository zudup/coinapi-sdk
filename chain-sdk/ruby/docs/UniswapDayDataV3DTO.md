# OpenapiClient::UniswapDayDataV3DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **vid** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **date** | **Integer** |  | [optional] |
| **volume_eth** | **String** |  | [optional] |
| **volume_usd** | **String** |  | [optional] |
| **volume_usd_untracked** | **String** |  | [optional] |
| **fees_usd** | **String** |  | [optional] |
| **tx_count** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **tvl_usd** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UniswapDayDataV3DTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  vid: null,
  id: null,
  date: null,
  volume_eth: null,
  volume_usd: null,
  volume_usd_untracked: null,
  fees_usd: null,
  tx_count: null,
  tvl_usd: null
)
```

