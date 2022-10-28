# OpenapiClient::PositionSnapshotV3DTO

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_time** | **Time** |  | [optional] |
| **recv_time** | **Time** |  | [optional] |
| **block_number** | **Integer** |  | [optional] |
| **id** | **String** |  | [optional] |
| **owner** | **String** | THIS IS SUPER OWNER | [optional] |
| **pool** | **String** |  | [optional] |
| **position** | **String** |  | [optional] |
| **timestamp** | **String** |  | [optional] |
| **liquidity** | **String** |  | [optional] |
| **deposited_token_0** | **String** |  | [optional] |
| **deposited_token_1** | **String** |  | [optional] |
| **withdrawn_token_0** | **String** |  | [optional] |
| **withdrawn_token_1** | **String** |  | [optional] |
| **collected_fees_token_0** | **String** |  | [optional] |
| **collected_fees_token_1** | **String** |  | [optional] |
| **transaction** | **String** |  | [optional] |
| **fee_growth_inside_0_last_x128** | **String** |  | [optional] |
| **fee_growth_inside_1_last_x128** | **String** |  | [optional] |
| **vid** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PositionSnapshotV3DTO.new(
  entry_time: null,
  recv_time: null,
  block_number: null,
  id: null,
  owner: null,
  pool: null,
  position: null,
  timestamp: null,
  liquidity: null,
  deposited_token_0: null,
  deposited_token_1: null,
  withdrawn_token_0: null,
  withdrawn_token_1: null,
  collected_fees_token_0: null,
  collected_fees_token_1: null,
  transaction: null,
  fee_growth_inside_0_last_x128: null,
  fee_growth_inside_1_last_x128: null,
  vid: null
)
```

