# WWW::OpenAPIClient::UniswapV2Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UniswapV2Api;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dapps_uniswapv2_bundles_historical_get**](UniswapV2Api.md#dapps_uniswapv2_bundles_historical_get) | **GET** /dapps/uniswapv2/bundles/historical | 
[**dapps_uniswapv2_burns_historical_get**](UniswapV2Api.md#dapps_uniswapv2_burns_historical_get) | **GET** /dapps/uniswapv2/burns/historical | 
[**dapps_uniswapv2_day_data_historical_get**](UniswapV2Api.md#dapps_uniswapv2_day_data_historical_get) | **GET** /dapps/uniswapv2/dayData/historical | 
[**dapps_uniswapv2_factory_historical_get**](UniswapV2Api.md#dapps_uniswapv2_factory_historical_get) | **GET** /dapps/uniswapv2/factory/historical | 
[**dapps_uniswapv2_liquidity_position_historical_get**](UniswapV2Api.md#dapps_uniswapv2_liquidity_position_historical_get) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
[**dapps_uniswapv2_liquidity_position_snapshots_historical_get**](UniswapV2Api.md#dapps_uniswapv2_liquidity_position_snapshots_historical_get) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
[**dapps_uniswapv2_mints_historical_get**](UniswapV2Api.md#dapps_uniswapv2_mints_historical_get) | **GET** /dapps/uniswapv2/mints/historical | 
[**dapps_uniswapv2_pool_day_data_historical_get**](UniswapV2Api.md#dapps_uniswapv2_pool_day_data_historical_get) | **GET** /dapps/uniswapv2/poolDayData/historical | 
[**dapps_uniswapv2_pool_hour_data_historical_get**](UniswapV2Api.md#dapps_uniswapv2_pool_hour_data_historical_get) | **GET** /dapps/uniswapv2/poolHourData/historical | 
[**dapps_uniswapv2_pools_current_get**](UniswapV2Api.md#dapps_uniswapv2_pools_current_get) | **GET** /dapps/uniswapv2/pools/current | GetPools
[**dapps_uniswapv2_pools_historical_get**](UniswapV2Api.md#dapps_uniswapv2_pools_historical_get) | **GET** /dapps/uniswapv2/pools/historical | 
[**dapps_uniswapv2_swaps_current_get**](UniswapV2Api.md#dapps_uniswapv2_swaps_current_get) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
[**dapps_uniswapv2_swaps_historical_get**](UniswapV2Api.md#dapps_uniswapv2_swaps_historical_get) | **GET** /dapps/uniswapv2/swaps/historical | 
[**dapps_uniswapv2_token_day_data_historical_get**](UniswapV2Api.md#dapps_uniswapv2_token_day_data_historical_get) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
[**dapps_uniswapv2_tokens_current_get**](UniswapV2Api.md#dapps_uniswapv2_tokens_current_get) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
[**dapps_uniswapv2_tokens_historical_get**](UniswapV2Api.md#dapps_uniswapv2_tokens_historical_get) | **GET** /dapps/uniswapv2/tokens/historical | 
[**dapps_uniswapv2_transactions_historical_get**](UniswapV2Api.md#dapps_uniswapv2_transactions_historical_get) | **GET** /dapps/uniswapv2/transactions/historical | 
[**dapps_uniswapv2_users_historical_get**](UniswapV2Api.md#dapps_uniswapv2_users_historical_get) | **GET** /dapps/uniswapv2/users/historical | 


# **dapps_uniswapv2_bundles_historical_get**
> dapps_uniswapv2_bundles_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



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
    $api_instance->dapps_uniswapv2_bundles_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_bundles_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_burns_historical_get**
> dapps_uniswapv2_burns_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



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
    $api_instance->dapps_uniswapv2_burns_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_burns_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_day_data_historical_get**
> dapps_uniswapv2_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



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
    $api_instance->dapps_uniswapv2_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_day_data_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_factory_historical_get**
> dapps_uniswapv2_factory_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



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
    $api_instance->dapps_uniswapv2_factory_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_factory_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_liquidity_position_historical_get**
> dapps_uniswapv2_liquidity_position_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



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
    $api_instance->dapps_uniswapv2_liquidity_position_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_liquidity_position_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_liquidity_position_snapshots_historical_get**
> dapps_uniswapv2_liquidity_position_snapshots_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



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
    $api_instance->dapps_uniswapv2_liquidity_position_snapshots_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_liquidity_position_snapshots_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_mints_historical_get**
> dapps_uniswapv2_mints_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



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
    $api_instance->dapps_uniswapv2_mints_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_mints_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_pool_day_data_historical_get**
> dapps_uniswapv2_pool_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



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
    $api_instance->dapps_uniswapv2_pool_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_pool_day_data_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_pool_hour_data_historical_get**
> dapps_uniswapv2_pool_hour_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



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
    $api_instance->dapps_uniswapv2_pool_hour_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_pool_hour_data_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_pools_current_get**
> ARRAY[PairV2DTO] dapps_uniswapv2_pools_current_get(filter_pool_id => $filter_pool_id)

GetPools

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv2_pools_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_pools_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[PairV2DTO]**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_pools_historical_get**
> dapps_uniswapv2_pools_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



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
    $api_instance->dapps_uniswapv2_pools_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_pools_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_swaps_current_get**
> ARRAY[SwapV2DTO] dapps_uniswapv2_swaps_current_get()

GetSwaps

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->dapps_uniswapv2_swaps_current_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_swaps_current_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SwapV2DTO]**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_swaps_historical_get**
> dapps_uniswapv2_swaps_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



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
    $api_instance->dapps_uniswapv2_swaps_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_swaps_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_token_day_data_historical_get**
> dapps_uniswapv2_token_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)



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
    $api_instance->dapps_uniswapv2_token_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_token_day_data_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_tokens_current_get**
> ARRAY[TokenV2DTO] dapps_uniswapv2_tokens_current_get()

GetTokens

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->dapps_uniswapv2_tokens_current_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_tokens_current_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[TokenV2DTO]**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_tokens_historical_get**
> dapps_uniswapv2_tokens_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)



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
    $api_instance->dapps_uniswapv2_tokens_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_tokens_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_transactions_historical_get**
> dapps_uniswapv2_transactions_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



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
    $api_instance->dapps_uniswapv2_transactions_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_transactions_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv2_users_historical_get**
> dapps_uniswapv2_users_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



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
    $api_instance->dapps_uniswapv2_users_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->dapps_uniswapv2_users_historical_get: $@\n";
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

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

