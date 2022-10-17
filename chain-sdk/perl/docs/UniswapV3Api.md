# WWW::OpenAPIClient::UniswapV3Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UniswapV3Api;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_uniswapv3_bundle_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_bundle_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**chains_chain_id_dapps_uniswapv3_burns_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_burns_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**chains_chain_id_dapps_uniswapv3_factory_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_factory_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**chains_chain_id_dapps_uniswapv3_mints_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_mints_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**chains_chain_id_dapps_uniswapv3_pools_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_pools_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**chains_chain_id_dapps_uniswapv3_pools_day_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_pools_day_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**chains_chain_id_dapps_uniswapv3_position_snapshots_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_position_snapshots_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**chains_chain_id_dapps_uniswapv3_positions_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_positions_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**chains_chain_id_dapps_uniswapv3_swaps_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_swaps_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**chains_chain_id_dapps_uniswapv3_ticks_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_ticks_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**chains_chain_id_dapps_uniswapv3_tokens_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_tokens_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get**](UniswapV3Api.md#chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


# **chains_chain_id_dapps_uniswapv3_bundle_current_get**
> ARRAY[BundleV3DTO] chains_chain_id_dapps_uniswapv3_bundle_current_get(chain_id => $chain_id)

GetBundles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_bundle_current_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_bundle_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 

### Return type

[**ARRAY[BundleV3DTO]**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_burns_current_get**
> ARRAY[BurnV3DTO] chains_chain_id_dapps_uniswapv3_burns_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id)

GetBurns

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_burns_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_burns_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[BurnV3DTO]**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_factory_current_get**
> ARRAY[FactoryV3DTO] chains_chain_id_dapps_uniswapv3_factory_current_get(chain_id => $chain_id)

GetFactory

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_factory_current_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_factory_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 

### Return type

[**ARRAY[FactoryV3DTO]**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_mints_current_get**
> ARRAY[MintV3DTO] chains_chain_id_dapps_uniswapv3_mints_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id)

GetMints

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_mints_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_mints_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[MintV3DTO]**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_pools_current_get**
> ARRAY[PoolV3DTO] chains_chain_id_dapps_uniswapv3_pools_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id)

GetPools

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_pools_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[PoolV3DTO]**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_pools_day_data_current_get**
> ARRAY[PoolDayDataV3DTO] chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id)

GetPoolsDayData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_pools_day_data_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_day_data_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[PoolDayDataV3DTO]**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get**
> ARRAY[PoolHourDataV3DTO] chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id)

GetPoolsHourData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_pools_hour_data_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[PoolHourDataV3DTO]**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_position_snapshots_current_get**
> ARRAY[PositionSnapshotV3DTO] chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id)

GetPositionSnapshot

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_position_snapshots_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_position_snapshots_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[PositionSnapshotV3DTO]**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_positions_current_get**
> ARRAY[PositionV3DTO] chains_chain_id_dapps_uniswapv3_positions_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id)

GetPositions

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_positions_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_positions_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[PositionV3DTO]**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_swaps_current_get**
> ARRAY[SwapV3DTO] chains_chain_id_dapps_uniswapv3_swaps_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id)

GetSwaps

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_swaps_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_swaps_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[SwapV3DTO]**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_ticks_current_get**
> ARRAY[TickV3DTO] chains_chain_id_dapps_uniswapv3_ticks_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id)

GetTicks

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_ticks_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_ticks_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[TickV3DTO]**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get**
> ARRAY[TickDayDataV3DTO] chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id)

GetTicksDayData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get(chain_id => $chain_id, filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_ticks_day_data_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[TickDayDataV3DTO]**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_tokens_current_get**
> ARRAY[TokenV3DTO] chains_chain_id_dapps_uniswapv3_tokens_current_get(chain_id => $chain_id, filter_token_id => $filter_token_id)

GetTokens

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_token_id = "filter_token_id_example"; # string | 

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_tokens_current_get(chain_id => $chain_id, filter_token_id => $filter_token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_token_id** | **string**|  | [optional] 

### Return type

[**ARRAY[TokenV3DTO]**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get**
> ARRAY[TokenV3DayDataDTO] chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(chain_id => $chain_id, filter_token_id => $filter_token_id)

GetTokensDayData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_token_id = "filter_token_id_example"; # string | 

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get(chain_id => $chain_id, filter_token_id => $filter_token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_day_data_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_token_id** | **string**|  | [optional] 

### Return type

[**ARRAY[TokenV3DayDataDTO]**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get**
> ARRAY[TokenHourDataV3DTO] chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(chain_id => $chain_id, filter_token_id => $filter_token_id)

GetTokensHourData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id
my $filter_token_id = "filter_token_id_example"; # string | 

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get(chain_id => $chain_id, filter_token_id => $filter_token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_tokens_hour_data_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 
 **filter_token_id** | **string**|  | [optional] 

### Return type

[**ARRAY[TokenHourDataV3DTO]**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get**
> ARRAY[UniswapDayDataV3DTO] chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(chain_id => $chain_id)

GetUniswapDayData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | Chain id

eval {
    my $result = $api_instance->chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->chains_chain_id_dapps_uniswapv3_uniswap_day_data_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**| Chain id | 

### Return type

[**ARRAY[UniswapDayDataV3DTO]**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

