# WWW::OpenAPIClient::UniswapV2Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UniswapV2Api;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v2_get_bundles__historical**](UniswapV2Api.md#uniswap_v2_get_bundles__historical) | **GET** /dapps/uniswapv2/bundles/historical-manual | Bundles (historical)
[**uniswap_v2_get_burns__historical**](UniswapV2Api.md#uniswap_v2_get_burns__historical) | **GET** /dapps/uniswapv2/burns/historical-manual | Burns (historical)
[**uniswap_v2_get_day_data__historical**](UniswapV2Api.md#uniswap_v2_get_day_data__historical) | **GET** /dapps/uniswapv2/dayData/historical-manual | DayData (historical)
[**uniswap_v2_get_factory__historical**](UniswapV2Api.md#uniswap_v2_get_factory__historical) | **GET** /dapps/uniswapv2/factory/historical-manual | Factory (historical)
[**uniswap_v2_get_liquidity_positions__historical**](UniswapV2Api.md#uniswap_v2_get_liquidity_positions__historical) | **GET** /dapps/uniswapv2/liquidityPositions/historical-manual | LiquidityPositions (historical)
[**uniswap_v2_get_liquidity_positions_snapshots__historical**](UniswapV2Api.md#uniswap_v2_get_liquidity_positions_snapshots__historical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical-manual | LiquidityPositionsSnapshots (historical)
[**uniswap_v2_get_mints__historical**](UniswapV2Api.md#uniswap_v2_get_mints__historical) | **GET** /dapps/uniswapv2/mints/historical-manual | Mints (historical)
[**uniswap_v2_get_pools__current**](UniswapV2Api.md#uniswap_v2_get_pools__current) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswap_v2_get_pools__historical**](UniswapV2Api.md#uniswap_v2_get_pools__historical) | **GET** /dapps/uniswapv2/pools/historical-manual | Pools (historical) 🔥
[**uniswap_v2_get_pools_day_data__historical**](UniswapV2Api.md#uniswap_v2_get_pools_day_data__historical) | **GET** /dapps/uniswapv2/poolsDayData/historical-manual | PoolsDayData (historical)
[**uniswap_v2_get_pools_hour_data__historical**](UniswapV2Api.md#uniswap_v2_get_pools_hour_data__historical) | **GET** /dapps/uniswapv2/poolsHourData/historical-manual | PoolsHourData (historical)
[**uniswap_v2_get_swaps__current**](UniswapV2Api.md#uniswap_v2_get_swaps__current) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswap_v2_get_swaps__historical**](UniswapV2Api.md#uniswap_v2_get_swaps__historical) | **GET** /dapps/uniswapv2/swaps/historical-manual | Swaps (historical) 🔥
[**uniswap_v2_get_tokens__current**](UniswapV2Api.md#uniswap_v2_get_tokens__current) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**uniswap_v2_get_tokens__historical**](UniswapV2Api.md#uniswap_v2_get_tokens__historical) | **GET** /dapps/uniswapv2/tokens/historical-manual | Tokens (historical) 🔥
[**uniswap_v2_get_tokens_day_data__historical**](UniswapV2Api.md#uniswap_v2_get_tokens_day_data__historical) | **GET** /dapps/uniswapv2/tokensDayData/historical-manual | TokensDayData (historical)
[**uniswap_v2_get_transactions__historical**](UniswapV2Api.md#uniswap_v2_get_transactions__historical) | **GET** /dapps/uniswapv2/transactions/historical-manual | Transactions (historical)
[**uniswap_v2_get_users__historical**](UniswapV2Api.md#uniswap_v2_get_users__historical) | **GET** /dapps/uniswapv2/users/historical-manual | Users (historical)


# **uniswap_v2_get_bundles__historical**
> ARRAY[UniswapV2BundleV2DTO] uniswap_v2_get_bundles__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

Bundles (historical)

Gets bundles.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->uniswap_v2_get_bundles__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_bundles__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 

### Return type

[**ARRAY[UniswapV2BundleV2DTO]**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_burns__historical**
> ARRAY[UniswapV2BurnV2DTO] uniswap_v2_get_burns__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

Burns (historical)

Gets burns.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_burns__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_burns__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2BurnV2DTO]**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_day_data__historical**
> ARRAY[UniswapV2UniswapDayDataV2DTO] uniswap_v2_get_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

DayData (historical)

Gets uniswapv2 day data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->uniswap_v2_get_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 

### Return type

[**ARRAY[UniswapV2UniswapDayDataV2DTO]**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_factory__historical**
> ARRAY[UniswapV2UniswapFactoryV2DTO] uniswap_v2_get_factory__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

Factory (historical)

Gets factory.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->uniswap_v2_get_factory__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_factory__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 

### Return type

[**ARRAY[UniswapV2UniswapFactoryV2DTO]**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_liquidity_positions__historical**
> ARRAY[UniswapV2LiquidityPositionV2DTO] uniswap_v2_get_liquidity_positions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

LiquidityPositions (historical)

Gets liquidity positions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_liquidity_positions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_liquidity_positions__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2LiquidityPositionV2DTO]**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_liquidity_positions_snapshots__historical**
> ARRAY[UniswapV2LiquidityPositionSnapshotV2DTO] uniswap_v2_get_liquidity_positions_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

LiquidityPositionsSnapshots (historical)

Gets liquidity positions snapshots.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_liquidity_positions_snapshots__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_liquidity_positions_snapshots__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2LiquidityPositionSnapshotV2DTO]**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_mints__historical**
> ARRAY[UniswapV2MintV2DTO] uniswap_v2_get_mints__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

Mints (historical)

Gets mints.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_mints__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_mints__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2MintV2DTO]**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **uniswap_v2_get_pools__historical**
> ARRAY[UniswapV2PairV2DTO] uniswap_v2_get_pools__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

Pools (historical) 🔥

Gets pools.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_pools__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pools__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2PairV2DTO]**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pools_day_data__historical**
> ARRAY[UniswapV2PairDayDataV2DTO] uniswap_v2_get_pools_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

PoolsDayData (historical)

Gets pools day data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_pools_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pools_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2PairDayDataV2DTO]**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pools_hour_data__historical**
> ARRAY[UniswapV2PairHourDataV2DTO] uniswap_v2_get_pools_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

PoolsHourData (historical)

Gets pools tracked each our.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_pools_hour_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pools_hour_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2PairHourDataV2DTO]**](UniswapV2PairHourDataV2DTO.md)

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

# **uniswap_v2_get_swaps__historical**
> ARRAY[UniswapV2SwapV2DTO] uniswap_v2_get_swaps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

Swaps (historical) 🔥

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_swaps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_swaps__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **pool_id** | **string**|  | [optional] 

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

# **uniswap_v2_get_tokens__historical**
> ARRAY[UniswapV2TokenV2DTO] uniswap_v2_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)

Tokens (historical) 🔥

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_tokens__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **token_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2TokenV2DTO]**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_tokens_day_data__historical**
> ARRAY[UniswapV2TokenDayDataV2DTO] uniswap_v2_get_tokens_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)

TokensDayData (historical)

Gets tokens day data.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_tokens_day_data__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_tokens_day_data__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **token_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2TokenDayDataV2DTO]**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_transactions__historical**
> ARRAY[UniswapV2TransactionV2DTO] uniswap_v2_get_transactions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

Transactions (historical)

Gets transactions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->uniswap_v2_get_transactions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_transactions__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 

### Return type

[**ARRAY[UniswapV2TransactionV2DTO]**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_users__historical**
> ARRAY[UniswapV2UserV2DTO] uniswap_v2_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

Users (historical)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->uniswap_v2_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_users__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 

### Return type

[**ARRAY[UniswapV2UserV2DTO]**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

