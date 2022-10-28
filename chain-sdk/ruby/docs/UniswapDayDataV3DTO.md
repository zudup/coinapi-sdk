# OpenapiClient::UniswapDayDataV3DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **vid** | **Integer** |  | [optional] |
| **id** | **String** | timestamp rounded to current day by dividing by 86400 | [optional] |
| **date** | **Integer** | timestamp rounded to current day by dividing by 86400 | [optional] |
| **volume_eth** | **String** | total volume across all pairs on this day, stored as a derived amount of ETH | [optional] |
| **volume_usd** | **String** | total volume across all pairs on this day, stored as a derived amount of USD | [optional] |
| **volume_usd_untracked** | **String** | total daily volume in Uniswap derived in terms of USD untracked | [optional] |
| **fees_usd** | **String** | fees in USD | [optional] |
| **tx_count** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **tvl_usd** | **String** | tvl in terms of USD | [optional] |

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

