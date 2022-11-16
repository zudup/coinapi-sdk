# WWW::OpenAPIClient::UniswapV3Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UniswapV3Api;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v3_get_bundles__current**](UniswapV3Api.md#uniswap_v3_get_bundles__current) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**uniswap_v3_get_burns__current**](UniswapV3Api.md#uniswap_v3_get_burns__current) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**uniswap_v3_get_day_data__current**](UniswapV3Api.md#uniswap_v3_get_day_data__current) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
[**uniswap_v3_get_factory__current**](UniswapV3Api.md#uniswap_v3_get_factory__current) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
[**uniswap_v3_get_mints__current**](UniswapV3Api.md#uniswap_v3_get_mints__current) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**uniswap_v3_get_pools__current**](UniswapV3Api.md#uniswap_v3_get_pools__current) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**uniswap_v3_get_pools_day_data__current**](UniswapV3Api.md#uniswap_v3_get_pools_day_data__current) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**uniswap_v3_get_pools_hour_data__current**](UniswapV3Api.md#uniswap_v3_get_pools_hour_data__current) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**uniswap_v3_get_positions__current**](UniswapV3Api.md#uniswap_v3_get_positions__current) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**uniswap_v3_get_positions_snapshots__current**](UniswapV3Api.md#uniswap_v3_get_positions_snapshots__current) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**uniswap_v3_get_swaps__current**](UniswapV3Api.md#uniswap_v3_get_swaps__current) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**uniswap_v3_get_ticks__current**](UniswapV3Api.md#uniswap_v3_get_ticks__current) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**uniswap_v3_get_ticks_day_data__current**](UniswapV3Api.md#uniswap_v3_get_ticks_day_data__current) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**uniswap_v3_get_tokens__current**](UniswapV3Api.md#uniswap_v3_get_tokens__current) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**uniswap_v3_get_tokens_day_data__current**](UniswapV3Api.md#uniswap_v3_get_tokens_day_data__current) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**uniswap_v3_get_tokens_hour_data__current**](UniswapV3Api.md#uniswap_v3_get_tokens_hour_data__current) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)


# **uniswap_v3_get_bundles__current**
> ARRAY[UniswapV3BundleV3DTO] uniswap_v3_get_bundles__current()

Bundles (current)

Gets bundles.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_get_bundles__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_bundles__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3BundleV3DTO]**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_burns__current**
> ARRAY[UniswapV3BurnV3DTO] uniswap_v3_get_burns__current(filter_pool_id => $filter_pool_id)

Burns (current)

Gets burns.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_burns__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_burns__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3BurnV3DTO]**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_day_data__current**
> ARRAY[UniswapV3UniswapDayDataV3DTO] uniswap_v3_get_day_data__current()

DayData (current)

Gets uniswapv3 day data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_get_day_data__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_day_data__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3UniswapDayDataV3DTO]**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_factory__current**
> ARRAY[UniswapV3FactoryV3DTO] uniswap_v3_get_factory__current()

Factory (current)

Gets factory.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->uniswap_v3_get_factory__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_factory__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV3FactoryV3DTO]**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_mints__current**
> ARRAY[UniswapV3MintV3DTO] uniswap_v3_get_mints__current(filter_pool_id => $filter_pool_id)

Mints (current)

Gets mints.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_mints__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_mints__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3MintV3DTO]**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_pools__current**
> ARRAY[UniswapV3PoolV3DTO] uniswap_v3_get_pools__current(filter_pool_id => $filter_pool_id)

Pools (current) 🔥

Gets pools.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_pools__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_pools__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3PoolV3DTO]**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_pools_day_data__current**
> ARRAY[UniswapV3PoolDayDataV3DTO] uniswap_v3_get_pools_day_data__current(filter_pool_id => $filter_pool_id)

PoolsDayData (current)

Gets pools day data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_pools_day_data__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_pools_day_data__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3PoolDayDataV3DTO]**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_pools_hour_data__current**
> ARRAY[UniswapV3PoolHourDataV3DTO] uniswap_v3_get_pools_hour_data__current(filter_pool_id => $filter_pool_id)

PoolsHourData (current)

Gets pools hour data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_pools_hour_data__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_pools_hour_data__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3PoolHourDataV3DTO]**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_positions__current**
> ARRAY[UniswapV3PositionV3DTO] uniswap_v3_get_positions__current(filter_pool_id => $filter_pool_id)

Positions (current)

Gets positions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_positions__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_positions__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3PositionV3DTO]**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_positions_snapshots__current**
> ARRAY[UniswapV3PositionSnapshotV3DTO] uniswap_v3_get_positions_snapshots__current(filter_pool_id => $filter_pool_id)

PositionsSnapshots (current)

Gets positions snapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_positions_snapshots__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_positions_snapshots__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3PositionSnapshotV3DTO]**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_swaps__current**
> ARRAY[UniswapV3SwapV3DTO] uniswap_v3_get_swaps__current(filter_pool_id => $filter_pool_id)

Swaps (current) 🔥

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_swaps__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_swaps__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3SwapV3DTO]**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_ticks__current**
> ARRAY[UniswapV3TickV3DTO] uniswap_v3_get_ticks__current(filter_pool_id => $filter_pool_id)

Ticks (current)

Gets ticks.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_ticks__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_ticks__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3TickV3DTO]**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_ticks_day_data__current**
> ARRAY[UniswapV3TickDayDataV3DTO] uniswap_v3_get_ticks_day_data__current(filter_pool_id => $filter_pool_id)

TicksDayData (current)

Gets ticks day data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_ticks_day_data__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_ticks_day_data__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3TickDayDataV3DTO]**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_tokens__current**
> ARRAY[UniswapV3TokenV3DTO] uniswap_v3_get_tokens__current(filter_token_id => $filter_token_id)

Tokens (current) 🔥

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_token_id = "filter_token_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_tokens__current(filter_token_id => $filter_token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_tokens__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_token_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3TokenV3DTO]**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_tokens_day_data__current**
> ARRAY[UniswapV3TokenV3DayDataDTO] uniswap_v3_get_tokens_day_data__current(filter_token_id => $filter_token_id)

TokensDayData (current)

Gets tokens day data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_token_id = "filter_token_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_tokens_day_data__current(filter_token_id => $filter_token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_tokens_day_data__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_token_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3TokenV3DayDataDTO]**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v3_get_tokens_hour_data__current**
> ARRAY[UniswapV3TokenHourDataV3DTO] uniswap_v3_get_tokens_hour_data__current(filter_token_id => $filter_token_id)

TokensHourData (current)

Gets tokens hour data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_token_id = "filter_token_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v3_get_tokens_hour_data__current(filter_token_id => $filter_token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->uniswap_v3_get_tokens_hour_data__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_token_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV3TokenHourDataV3DTO]**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

