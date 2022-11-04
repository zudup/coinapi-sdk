# OpenapiClient::CurveApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**dapps_curve_accounts_historical_get**](CurveApi.md#dapps_curve_accounts_historical_get) | **GET** /dapps/curve/accounts/historical |  |
| [**dapps_curve_add_liquidity_event_historical_get**](CurveApi.md#dapps_curve_add_liquidity_event_historical_get) | **GET** /dapps/curve/addLiquidityEvent/historical |  |
| [**dapps_curve_admin_fee_change_log_historical_get**](CurveApi.md#dapps_curve_admin_fee_change_log_historical_get) | **GET** /dapps/curve/adminFeeChangeLog/historical |  |
| [**dapps_curve_amplification_coeff_change_log_historical_get**](CurveApi.md#dapps_curve_amplification_coeff_change_log_historical_get) | **GET** /dapps/curve/amplificationCoeffChangeLog/historical |  |
| [**dapps_curve_coins_historical_get**](CurveApi.md#dapps_curve_coins_historical_get) | **GET** /dapps/curve/coins/historical |  |
| [**dapps_curve_contracts_historical_get**](CurveApi.md#dapps_curve_contracts_historical_get) | **GET** /dapps/curve/contracts/historical |  |
| [**dapps_curve_contracts_version_historical_get**](CurveApi.md#dapps_curve_contracts_version_historical_get) | **GET** /dapps/curve/contractsVersion/historical |  |
| [**dapps_curve_daily_volume_historical_get**](CurveApi.md#dapps_curve_daily_volume_historical_get) | **GET** /dapps/curve/dailyVolume/historical |  |
| [**dapps_curve_fee_change_log_historical_get**](CurveApi.md#dapps_curve_fee_change_log_historical_get) | **GET** /dapps/curve/feeChangeLog/historical |  |
| [**dapps_curve_gauge_deposit_historical_get**](CurveApi.md#dapps_curve_gauge_deposit_historical_get) | **GET** /dapps/curve/gaugeDeposit/historical |  |
| [**dapps_curve_gauge_historical_get**](CurveApi.md#dapps_curve_gauge_historical_get) | **GET** /dapps/curve/gauge/historical |  |
| [**dapps_curve_gauge_liquidity_historical_get**](CurveApi.md#dapps_curve_gauge_liquidity_historical_get) | **GET** /dapps/curve/gaugeLiquidity/historical |  |
| [**dapps_curve_gauge_total_weight_historical_get**](CurveApi.md#dapps_curve_gauge_total_weight_historical_get) | **GET** /dapps/curve/gaugeTotalWeight/historical |  |
| [**dapps_curve_gauge_type_historical_get**](CurveApi.md#dapps_curve_gauge_type_historical_get) | **GET** /dapps/curve/gaugeType/historical |  |
| [**dapps_curve_gauge_type_weight_historical_get**](CurveApi.md#dapps_curve_gauge_type_weight_historical_get) | **GET** /dapps/curve/gaugeTypeWeight/historical |  |
| [**dapps_curve_gauge_weight_historical_get**](CurveApi.md#dapps_curve_gauge_weight_historical_get) | **GET** /dapps/curve/gaugeWeight/historical |  |
| [**dapps_curve_gauge_weight_vote_historical_get**](CurveApi.md#dapps_curve_gauge_weight_vote_historical_get) | **GET** /dapps/curve/gaugeWeightVote/historical |  |
| [**dapps_curve_gauge_withdraw_historical_get**](CurveApi.md#dapps_curve_gauge_withdraw_historical_get) | **GET** /dapps/curve/gaugeWithdraw/historical |  |
| [**dapps_curve_hourly_volume_historical_get**](CurveApi.md#dapps_curve_hourly_volume_historical_get) | **GET** /dapps/curve/hourlyVolume/historical |  |
| [**dapps_curve_lp_token_historical_get**](CurveApi.md#dapps_curve_lp_token_historical_get) | **GET** /dapps/curve/lpToken/historical |  |
| [**dapps_curve_pools_historical_get**](CurveApi.md#dapps_curve_pools_historical_get) | **GET** /dapps/curve/pools/historical |  |
| [**dapps_curve_proposals_historical_get**](CurveApi.md#dapps_curve_proposals_historical_get) | **GET** /dapps/curve/proposals/historical |  |
| [**dapps_curve_proposals_vote_historical_get**](CurveApi.md#dapps_curve_proposals_vote_historical_get) | **GET** /dapps/curve/proposalsVote/historical |  |
| [**dapps_curve_remove_liquidity_event_historical_get**](CurveApi.md#dapps_curve_remove_liquidity_event_historical_get) | **GET** /dapps/curve/removeLiquidityEvent/historical |  |
| [**dapps_curve_remove_liquidity_one_event_historical_get**](CurveApi.md#dapps_curve_remove_liquidity_one_event_historical_get) | **GET** /dapps/curve/removeLiquidityOneEvent/historical |  |
| [**dapps_curve_swaps_historical_get**](CurveApi.md#dapps_curve_swaps_historical_get) | **GET** /dapps/curve/swaps/historical |  |
| [**dapps_curve_system_state_historical_get**](CurveApi.md#dapps_curve_system_state_historical_get) | **GET** /dapps/curve/systemState/historical |  |
| [**dapps_curve_tokens_historical_get**](CurveApi.md#dapps_curve_tokens_historical_get) | **GET** /dapps/curve/tokens/historical |  |
| [**dapps_curve_transfer_ownership_event_historical_get**](CurveApi.md#dapps_curve_transfer_ownership_event_historical_get) | **GET** /dapps/curve/transferOwnershipEvent/historical |  |
| [**dapps_curve_underlying_coin_historical_get**](CurveApi.md#dapps_curve_underlying_coin_historical_get) | **GET** /dapps/curve/underlyingCoin/historical |  |
| [**dapps_curve_voting_app_historical_get**](CurveApi.md#dapps_curve_voting_app_historical_get) | **GET** /dapps/curve/votingApp/historical |  |
| [**dapps_curve_weekly_volume_historical_get**](CurveApi.md#dapps_curve_weekly_volume_historical_get) | **GET** /dapps/curve/weeklyVolume/historical |  |


## dapps_curve_accounts_historical_get

> dapps_curve_accounts_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_accounts_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_accounts_historical_get: #{e}"
end
```

#### Using the dapps_curve_accounts_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_accounts_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_accounts_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_accounts_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_add_liquidity_event_historical_get

> dapps_curve_add_liquidity_event_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_add_liquidity_event_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_add_liquidity_event_historical_get: #{e}"
end
```

#### Using the dapps_curve_add_liquidity_event_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_add_liquidity_event_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_add_liquidity_event_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_add_liquidity_event_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_admin_fee_change_log_historical_get

> dapps_curve_admin_fee_change_log_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_admin_fee_change_log_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_admin_fee_change_log_historical_get: #{e}"
end
```

#### Using the dapps_curve_admin_fee_change_log_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_admin_fee_change_log_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_admin_fee_change_log_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_admin_fee_change_log_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_amplification_coeff_change_log_historical_get

> dapps_curve_amplification_coeff_change_log_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_amplification_coeff_change_log_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_amplification_coeff_change_log_historical_get: #{e}"
end
```

#### Using the dapps_curve_amplification_coeff_change_log_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_amplification_coeff_change_log_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_amplification_coeff_change_log_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_amplification_coeff_change_log_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_coins_historical_get

> dapps_curve_coins_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_coins_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_coins_historical_get: #{e}"
end
```

#### Using the dapps_curve_coins_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_coins_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_coins_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_coins_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_contracts_historical_get

> dapps_curve_contracts_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_contracts_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_contracts_historical_get: #{e}"
end
```

#### Using the dapps_curve_contracts_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_contracts_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_contracts_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_contracts_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_contracts_version_historical_get

> dapps_curve_contracts_version_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_contracts_version_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_contracts_version_historical_get: #{e}"
end
```

#### Using the dapps_curve_contracts_version_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_contracts_version_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_contracts_version_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_contracts_version_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_daily_volume_historical_get

> dapps_curve_daily_volume_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_daily_volume_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_daily_volume_historical_get: #{e}"
end
```

#### Using the dapps_curve_daily_volume_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_daily_volume_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_daily_volume_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_daily_volume_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_fee_change_log_historical_get

> dapps_curve_fee_change_log_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_fee_change_log_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_fee_change_log_historical_get: #{e}"
end
```

#### Using the dapps_curve_fee_change_log_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_fee_change_log_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_fee_change_log_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_fee_change_log_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_gauge_deposit_historical_get

> dapps_curve_gauge_deposit_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_gauge_deposit_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_deposit_historical_get: #{e}"
end
```

#### Using the dapps_curve_gauge_deposit_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_gauge_deposit_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_gauge_deposit_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_deposit_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_gauge_historical_get

> dapps_curve_gauge_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_gauge_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_historical_get: #{e}"
end
```

#### Using the dapps_curve_gauge_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_gauge_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_gauge_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_gauge_liquidity_historical_get

> dapps_curve_gauge_liquidity_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_gauge_liquidity_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_liquidity_historical_get: #{e}"
end
```

#### Using the dapps_curve_gauge_liquidity_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_gauge_liquidity_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_gauge_liquidity_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_liquidity_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_gauge_total_weight_historical_get

> dapps_curve_gauge_total_weight_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_gauge_total_weight_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_total_weight_historical_get: #{e}"
end
```

#### Using the dapps_curve_gauge_total_weight_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_gauge_total_weight_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_gauge_total_weight_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_total_weight_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_gauge_type_historical_get

> dapps_curve_gauge_type_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_gauge_type_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_type_historical_get: #{e}"
end
```

#### Using the dapps_curve_gauge_type_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_gauge_type_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_gauge_type_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_type_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_gauge_type_weight_historical_get

> dapps_curve_gauge_type_weight_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_gauge_type_weight_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_type_weight_historical_get: #{e}"
end
```

#### Using the dapps_curve_gauge_type_weight_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_gauge_type_weight_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_gauge_type_weight_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_type_weight_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_gauge_weight_historical_get

> dapps_curve_gauge_weight_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_gauge_weight_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_weight_historical_get: #{e}"
end
```

#### Using the dapps_curve_gauge_weight_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_gauge_weight_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_gauge_weight_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_weight_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_gauge_weight_vote_historical_get

> dapps_curve_gauge_weight_vote_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_gauge_weight_vote_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_weight_vote_historical_get: #{e}"
end
```

#### Using the dapps_curve_gauge_weight_vote_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_gauge_weight_vote_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_gauge_weight_vote_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_weight_vote_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_gauge_withdraw_historical_get

> dapps_curve_gauge_withdraw_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_gauge_withdraw_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_withdraw_historical_get: #{e}"
end
```

#### Using the dapps_curve_gauge_withdraw_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_gauge_withdraw_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_gauge_withdraw_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_gauge_withdraw_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_hourly_volume_historical_get

> dapps_curve_hourly_volume_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_hourly_volume_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_hourly_volume_historical_get: #{e}"
end
```

#### Using the dapps_curve_hourly_volume_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_hourly_volume_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_hourly_volume_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_hourly_volume_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_lp_token_historical_get

> dapps_curve_lp_token_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_lp_token_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_lp_token_historical_get: #{e}"
end
```

#### Using the dapps_curve_lp_token_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_lp_token_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_lp_token_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_lp_token_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_pools_historical_get

> dapps_curve_pools_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_pools_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_pools_historical_get: #{e}"
end
```

#### Using the dapps_curve_pools_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_pools_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_pools_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_pools_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_proposals_historical_get

> dapps_curve_proposals_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_proposals_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_proposals_historical_get: #{e}"
end
```

#### Using the dapps_curve_proposals_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_proposals_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_proposals_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_proposals_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_proposals_vote_historical_get

> dapps_curve_proposals_vote_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_proposals_vote_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_proposals_vote_historical_get: #{e}"
end
```

#### Using the dapps_curve_proposals_vote_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_proposals_vote_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_proposals_vote_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_proposals_vote_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_remove_liquidity_event_historical_get

> dapps_curve_remove_liquidity_event_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_remove_liquidity_event_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_remove_liquidity_event_historical_get: #{e}"
end
```

#### Using the dapps_curve_remove_liquidity_event_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_remove_liquidity_event_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_remove_liquidity_event_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_remove_liquidity_event_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_remove_liquidity_one_event_historical_get

> dapps_curve_remove_liquidity_one_event_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_remove_liquidity_one_event_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_remove_liquidity_one_event_historical_get: #{e}"
end
```

#### Using the dapps_curve_remove_liquidity_one_event_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_remove_liquidity_one_event_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_remove_liquidity_one_event_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_remove_liquidity_one_event_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_swaps_historical_get

> dapps_curve_swaps_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_swaps_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_swaps_historical_get: #{e}"
end
```

#### Using the dapps_curve_swaps_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_swaps_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_swaps_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_swaps_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_system_state_historical_get

> dapps_curve_system_state_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_system_state_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_system_state_historical_get: #{e}"
end
```

#### Using the dapps_curve_system_state_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_system_state_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_system_state_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_system_state_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_tokens_historical_get

> dapps_curve_tokens_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  token_id: 'token_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_tokens_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_tokens_historical_get: #{e}"
end
```

#### Using the dapps_curve_tokens_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_tokens_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_tokens_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_tokens_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_transfer_ownership_event_historical_get

> dapps_curve_transfer_ownership_event_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_transfer_ownership_event_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_transfer_ownership_event_historical_get: #{e}"
end
```

#### Using the dapps_curve_transfer_ownership_event_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_transfer_ownership_event_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_transfer_ownership_event_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_transfer_ownership_event_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_underlying_coin_historical_get

> dapps_curve_underlying_coin_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_underlying_coin_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_underlying_coin_historical_get: #{e}"
end
```

#### Using the dapps_curve_underlying_coin_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_underlying_coin_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_underlying_coin_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_underlying_coin_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_voting_app_historical_get

> dapps_curve_voting_app_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.dapps_curve_voting_app_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_voting_app_historical_get: #{e}"
end
```

#### Using the dapps_curve_voting_app_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_voting_app_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_voting_app_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_voting_app_historical_get_with_http_info: #{e}"
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

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dapps_curve_weekly_volume_historical_get

> dapps_curve_weekly_volume_historical_get(opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::CurveApi.new
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  pool_id: 'pool_id_example' # String | 
}

begin
  
  api_instance.dapps_curve_weekly_volume_historical_get(opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_weekly_volume_historical_get: #{e}"
end
```

#### Using the dapps_curve_weekly_volume_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> dapps_curve_weekly_volume_historical_get_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.dapps_curve_weekly_volume_historical_get_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CurveApi->dapps_curve_weekly_volume_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_block** | **Integer** |  | [optional] |
| **end_block** | **Integer** |  | [optional] |
| **start_date** | **Time** |  | [optional] |
| **end_date** | **Time** |  | [optional] |
| **pool_id** | **String** |  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

