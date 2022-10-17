# OpenapiClient::SwapV3DTO

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
| **pool** | **String** |  | [optional] |
| **token_0** | **String** |  | [optional] |
| **token_1** | **String** |  | [optional] |
| **sender** | **String** |  | [optional] |
| **recipient** | **String** |  | [optional] |
| **origin** | **String** |  | [optional] |
| **amount_0** | **String** |  | [optional] |
| **amount_1** | **String** |  | [optional] |
| **amount_usd** | **String** |  | [optional] |
| **sqrt_price_x96** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **tick** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **log_index** | [**BigInteger**](BigInteger.md) |  | [optional] |
| **evaluated_price** | **Float** |  | [optional][readonly] |
| **evaluated_amount** | **Float** |  | [optional][readonly] |
| **evaluated_aggressor** | [**ETradeAggressiveSide**](ETradeAggressiveSide.md) |  | [optional] |
| **pool_id** | **String** |  | [optional][readonly] |
| **transaction_id** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SwapV3DTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  vid: null,
  id: null,
  transaction: null,
  timestamp: null,
  pool: null,
  token_0: null,
  token_1: null,
  sender: null,
  recipient: null,
  origin: null,
  amount_0: null,
  amount_1: null,
  amount_usd: null,
  sqrt_price_x96: null,
  tick: null,
  log_index: null,
  evaluated_price: null,
  evaluated_amount: null,
  evaluated_aggressor: null,
  pool_id: null,
  transaction_id: null
)
```

