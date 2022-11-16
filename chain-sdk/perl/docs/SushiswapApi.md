# WWW::OpenAPIClient::SushiswapApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SushiswapApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**curve_get_exchanges__current**](SushiswapApi.md#curve_get_exchanges__current) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**dex_get_trades__current**](SushiswapApi.md#dex_get_trades__current) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**sushiswap_get_pools__current**](SushiswapApi.md#sushiswap_get_pools__current) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**sushiswap_get_swaps__current**](SushiswapApi.md#sushiswap_get_swaps__current) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**sushiswap_get_tokens__current**](SushiswapApi.md#sushiswap_get_tokens__current) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥


# **curve_get_exchanges__current**
> ARRAY[CurveExchangeDTO] curve_get_exchanges__current()

Exchanges (current) 🔥

Gets exchanges.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->curve_get_exchanges__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->curve_get_exchanges__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[CurveExchangeDTO]**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_trades__current**
> ARRAY[DexTradeDTO] dex_get_trades__current()

Trades (current) 🔥

Gets trades.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->dex_get_trades__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dex_get_trades__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_pools__current**
> ARRAY[SushiswapPairDTO] sushiswap_get_pools__current()

Pools (current) 🔥

Gets pools.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_get_pools__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_pools__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapPairDTO]**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_swaps__current**
> ARRAY[SushiswapSwapDTO] sushiswap_get_swaps__current()

Swaps (current) 🔥

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_get_swaps__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_swaps__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapSwapDTO]**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswap_get_tokens__current**
> ARRAY[SushiswapTokenDTO] sushiswap_get_tokens__current()

Tokens (current) 🔥

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->sushiswap_get_tokens__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->sushiswap_get_tokens__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SushiswapTokenDTO]**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

