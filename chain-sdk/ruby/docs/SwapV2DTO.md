# OpenapiClient::SwapV2DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **vid** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **transaction** | **String** |  | [optional] |
| **timestamp** | **Time** |  | [optional] |
| **pair** | **String** |  | [optional] |
| **sender** | **String** |  | [optional] |
| **from** | **String** |  | [optional] |
| **amount_0_in** | **String** |  | [optional] |
| **amount_1_in** | **String** |  | [optional] |
| **amount_0_out** | **String** |  | [optional] |
| **amount_1_out** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **log_index** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **amount_usd** | **String** |  | [optional] |
| **evaluated_price** | **Float** |  | [optional][readonly] |
| **evaluated_amount** | **Float** |  | [optional][readonly] |
| **evaluated_aggressor** | [**ETradeAggressiveSide**](ETradeAggressiveSide.md) |  | [optional] |
| **pool_id** | **String** |  | [optional][readonly] |
| **transaction_id** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SwapV2DTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  vid: null,
  id: null,
  transaction: null,
  timestamp: null,
  pair: null,
  sender: null,
  from: null,
  amount_0_in: null,
  amount_1_in: null,
  amount_0_out: null,
  amount_1_out: null,
  to: null,
  log_index: null,
  amount_usd: null,
  evaluated_price: null,
  evaluated_amount: null,
  evaluated_aggressor: null,
  pool_id: null,
  transaction_id: null
)
```

