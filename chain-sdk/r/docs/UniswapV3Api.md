# UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**UniswapV3GetBundlesCurrent**](UniswapV3Api.md#UniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**UniswapV3GetBurnsCurrent**](UniswapV3Api.md#UniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**UniswapV3GetDayDataCurrent**](UniswapV3Api.md#UniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
[**UniswapV3GetFactoryCurrent**](UniswapV3Api.md#UniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
[**UniswapV3GetMintsCurrent**](UniswapV3Api.md#UniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**UniswapV3GetPoolsCurrent**](UniswapV3Api.md#UniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**UniswapV3GetPoolsDayDataCurrent**](UniswapV3Api.md#UniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**UniswapV3GetPoolsHourDataCurrent**](UniswapV3Api.md#UniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**UniswapV3GetPositionsCurrent**](UniswapV3Api.md#UniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**UniswapV3GetPositionsSnapshotsCurrent**](UniswapV3Api.md#UniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**UniswapV3GetSwapsCurrent**](UniswapV3Api.md#UniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**UniswapV3GetTicksCurrent**](UniswapV3Api.md#UniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**UniswapV3GetTicksDayDataCurrent**](UniswapV3Api.md#UniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**UniswapV3GetTokensCurrent**](UniswapV3Api.md#UniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**UniswapV3GetTokensDayDataCurrent**](UniswapV3Api.md#UniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**UniswapV3GetTokensHourDataCurrent**](UniswapV3Api.md#UniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)


# **UniswapV3GetBundlesCurrent**
> array[UniswapV3BundleV3DTO] UniswapV3GetBundlesCurrent()

Bundles (current)

Gets bundles.

### Example
```R
library(openapi)

# Bundles (current)
#

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetBundlesCurrent(data_file = "result.txt")
result <- api_instance$UniswapV3GetBundlesCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[UniswapV3BundleV3DTO]**](UniswapV3.BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetBurnsCurrent**
> array[UniswapV3BurnV3DTO] UniswapV3GetBurnsCurrent(filter_pool_id = var.filter_pool_id)

Burns (current)

Gets burns.

### Example
```R
library(openapi)

# Burns (current)
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetBurnsCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetBurnsCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3BurnV3DTO]**](UniswapV3.BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetDayDataCurrent**
> array[UniswapV3UniswapDayDataV3DTO] UniswapV3GetDayDataCurrent()

DayData (current)

Gets uniswapv3 day data.

### Example
```R
library(openapi)

# DayData (current)
#

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetDayDataCurrent(data_file = "result.txt")
result <- api_instance$UniswapV3GetDayDataCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[UniswapV3UniswapDayDataV3DTO]**](UniswapV3.UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetFactoryCurrent**
> array[UniswapV3FactoryV3DTO] UniswapV3GetFactoryCurrent()

Factory (current)

Gets factory.

### Example
```R
library(openapi)

# Factory (current)
#

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetFactoryCurrent(data_file = "result.txt")
result <- api_instance$UniswapV3GetFactoryCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[UniswapV3FactoryV3DTO]**](UniswapV3.FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetMintsCurrent**
> array[UniswapV3MintV3DTO] UniswapV3GetMintsCurrent(filter_pool_id = var.filter_pool_id)

Mints (current)

Gets mints.

### Example
```R
library(openapi)

# Mints (current)
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetMintsCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetMintsCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3MintV3DTO]**](UniswapV3.MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetPoolsCurrent**
> array[UniswapV3PoolV3DTO] UniswapV3GetPoolsCurrent(filter_pool_id = var.filter_pool_id)

Pools (current) 🔥

Gets pools.

### Example
```R
library(openapi)

# Pools (current) 🔥
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetPoolsCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetPoolsCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3PoolV3DTO]**](UniswapV3.PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetPoolsDayDataCurrent**
> array[UniswapV3PoolDayDataV3DTO] UniswapV3GetPoolsDayDataCurrent(filter_pool_id = var.filter_pool_id)

PoolsDayData (current)

Gets pools day data.

### Example
```R
library(openapi)

# PoolsDayData (current)
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetPoolsDayDataCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetPoolsDayDataCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3PoolDayDataV3DTO]**](UniswapV3.PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetPoolsHourDataCurrent**
> array[UniswapV3PoolHourDataV3DTO] UniswapV3GetPoolsHourDataCurrent(filter_pool_id = var.filter_pool_id)

PoolsHourData (current)

Gets pools hour data.

### Example
```R
library(openapi)

# PoolsHourData (current)
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetPoolsHourDataCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetPoolsHourDataCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3PoolHourDataV3DTO]**](UniswapV3.PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetPositionsCurrent**
> array[UniswapV3PositionV3DTO] UniswapV3GetPositionsCurrent(filter_pool_id = var.filter_pool_id)

Positions (current)

Gets positions.

### Example
```R
library(openapi)

# Positions (current)
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetPositionsCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetPositionsCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3PositionV3DTO]**](UniswapV3.PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetPositionsSnapshotsCurrent**
> array[UniswapV3PositionSnapshotV3DTO] UniswapV3GetPositionsSnapshotsCurrent(filter_pool_id = var.filter_pool_id)

PositionsSnapshots (current)

Gets positions snapshots.

### Example
```R
library(openapi)

# PositionsSnapshots (current)
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetPositionsSnapshotsCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetPositionsSnapshotsCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3PositionSnapshotV3DTO]**](UniswapV3.PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetSwapsCurrent**
> array[UniswapV3SwapV3DTO] UniswapV3GetSwapsCurrent(filter_pool_id = var.filter_pool_id)

Swaps (current) 🔥

Gets swaps.

### Example
```R
library(openapi)

# Swaps (current) 🔥
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetSwapsCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetSwapsCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3SwapV3DTO]**](UniswapV3.SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetTicksCurrent**
> array[UniswapV3TickV3DTO] UniswapV3GetTicksCurrent(filter_pool_id = var.filter_pool_id)

Ticks (current)

Gets ticks.

### Example
```R
library(openapi)

# Ticks (current)
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetTicksCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetTicksCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3TickV3DTO]**](UniswapV3.TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetTicksDayDataCurrent**
> array[UniswapV3TickDayDataV3DTO] UniswapV3GetTicksDayDataCurrent(filter_pool_id = var.filter_pool_id)

TicksDayData (current)

Gets ticks day data.

### Example
```R
library(openapi)

# TicksDayData (current)
#
# prepare function argument(s)
var_filter_pool_id <- "filter_pool_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetTicksDayDataCurrent(filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetTicksDayDataCurrent(filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3TickDayDataV3DTO]**](UniswapV3.TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetTokensCurrent**
> array[UniswapV3TokenV3DTO] UniswapV3GetTokensCurrent(filter_token_id = var.filter_token_id)

Tokens (current) 🔥

Gets tokens.

### Example
```R
library(openapi)

# Tokens (current) 🔥
#
# prepare function argument(s)
var_filter_token_id <- "filter_token_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetTokensCurrent(filter_token_id = var_filter_token_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetTokensCurrent(filter_token_id = var_filter_token_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_token_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3TokenV3DTO]**](UniswapV3.TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetTokensDayDataCurrent**
> array[UniswapV3TokenV3DayDataDTO] UniswapV3GetTokensDayDataCurrent(filter_token_id = var.filter_token_id)

TokensDayData (current)

Gets tokens day data.

### Example
```R
library(openapi)

# TokensDayData (current)
#
# prepare function argument(s)
var_filter_token_id <- "filter_token_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetTokensDayDataCurrent(filter_token_id = var_filter_token_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetTokensDayDataCurrent(filter_token_id = var_filter_token_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_token_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3TokenV3DayDataDTO]**](UniswapV3.TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **UniswapV3GetTokensHourDataCurrent**
> array[UniswapV3TokenHourDataV3DTO] UniswapV3GetTokensHourDataCurrent(filter_token_id = var.filter_token_id)

TokensHourData (current)

Gets tokens hour data.

### Example
```R
library(openapi)

# TokensHourData (current)
#
# prepare function argument(s)
var_filter_token_id <- "filter_token_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$UniswapV3GetTokensHourDataCurrent(filter_token_id = var_filter_token_iddata_file = "result.txt")
result <- api_instance$UniswapV3GetTokensHourDataCurrent(filter_token_id = var_filter_token_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_token_id** | **character**|  | [optional] 

### Return type

[**array[UniswapV3TokenHourDataV3DTO]**](UniswapV3.TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

