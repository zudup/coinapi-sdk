# UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**ChainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**ChainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**ChainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**ChainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**ChainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**ChainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**ChainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**ChainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


# **ChainsChainIdDappsUniswapv3BundleCurrentGet**
> array[BundleV3DTO] ChainsChainIdDappsUniswapv3BundleCurrentGet(chain_id)

GetBundles

### Example
```R
library(openapi)

# GetBundles
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3BundleCurrentGet(var_chain_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3BundleCurrentGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 

### Return type

[**array[BundleV3DTO]**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3BurnsCurrentGet**
> array[BurnV3DTO] ChainsChainIdDappsUniswapv3BurnsCurrentGet(chain_id, filter_pool_id = var.filter_pool_id)

GetBurns

### Example
```R
library(openapi)

# GetBurns
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3BurnsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3BurnsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_pool_id** | **character**| Filter pool id | [optional] 

### Return type

[**array[BurnV3DTO]**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3FactoryCurrentGet**
> array[FactoryV3DTO] ChainsChainIdDappsUniswapv3FactoryCurrentGet(chain_id)

GetFactory

### Example
```R
library(openapi)

# GetFactory
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3FactoryCurrentGet(var_chain_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3FactoryCurrentGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 

### Return type

[**array[FactoryV3DTO]**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3MintsCurrentGet**
> array[MintV3DTO] ChainsChainIdDappsUniswapv3MintsCurrentGet(chain_id, filter_pool_id = var.filter_pool_id)

GetMints

### Example
```R
library(openapi)

# GetMints
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3MintsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3MintsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_pool_id** | **character**| Filter pool id | [optional] 

### Return type

[**array[MintV3DTO]**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3PoolsCurrentGet**
> array[PoolV3DTO] ChainsChainIdDappsUniswapv3PoolsCurrentGet(chain_id, filter_pool_id = var.filter_pool_id)

GetPools

### Example
```R
library(openapi)

# GetPools
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3PoolsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3PoolsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_pool_id** | **character**| Filter pool id | [optional] 

### Return type

[**array[PoolV3DTO]**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**
> array[PoolDayDataV3DTO] ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chain_id, filter_pool_id = var.filter_pool_id)

GetPoolsDayData

### Example
```R
library(openapi)

# GetPoolsDayData
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_pool_id** | **character**| Filter pool id | [optional] 

### Return type

[**array[PoolDayDataV3DTO]**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**
> array[PoolHourDataV3DTO] ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chain_id, filter_pool_id = var.filter_pool_id)

GetPoolsHourData

### Example
```R
library(openapi)

# GetPoolsHourData
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_pool_id** | **character**| Filter pool id | [optional] 

### Return type

[**array[PoolHourDataV3DTO]**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**
> array[PositionSnapshotV3DTO] ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chain_id, filter_pool_id = var.filter_pool_id)

GetPositionSnapshot

### Example
```R
library(openapi)

# GetPositionSnapshot
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_pool_id** | **character**| Filter pool id | [optional] 

### Return type

[**array[PositionSnapshotV3DTO]**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3PositionsCurrentGet**
> array[PositionV3DTO] ChainsChainIdDappsUniswapv3PositionsCurrentGet(chain_id, filter_pool_id = var.filter_pool_id)

GetPositions

### Example
```R
library(openapi)

# GetPositions
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3PositionsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3PositionsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_pool_id** | **character**| Filter pool id | [optional] 

### Return type

[**array[PositionV3DTO]**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3SwapsCurrentGet**
> array[SwapV3DTO] ChainsChainIdDappsUniswapv3SwapsCurrentGet(chain_id, filter_pool_id = var.filter_pool_id)

GetSwaps

### Example
```R
library(openapi)

# GetSwaps
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3SwapsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3SwapsCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_pool_id** | **character**| Filter pool id | [optional] 

### Return type

[**array[SwapV3DTO]**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3TicksCurrentGet**
> array[TickV3DTO] ChainsChainIdDappsUniswapv3TicksCurrentGet(chain_id, filter_pool_id = var.filter_pool_id)

GetTicks

### Example
```R
library(openapi)

# GetTicks
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3TicksCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3TicksCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_pool_id** | **character**| Filter pool id | [optional] 

### Return type

[**array[TickV3DTO]**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet**
> array[TickDayDataV3DTO] ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chain_id, filter_pool_id = var.filter_pool_id)

GetTicksDayData

### Example
```R
library(openapi)

# GetTicksDayData
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_pool_id <- "filter_pool_id_example" # character | Filter pool id (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet(var_chain_id, filter_pool_id = var_filter_pool_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_pool_id** | **character**| Filter pool id | [optional] 

### Return type

[**array[TickDayDataV3DTO]**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3TokensCurrentGet**
> array[TokenV3DTO] ChainsChainIdDappsUniswapv3TokensCurrentGet(chain_id, filter_token_id = var.filter_token_id)

GetTokens

### Example
```R
library(openapi)

# GetTokens
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_token_id <- "filter_token_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3TokensCurrentGet(var_chain_id, filter_token_id = var_filter_token_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3TokensCurrentGet(var_chain_id, filter_token_id = var_filter_token_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_token_id** | **character**|  | [optional] 

### Return type

[**array[TokenV3DTO]**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet**
> array[TokenV3DayDataDTO] ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chain_id, filter_token_id = var.filter_token_id)

GetTokensDayData

### Example
```R
library(openapi)

# GetTokensDayData
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_token_id <- "filter_token_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet(var_chain_id, filter_token_id = var_filter_token_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet(var_chain_id, filter_token_id = var_filter_token_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_token_id** | **character**|  | [optional] 

### Return type

[**array[TokenV3DayDataDTO]**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet**
> array[TokenHourDataV3DTO] ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chain_id, filter_token_id = var.filter_token_id)

GetTokensHourData

### Example
```R
library(openapi)

# GetTokensHourData
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id
var_filter_token_id <- "filter_token_id_example" # character |  (Optional)

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet(var_chain_id, filter_token_id = var_filter_token_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet(var_chain_id, filter_token_id = var_filter_token_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 
 **filter_token_id** | **character**|  | [optional] 

### Return type

[**array[TokenHourDataV3DTO]**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**
> array[UniswapDayDataV3DTO] ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chain_id)

GetUniswapDayData

### Example
```R
library(openapi)

# GetUniswapDayData
#
# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | Chain id

api_instance <- UniswapV3Api$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(var_chain_iddata_file = "result.txt")
result <- api_instance$ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(var_chain_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**| Chain id | 

### Return type

[**array[UniswapDayDataV3DTO]**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

