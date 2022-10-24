# OpenapiClient::FactoryApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**chains_chain_id_dapps_uniswapv2_factory_historical_get**](FactoryApi.md#chains_chain_id_dapps_uniswapv2_factory_historical_get) | **GET** /chains/{chain_id}/dapps/uniswapv2/factory/historical |  |
| [**chains_chain_id_dapps_uniswapv3_factory_historical_get**](FactoryApi.md#chains_chain_id_dapps_uniswapv3_factory_historical_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/historical |  |


## chains_chain_id_dapps_uniswapv2_factory_historical_get

> chains_chain_id_dapps_uniswapv2_factory_historical_get(chain_id, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FactoryApi.new
chain_id = 'chain_id_example' # String | 
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.chains_chain_id_dapps_uniswapv2_factory_historical_get(chain_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling FactoryApi->chains_chain_id_dapps_uniswapv2_factory_historical_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv2_factory_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> chains_chain_id_dapps_uniswapv2_factory_historical_get_with_http_info(chain_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv2_factory_historical_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling FactoryApi->chains_chain_id_dapps_uniswapv2_factory_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** |  |  |
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


## chains_chain_id_dapps_uniswapv3_factory_historical_get

> chains_chain_id_dapps_uniswapv3_factory_historical_get(chain_id, opts)



### Examples

```ruby
require 'time'
require 'openapi_client'

api_instance = OpenapiClient::FactoryApi.new
chain_id = 'chain_id_example' # String | 
opts = {
  start_block: 789, # Integer | 
  end_block: 789, # Integer | 
  start_date: Time.parse('2013-10-20T19:20:30+01:00'), # Time | 
  end_date: Time.parse('2013-10-20T19:20:30+01:00') # Time | 
}

begin
  
  api_instance.chains_chain_id_dapps_uniswapv3_factory_historical_get(chain_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling FactoryApi->chains_chain_id_dapps_uniswapv3_factory_historical_get: #{e}"
end
```

#### Using the chains_chain_id_dapps_uniswapv3_factory_historical_get_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> chains_chain_id_dapps_uniswapv3_factory_historical_get_with_http_info(chain_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.chains_chain_id_dapps_uniswapv3_factory_historical_get_with_http_info(chain_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling FactoryApi->chains_chain_id_dapps_uniswapv3_factory_historical_get_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **chain_id** | **String** |  |  |
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

