# WWW::OpenAPIClient::UniswapV2Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UniswapV2Api;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v2_get_pools__current**](UniswapV2Api.md#uniswap_v2_get_pools__current) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswap_v2_get_swaps__current**](UniswapV2Api.md#uniswap_v2_get_swaps__current) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswap_v2_get_tokens__current**](UniswapV2Api.md#uniswap_v2_get_tokens__current) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥


# **uniswap_v2_get_pools__current**
> ARRAY[UniswapV2PairV2DTO] uniswap_v2_get_pools__current(filter_pool_id => $filter_pool_id)

Pools (current) 🔥

Gets pools.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_pools__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pools__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2PairV2DTO]**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_swaps__current**
> ARRAY[UniswapV2SwapV2DTO] uniswap_v2_get_swaps__current()

Swaps (current) 🔥

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_get_swaps__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_swaps__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2SwapV2DTO]**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_tokens__current**
> ARRAY[UniswapV2TokenV2DTO] uniswap_v2_get_tokens__current()

Tokens (current) 🔥

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_get_tokens__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_tokens__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2TokenV2DTO]**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

