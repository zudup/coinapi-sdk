# SUSHISWAP_API

All URIs are relative to *https://onchain.coinapi.io*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**curve_get_exchanges_current**](SUSHISWAP_API.md#curve_get_exchanges_current) | **Get** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**dex_get_trades_current**](SUSHISWAP_API.md#dex_get_trades_current) | **Get** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**sushiswap_get_pools_current**](SUSHISWAP_API.md#sushiswap_get_pools_current) | **Get** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**sushiswap_get_swaps_current**](SUSHISWAP_API.md#sushiswap_get_swaps_current) | **Get** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**sushiswap_get_tokens_current**](SUSHISWAP_API.md#sushiswap_get_tokens_current) | **Get** /dapps/sushiswap/tokens/current | Tokens (current) 🔥


# **curve_get_exchanges_current**
> curve_get_exchanges_current : detachable LIST [CURVE_EXCHANGE_DTO]


Exchanges (current) 🔥

Gets exchanges.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [CURVE_EXCHANGE_DTO]**](Curve.ExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_trades_current**
> dex_get_trades_current : detachable LIST [DEX_TRADE_DTO]


Trades (current) 🔥

Gets trades.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [DEX_TRADE_DTO]**](Dex.TradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pools_current**
> sushiswap_get_pools_current : detachable LIST [SUSHISWAP_PAIR_DTO]


Pools (current) 🔥

Gets pools.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [SUSHISWAP_PAIR_DTO]**](Sushiswap.PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_swaps_current**
> sushiswap_get_swaps_current : detachable LIST [SUSHISWAP_SWAP_DTO]


Swaps (current) 🔥

Gets swaps.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [SUSHISWAP_SWAP_DTO]**](Sushiswap.SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_tokens_current**
> sushiswap_get_tokens_current : detachable LIST [SUSHISWAP_TOKEN_DTO]


Tokens (current) 🔥

Gets tokens.


### Parameters
This endpoint does not need any parameter.

### Return type

[**LIST [SUSHISWAP_TOKEN_DTO]**](Sushiswap.TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

