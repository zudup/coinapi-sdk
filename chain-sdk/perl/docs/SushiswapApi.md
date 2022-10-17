# WWW::OpenAPIClient::SushiswapApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SushiswapApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_sushiswap_pools_current_get**](SushiswapApi.md#chains_chain_id_dapps_sushiswap_pools_current_get) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[**chains_chain_id_dapps_sushiswap_swaps_current_get**](SushiswapApi.md#chains_chain_id_dapps_sushiswap_swaps_current_get) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[**chains_chain_id_dapps_sushiswap_tokens_current_get**](SushiswapApi.md#chains_chain_id_dapps_sushiswap_tokens_current_get) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens


# **chains_chain_id_dapps_sushiswap_pools_current_get**
> ARRAY[PairDTO] chains_chain_id_dapps_sushiswap_pools_current_get(chain_id => $chain_id)

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $chain_id = "chain_id_example"; # string | Chain id

eval {
    my $result = $api_instance->chains_chain_id_dapps_sushiswap_pools_current_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->chains_chain_id_dapps_sushiswap_pools_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 

### Return type

[**ARRAY[PairDTO]**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_sushiswap_swaps_current_get**
> ARRAY[SwapDTO] chains_chain_id_dapps_sushiswap_swaps_current_get(chain_id => $chain_id)

GetSwaps

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $chain_id = "chain_id_example"; # string | Chain id

eval {
    my $result = $api_instance->chains_chain_id_dapps_sushiswap_swaps_current_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->chains_chain_id_dapps_sushiswap_swaps_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 

### Return type

[**ARRAY[SwapDTO]**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_sushiswap_tokens_current_get**
> ARRAY[TokenDTO] chains_chain_id_dapps_sushiswap_tokens_current_get(chain_id => $chain_id)

GetTokens

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $chain_id = "chain_id_example"; # string | Chain id

eval {
    my $result = $api_instance->chains_chain_id_dapps_sushiswap_tokens_current_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->chains_chain_id_dapps_sushiswap_tokens_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 

### Return type

[**ARRAY[TokenDTO]**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

