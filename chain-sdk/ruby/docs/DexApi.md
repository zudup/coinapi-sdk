# OpenapiClient::DexApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dex_get_batches__historical**](DexApi.md#dex_get_batches__historical) | **GET** /dapps/dex/batches/historical | Batches (historical) |
| [**dex_get_deposits__historical**](DexApi.md#dex_get_deposits__historical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) |
| [**dex_get_orders__historical**](DexApi.md#dex_get_orders__historical) | **GET** /dapps/dex/orders/historical | Orders (historical) |
| [**dex_get_prices__historical**](DexApi.md#dex_get_prices__historical) | **GET** /dapps/dex/prices/historical | Prices (historical) |
| [**dex_get_solutions__historical**](DexApi.md#dex_get_solutions__historical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) |
| [**dex_get_stats__historical**](DexApi.md#dex_get_stats__historical) | **GET** /dapps/dex/stats/historical | Stats (historical) |
| [**dex_get_tokens__historical**](DexApi.md#dex_get_tokens__historical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥 |
| [**dex_get_trades__historical**](DexApi.md#dex_get_trades__historical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥 |
| [**dex_get_users__historical**](DexApi.md#dex_get_users__historical) | **GET** /dapps/dex/users/historical | Users (historical) |
| [**dex_get_withdraws__historical**](DexApi.md#dex_get_withdraws__historical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) |
| [**dex_get_withdraws_requests__historical**](DexApi.md#dex_get_withdraws_requests__historical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical) |


## dex_get_batches__historical

> <Array<DexBatchDTO>> dex_get_batches__historical(opts)

Batches (historical)

Gets batches.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # Batches (historical)
  result = api_instance.dex_get_batches__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_batches__historical: #{e}"
end
```

#### Using the dex_get_batches__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexBatchDTO>>, Integer, Hash)> dex_get_batches__historical_with_http_info(opts)

```ruby
begin
  # Batches (historical)
  data, status_code, headers = api_instance.dex_get_batches__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexBatchDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_batches__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |

### Return type

[**Array&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_deposits__historical

> <Array<DexDepositDTO>> dex_get_deposits__historical(opts)

Deposits (historical)

Gets deposits.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # Deposits (historical)
  result = api_instance.dex_get_deposits__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_deposits__historical: #{e}"
end
```

#### Using the dex_get_deposits__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexDepositDTO>>, Integer, Hash)> dex_get_deposits__historical_with_http_info(opts)

```ruby
begin
  # Deposits (historical)
  data, status_code, headers = api_instance.dex_get_deposits__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexDepositDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_deposits__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_orders__historical

> <Array<DexOrderDTO>> dex_get_orders__historical(opts)

Orders (historical)

Gets orders.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # Orders (historical)
  result = api_instance.dex_get_orders__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_orders__historical: #{e}"
end
```

#### Using the dex_get_orders__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexOrderDTO>>, Integer, Hash)> dex_get_orders__historical_with_http_info(opts)

```ruby
begin
  # Orders (historical)
  data, status_code, headers = api_instance.dex_get_orders__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexOrderDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_orders__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_prices__historical

> <Array<DexPriceDTO>> dex_get_prices__historical(opts)

Prices (historical)

Gets prices.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # Prices (historical)
  result = api_instance.dex_get_prices__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_prices__historical: #{e}"
end
```

#### Using the dex_get_prices__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexPriceDTO>>, Integer, Hash)> dex_get_prices__historical_with_http_info(opts)

```ruby
begin
  # Prices (historical)
  data, status_code, headers = api_instance.dex_get_prices__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexPriceDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_prices__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_solutions__historical

> <Array<DexSolutionDTO>> dex_get_solutions__historical(opts)

Solutions (historical)

Gets solutions.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # Solutions (historical)
  result = api_instance.dex_get_solutions__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_solutions__historical: #{e}"
end
```

#### Using the dex_get_solutions__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexSolutionDTO>>, Integer, Hash)> dex_get_solutions__historical_with_http_info(opts)

```ruby
begin
  # Solutions (historical)
  data, status_code, headers = api_instance.dex_get_solutions__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexSolutionDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_solutions__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_stats__historical

> <Array<DexStatsDTO>> dex_get_stats__historical(opts)

Stats (historical)

Gets stats.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # Stats (historical)
  result = api_instance.dex_get_stats__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_stats__historical: #{e}"
end
```

#### Using the dex_get_stats__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexStatsDTO>>, Integer, Hash)> dex_get_stats__historical_with_http_info(opts)

```ruby
begin
  # Stats (historical)
  data, status_code, headers = api_instance.dex_get_stats__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexStatsDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_stats__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |

### Return type

[**Array&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_tokens__historical

> <Array<DexTokenDTO>> dex_get_tokens__historical(opts)

Tokens (historical) 🔥

Gets tokens.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # Tokens (historical) 🔥
  result = api_instance.dex_get_tokens__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_tokens__historical: #{e}"
end
```

#### Using the dex_get_tokens__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexTokenDTO>>, Integer, Hash)> dex_get_tokens__historical_with_http_info(opts)

```ruby
begin
  # Tokens (historical) 🔥
  data, status_code, headers = api_instance.dex_get_tokens__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexTokenDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_tokens__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_trades__historical

> <Array<DexTradeDTO>> dex_get_trades__historical(opts)

Trades (historical) 🔥

Gets trades.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # Trades (historical) 🔥
  result = api_instance.dex_get_trades__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_trades__historical: #{e}"
end
```

#### Using the dex_get_trades__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexTradeDTO>>, Integer, Hash)> dex_get_trades__historical_with_http_info(opts)

```ruby
begin
  # Trades (historical) 🔥
  data, status_code, headers = api_instance.dex_get_trades__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexTradeDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_trades__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |

### Return type

[**Array&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_users__historical

> <Array<DexUserDTO>> dex_get_users__historical(opts)

Users (historical)

Gets users.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  # Users (historical)
  result = api_instance.dex_get_users__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_users__historical: #{e}"
end
```

#### Using the dex_get_users__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexUserDTO>>, Integer, Hash)> dex_get_users__historical_with_http_info(opts)

```ruby
begin
  # Users (historical)
  data, status_code, headers = api_instance.dex_get_users__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexUserDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_users__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |

### Return type

[**Array&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_withdraws__historical

> <Array<DexWithdrawDTO>> dex_get_withdraws__historical(opts)

Withdraws (historical)

Gets withdraws.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # Withdraws (historical)
  result = api_instance.dex_get_withdraws__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_withdraws__historical: #{e}"
end
```

#### Using the dex_get_withdraws__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexWithdrawDTO>>, Integer, Hash)> dex_get_withdraws__historical_with_http_info(opts)

```ruby
begin
  # Withdraws (historical)
  data, status_code, headers = api_instance.dex_get_withdraws__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexWithdrawDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_withdraws__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


## dex_get_withdraws_requests__historical

> <Array<DexWithdrawRequestDTO>> dex_get_withdraws_requests__historical(opts)

WithdrawsRequests (historical)

Gets withdraws requests.

### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::DexApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  # WithdrawsRequests (historical)
  result = api_instance.dex_get_withdraws_requests__historical(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_withdraws_requests__historical: #{e}"
end
```

#### Using the dex_get_withdraws_requests__historical_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DexWithdrawRequestDTO>>, Integer, Hash)> dex_get_withdraws_requests__historical_with_http_info(opts)

```ruby
begin
  # WithdrawsRequests (historical)
  data, status_code, headers = api_instance.dex_get_withdraws_requests__historical_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DexWithdrawRequestDTO>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DexApi->dex_get_withdraws_requests__historical_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **token_id** | **String** |  | [optional] |

### Return type

[**Array&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

