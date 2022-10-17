# WWW::OpenAPIClient::UniswapV2Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UniswapV2Api;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_uniswapv2_pools_current_get**](UniswapV2Api.md#chains_chain_id_dapps_uniswapv2_pools_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**chains_chain_id_dapps_uniswapv2_swaps_current_get**](UniswapV2Api.md#chains_chain_id_dapps_uniswapv2_swaps_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**chains_chain_id_dapps_uniswapv2_tokens_current_get**](UniswapV2Api.md#chains_chain_id_dapps_uniswapv2_tokens_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens


# **chains_chain_id_dapps_uniswapv2_pools_current_get**
> ARRAY[PairV2DTO] chains_chain_id_dapps_uniswapv2_pools_current_get(chain_id => $chain_id)

GetPools

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv2_pools_current_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_pools_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 

### Return type

[**ARRAY[PairV2DTO]**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv2_swaps_current_get**
> ARRAY[SwapV2DTO] chains_chain_id_dapps_uniswapv2_swaps_current_get(chain_id => $chain_id)

GetSwaps

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv2_swaps_current_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_swaps_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 

### Return type

[**ARRAY[SwapV2DTO]**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv2_tokens_current_get**
> ARRAY[TokenV2DTO] chains_chain_id_dapps_uniswapv2_tokens_current_get(chain_id => $chain_id)

GetTokens

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv2_tokens_current_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->chains_chain_id_dapps_uniswapv2_tokens_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 

### Return type

[**ARRAY[TokenV2DTO]**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

