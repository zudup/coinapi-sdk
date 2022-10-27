# WWW::OpenAPIClient::SushiswapApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::SushiswapApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dapps_sushiswap_bundles_historical_get**](SushiswapApi.md#dapps_sushiswap_bundles_historical_get) | **GET** /dapps/sushiswap/bundles/historical | 
[**dapps_sushiswap_burns_historical_get**](SushiswapApi.md#dapps_sushiswap_burns_historical_get) | **GET** /dapps/sushiswap/burns/historical | 
[**dapps_sushiswap_day_data_historical_get**](SushiswapApi.md#dapps_sushiswap_day_data_historical_get) | **GET** /dapps/sushiswap/dayData/historical | 
[**dapps_sushiswap_factory_historical_get**](SushiswapApi.md#dapps_sushiswap_factory_historical_get) | **GET** /dapps/sushiswap/factory/historical | 
[**dapps_sushiswap_hour_data_historical_get**](SushiswapApi.md#dapps_sushiswap_hour_data_historical_get) | **GET** /dapps/sushiswap/hourData/historical | 
[**dapps_sushiswap_liquidity_position_historical_get**](SushiswapApi.md#dapps_sushiswap_liquidity_position_historical_get) | **GET** /dapps/sushiswap/liquidityPosition/historical | 
[**dapps_sushiswap_liquidity_position_snapshots_historical_get**](SushiswapApi.md#dapps_sushiswap_liquidity_position_snapshots_historical_get) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**dapps_sushiswap_mints_historical_get**](SushiswapApi.md#dapps_sushiswap_mints_historical_get) | **GET** /dapps/sushiswap/mints/historical | 
[**dapps_sushiswap_poi_historical_get**](SushiswapApi.md#dapps_sushiswap_poi_historical_get) | **GET** /dapps/sushiswap/poi/historical | 
[**dapps_sushiswap_pool_day_data_historical_get**](SushiswapApi.md#dapps_sushiswap_pool_day_data_historical_get) | **GET** /dapps/sushiswap/poolDayData/historical | 
[**dapps_sushiswap_pool_hour_data_historical_get**](SushiswapApi.md#dapps_sushiswap_pool_hour_data_historical_get) | **GET** /dapps/sushiswap/poolHourData/historical | 
[**dapps_sushiswap_pools_current_get**](SushiswapApi.md#dapps_sushiswap_pools_current_get) | **GET** /dapps/sushiswap/pools/current | GetPools
[**dapps_sushiswap_pools_historical_get**](SushiswapApi.md#dapps_sushiswap_pools_historical_get) | **GET** /dapps/sushiswap/pools/historical | 
[**dapps_sushiswap_swaps_current_get**](SushiswapApi.md#dapps_sushiswap_swaps_current_get) | **GET** /dapps/sushiswap/swaps/current | GetSwaps
[**dapps_sushiswap_swaps_historical_get**](SushiswapApi.md#dapps_sushiswap_swaps_historical_get) | **GET** /dapps/sushiswap/swaps/historical | 
[**dapps_sushiswap_token_day_data_historical_get**](SushiswapApi.md#dapps_sushiswap_token_day_data_historical_get) | **GET** /dapps/sushiswap/tokenDayData/historical | 
[**dapps_sushiswap_tokens_current_get**](SushiswapApi.md#dapps_sushiswap_tokens_current_get) | **GET** /dapps/sushiswap/tokens/current | GetTokens
[**dapps_sushiswap_tokens_historical_get**](SushiswapApi.md#dapps_sushiswap_tokens_historical_get) | **GET** /dapps/sushiswap/tokens/historical | 
[**dapps_sushiswap_transactions_historical_get**](SushiswapApi.md#dapps_sushiswap_transactions_historical_get) | **GET** /dapps/sushiswap/transactions/historical | 
[**dapps_sushiswap_users_historical_get**](SushiswapApi.md#dapps_sushiswap_users_historical_get) | **GET** /dapps/sushiswap/users/historical | 


# **dapps_sushiswap_bundles_historical_get**
> dapps_sushiswap_bundles_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_sushiswap_bundles_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_bundles_historical_get: $@\n";
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

# **dapps_sushiswap_burns_historical_get**
> dapps_sushiswap_burns_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_sushiswap_burns_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_burns_historical_get: $@\n";
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

# **dapps_sushiswap_day_data_historical_get**
> dapps_sushiswap_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_sushiswap_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_day_data_historical_get: $@\n";
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

# **dapps_sushiswap_factory_historical_get**
> dapps_sushiswap_factory_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_sushiswap_factory_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_factory_historical_get: $@\n";
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

# **dapps_sushiswap_hour_data_historical_get**
> dapps_sushiswap_hour_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_sushiswap_hour_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_hour_data_historical_get: $@\n";
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

# **dapps_sushiswap_liquidity_position_historical_get**
> dapps_sushiswap_liquidity_position_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_sushiswap_liquidity_position_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_liquidity_position_historical_get: $@\n";
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

# **dapps_sushiswap_liquidity_position_snapshots_historical_get**
> dapps_sushiswap_liquidity_position_snapshots_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_sushiswap_liquidity_position_snapshots_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_liquidity_position_snapshots_historical_get: $@\n";
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

# **dapps_sushiswap_mints_historical_get**
> dapps_sushiswap_mints_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_sushiswap_mints_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_mints_historical_get: $@\n";
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

# **dapps_sushiswap_poi_historical_get**
> dapps_sushiswap_poi_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_sushiswap_poi_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_poi_historical_get: $@\n";
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

# **dapps_sushiswap_pool_day_data_historical_get**
> dapps_sushiswap_pool_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_sushiswap_pool_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_pool_day_data_historical_get: $@\n";
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

# **dapps_sushiswap_pool_hour_data_historical_get**
> dapps_sushiswap_pool_hour_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_sushiswap_pool_hour_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_pool_hour_data_historical_get: $@\n";
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

# **dapps_sushiswap_pools_current_get**
> ARRAY[PairDTO] dapps_sushiswap_pools_current_get()

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->dapps_sushiswap_pools_current_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_pools_current_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[PairDTO]**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_pools_historical_get**
> dapps_sushiswap_pools_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_sushiswap_pools_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_pools_historical_get: $@\n";
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

# **dapps_sushiswap_swaps_current_get**
> ARRAY[SwapDTO] dapps_sushiswap_swaps_current_get()

GetSwaps

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->dapps_sushiswap_swaps_current_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_swaps_current_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[SwapDTO]**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_swaps_historical_get**
> dapps_sushiswap_swaps_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_sushiswap_swaps_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_swaps_historical_get: $@\n";
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

# **dapps_sushiswap_token_day_data_historical_get**
> dapps_sushiswap_token_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    $api_instance->dapps_sushiswap_token_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_token_day_data_historical_get: $@\n";
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

# **dapps_sushiswap_tokens_current_get**
> ARRAY[TokenDTO] dapps_sushiswap_tokens_current_get()

GetTokens

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);


eval {
    my $result = $api_instance->dapps_sushiswap_tokens_current_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_tokens_current_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[TokenDTO]**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_sushiswap_tokens_historical_get**
> dapps_sushiswap_tokens_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    $api_instance->dapps_sushiswap_tokens_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_tokens_historical_get: $@\n";
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

# **dapps_sushiswap_transactions_historical_get**
> dapps_sushiswap_transactions_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_sushiswap_transactions_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_transactions_historical_get: $@\n";
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

# **dapps_sushiswap_users_historical_get**
> dapps_sushiswap_users_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::SushiswapApi;
my $api_instance = WWW::OpenAPIClient::SushiswapApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_sushiswap_users_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling SushiswapApi->dapps_sushiswap_users_historical_get: $@\n";
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

