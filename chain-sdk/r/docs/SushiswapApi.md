# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CurveGetExchangesCurrent**](SushiswapApi.md#CurveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**DexGetTradesCurrent**](SushiswapApi.md#DexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**SushiswapGetPoolsCurrent**](SushiswapApi.md#SushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**SushiswapGetSwapsCurrent**](SushiswapApi.md#SushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**SushiswapGetTokensCurrent**](SushiswapApi.md#SushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥


# **CurveGetExchangesCurrent**
> array[CurveExchangeDTO] CurveGetExchangesCurrent()

Exchanges (current) 🔥

Gets exchanges.

### Example
```R
library(openapi)

# Exchanges (current) 🔥
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$CurveGetExchangesCurrent(data_file = "result.txt")
result <- api_instance$CurveGetExchangesCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[CurveExchangeDTO]**](Curve.ExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **DexGetTradesCurrent**
> array[DexTradeDTO] DexGetTradesCurrent()

Trades (current) 🔥

Gets trades.

### Example
```R
library(openapi)

# Trades (current) 🔥
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$DexGetTradesCurrent(data_file = "result.txt")
result <- api_instance$DexGetTradesCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[DexTradeDTO]**](Dex.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetPoolsCurrent**
> array[SushiswapPairDTO] SushiswapGetPoolsCurrent()

Pools (current) 🔥

Gets pools.

### Example
```R
library(openapi)

# Pools (current) 🔥
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetPoolsCurrent(data_file = "result.txt")
result <- api_instance$SushiswapGetPoolsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[SushiswapPairDTO]**](Sushiswap.PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetSwapsCurrent**
> array[SushiswapSwapDTO] SushiswapGetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example
```R
library(openapi)

# Swaps (current) 🔥
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetSwapsCurrent(data_file = "result.txt")
result <- api_instance$SushiswapGetSwapsCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[SushiswapSwapDTO]**](Sushiswap.SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

# **SushiswapGetTokensCurrent**
> array[SushiswapTokenDTO] SushiswapGetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example
```R
library(openapi)

# Tokens (current) 🔥
#

api_instance <- SushiswapApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SushiswapGetTokensCurrent(data_file = "result.txt")
result <- api_instance$SushiswapGetTokensCurrent()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[SushiswapTokenDTO]**](Sushiswap.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

