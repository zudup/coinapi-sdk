# WWW::OpenAPIClient::UniswapV3Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UniswapV3Api;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dapps_uniswapv3_bundle_current_get**](UniswapV3Api.md#dapps_uniswapv3_bundle_current_get) | **GET** /dapps/uniswapv3/bundle/current | GetBundles
[**dapps_uniswapv3_bundles_historical_get**](UniswapV3Api.md#dapps_uniswapv3_bundles_historical_get) | **GET** /dapps/uniswapv3/bundles/historical | 
[**dapps_uniswapv3_burns_current_get**](UniswapV3Api.md#dapps_uniswapv3_burns_current_get) | **GET** /dapps/uniswapv3/burns/current | GetBurns
[**dapps_uniswapv3_burns_historical_get**](UniswapV3Api.md#dapps_uniswapv3_burns_historical_get) | **GET** /dapps/uniswapv3/burns/historical | 
[**dapps_uniswapv3_day_data_historical_get**](UniswapV3Api.md#dapps_uniswapv3_day_data_historical_get) | **GET** /dapps/uniswapv3/dayData/historical | 
[**dapps_uniswapv3_factory_current_get**](UniswapV3Api.md#dapps_uniswapv3_factory_current_get) | **GET** /dapps/uniswapv3/factory/current | GetFactory
[**dapps_uniswapv3_factory_historical_get**](UniswapV3Api.md#dapps_uniswapv3_factory_historical_get) | **GET** /dapps/uniswapv3/factory/historical | 
[**dapps_uniswapv3_mints_current_get**](UniswapV3Api.md#dapps_uniswapv3_mints_current_get) | **GET** /dapps/uniswapv3/mints/current | GetMints
[**dapps_uniswapv3_mints_historical_get**](UniswapV3Api.md#dapps_uniswapv3_mints_historical_get) | **GET** /dapps/uniswapv3/mints/historical | 
[**dapps_uniswapv3_pool_day_data_historical_get**](UniswapV3Api.md#dapps_uniswapv3_pool_day_data_historical_get) | **GET** /dapps/uniswapv3/poolDayData/historical | 
[**dapps_uniswapv3_pool_hour_data_historical_get**](UniswapV3Api.md#dapps_uniswapv3_pool_hour_data_historical_get) | **GET** /dapps/uniswapv3/poolHourData/historical | 
[**dapps_uniswapv3_pools_current_get**](UniswapV3Api.md#dapps_uniswapv3_pools_current_get) | **GET** /dapps/uniswapv3/pools/current | GetPools
[**dapps_uniswapv3_pools_day_data_current_get**](UniswapV3Api.md#dapps_uniswapv3_pools_day_data_current_get) | **GET** /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**dapps_uniswapv3_pools_historical_get**](UniswapV3Api.md#dapps_uniswapv3_pools_historical_get) | **GET** /dapps/uniswapv3/pools/historical | 
[**dapps_uniswapv3_pools_hour_data_current_get**](UniswapV3Api.md#dapps_uniswapv3_pools_hour_data_current_get) | **GET** /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**dapps_uniswapv3_position_snapshot_historical_get**](UniswapV3Api.md#dapps_uniswapv3_position_snapshot_historical_get) | **GET** /dapps/uniswapv3/positionSnapshot/historical | 
[**dapps_uniswapv3_position_snapshots_current_get**](UniswapV3Api.md#dapps_uniswapv3_position_snapshots_current_get) | **GET** /dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**dapps_uniswapv3_positions_current_get**](UniswapV3Api.md#dapps_uniswapv3_positions_current_get) | **GET** /dapps/uniswapv3/positions/current | GetPositions
[**dapps_uniswapv3_positions_historical_get**](UniswapV3Api.md#dapps_uniswapv3_positions_historical_get) | **GET** /dapps/uniswapv3/positions/historical | 
[**dapps_uniswapv3_swaps_current_get**](UniswapV3Api.md#dapps_uniswapv3_swaps_current_get) | **GET** /dapps/uniswapv3/swaps/current | GetSwaps
[**dapps_uniswapv3_swaps_historical_get**](UniswapV3Api.md#dapps_uniswapv3_swaps_historical_get) | **GET** /dapps/uniswapv3/swaps/historical | 
[**dapps_uniswapv3_tick_day_data_historical_get**](UniswapV3Api.md#dapps_uniswapv3_tick_day_data_historical_get) | **GET** /dapps/uniswapv3/tickDayData/historical | 
[**dapps_uniswapv3_ticks_current_get**](UniswapV3Api.md#dapps_uniswapv3_ticks_current_get) | **GET** /dapps/uniswapv3/ticks/current | GetTicks
[**dapps_uniswapv3_ticks_day_data_current_get**](UniswapV3Api.md#dapps_uniswapv3_ticks_day_data_current_get) | **GET** /dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**dapps_uniswapv3_ticks_historical_get**](UniswapV3Api.md#dapps_uniswapv3_ticks_historical_get) | **GET** /dapps/uniswapv3/ticks/historical | 
[**dapps_uniswapv3_token_day_data_historical_get**](UniswapV3Api.md#dapps_uniswapv3_token_day_data_historical_get) | **GET** /dapps/uniswapv3/tokenDayData/historical | 
[**dapps_uniswapv3_token_hour_data_historical_get**](UniswapV3Api.md#dapps_uniswapv3_token_hour_data_historical_get) | **GET** /dapps/uniswapv3/tokenHourData/historical | 
[**dapps_uniswapv3_tokens_current_get**](UniswapV3Api.md#dapps_uniswapv3_tokens_current_get) | **GET** /dapps/uniswapv3/tokens/current | GetTokens
[**dapps_uniswapv3_tokens_day_data_current_get**](UniswapV3Api.md#dapps_uniswapv3_tokens_day_data_current_get) | **GET** /dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**dapps_uniswapv3_tokens_historical_get**](UniswapV3Api.md#dapps_uniswapv3_tokens_historical_get) | **GET** /dapps/uniswapv3/tokens/historical | 
[**dapps_uniswapv3_tokens_hour_data_current_get**](UniswapV3Api.md#dapps_uniswapv3_tokens_hour_data_current_get) | **GET** /dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**dapps_uniswapv3_transactions_historical_get**](UniswapV3Api.md#dapps_uniswapv3_transactions_historical_get) | **GET** /dapps/uniswapv3/transactions/historical | 
[**dapps_uniswapv3_uniswap_day_data_current_get**](UniswapV3Api.md#dapps_uniswapv3_uniswap_day_data_current_get) | **GET** /dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


# **dapps_uniswapv3_bundle_current_get**
> ARRAY[UniswapV3BundleV3DTO] dapps_uniswapv3_bundle_current_get()

GetBundles

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->dapps_uniswapv3_bundle_current_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_bundle_current_get: $@\n";
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

# **dapps_uniswapv3_bundles_historical_get**
> dapps_uniswapv3_bundles_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_uniswapv3_bundles_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_bundles_historical_get: $@\n";
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

# **dapps_uniswapv3_burns_current_get**
> ARRAY[UniswapV3BurnV3DTO] dapps_uniswapv3_burns_current_get(filter_pool_id => $filter_pool_id)

GetBurns

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv3_burns_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_burns_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[UniswapV3BurnV3DTO]**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_burns_historical_get**
> dapps_uniswapv3_burns_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_burns_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_burns_historical_get: $@\n";
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

# **dapps_uniswapv3_day_data_historical_get**
> dapps_uniswapv3_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_uniswapv3_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_day_data_historical_get: $@\n";
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

# **dapps_uniswapv3_factory_current_get**
> ARRAY[UniswapV3FactoryV3DTO] dapps_uniswapv3_factory_current_get(chain_id => $chain_id)

GetFactory

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $chain_id = "chain_id_example"; # string | 

eval {
    my $result = $api_instance->dapps_uniswapv3_factory_current_get(chain_id => $chain_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_factory_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**|  | 

### Return type

[**ARRAY[UniswapV3FactoryV3DTO]**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_factory_historical_get**
> dapps_uniswapv3_factory_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_uniswapv3_factory_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_factory_historical_get: $@\n";
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

# **dapps_uniswapv3_mints_current_get**
> ARRAY[UniswapV3MintV3DTO] dapps_uniswapv3_mints_current_get(filter_pool_id => $filter_pool_id)

GetMints

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv3_mints_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_mints_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[UniswapV3MintV3DTO]**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_mints_historical_get**
> dapps_uniswapv3_mints_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_mints_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_mints_historical_get: $@\n";
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

# **dapps_uniswapv3_pool_day_data_historical_get**
> dapps_uniswapv3_pool_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_pool_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_pool_day_data_historical_get: $@\n";
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

# **dapps_uniswapv3_pool_hour_data_historical_get**
> dapps_uniswapv3_pool_hour_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_pool_hour_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_pool_hour_data_historical_get: $@\n";
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

# **dapps_uniswapv3_pools_current_get**
> ARRAY[UniswapV3PoolV3DTO] dapps_uniswapv3_pools_current_get(filter_pool_id => $filter_pool_id)

GetPools

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv3_pools_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_pools_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[UniswapV3PoolV3DTO]**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_pools_day_data_current_get**
> ARRAY[UniswapV3PoolDayDataV3DTO] dapps_uniswapv3_pools_day_data_current_get(filter_pool_id => $filter_pool_id)

GetPoolsDayData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv3_pools_day_data_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_pools_day_data_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[UniswapV3PoolDayDataV3DTO]**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_pools_historical_get**
> dapps_uniswapv3_pools_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_pools_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_pools_historical_get: $@\n";
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

# **dapps_uniswapv3_pools_hour_data_current_get**
> ARRAY[UniswapV3PoolHourDataV3DTO] dapps_uniswapv3_pools_hour_data_current_get(filter_pool_id => $filter_pool_id)

GetPoolsHourData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv3_pools_hour_data_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_pools_hour_data_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[UniswapV3PoolHourDataV3DTO]**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_position_snapshot_historical_get**
> dapps_uniswapv3_position_snapshot_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_position_snapshot_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_position_snapshot_historical_get: $@\n";
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

# **dapps_uniswapv3_position_snapshots_current_get**
> ARRAY[UniswapV3PositionSnapshotV3DTO] dapps_uniswapv3_position_snapshots_current_get(filter_pool_id => $filter_pool_id)

GetPositionSnapshot

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv3_position_snapshots_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_position_snapshots_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[UniswapV3PositionSnapshotV3DTO]**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_positions_current_get**
> ARRAY[UniswapV3PositionV3DTO] dapps_uniswapv3_positions_current_get(filter_pool_id => $filter_pool_id)

GetPositions

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv3_positions_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_positions_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[UniswapV3PositionV3DTO]**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_positions_historical_get**
> dapps_uniswapv3_positions_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_positions_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_positions_historical_get: $@\n";
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

# **dapps_uniswapv3_swaps_current_get**
> ARRAY[UniswapV3SwapV3DTO] dapps_uniswapv3_swaps_current_get(filter_pool_id => $filter_pool_id)

GetSwaps

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv3_swaps_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_swaps_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[UniswapV3SwapV3DTO]**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_swaps_historical_get**
> dapps_uniswapv3_swaps_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_swaps_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_swaps_historical_get: $@\n";
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

# **dapps_uniswapv3_tick_day_data_historical_get**
> dapps_uniswapv3_tick_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_tick_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_tick_day_data_historical_get: $@\n";
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

# **dapps_uniswapv3_ticks_current_get**
> ARRAY[UniswapV3TickV3DTO] dapps_uniswapv3_ticks_current_get(filter_pool_id => $filter_pool_id)

GetTicks

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv3_ticks_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_ticks_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[UniswapV3TickV3DTO]**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_ticks_day_data_current_get**
> ARRAY[UniswapV3TickDayDataV3DTO] dapps_uniswapv3_ticks_day_data_current_get(filter_pool_id => $filter_pool_id)

GetTicksDayData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | Filter pool id

eval {
    my $result = $api_instance->dapps_uniswapv3_ticks_day_data_current_get(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_ticks_day_data_current_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**| Filter pool id | [optional] 

### Return type

[**ARRAY[UniswapV3TickDayDataV3DTO]**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dapps_uniswapv3_ticks_historical_get**
> dapps_uniswapv3_ticks_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_ticks_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_ticks_historical_get: $@\n";
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

# **dapps_uniswapv3_token_day_data_historical_get**
> dapps_uniswapv3_token_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_token_day_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_token_day_data_historical_get: $@\n";
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

# **dapps_uniswapv3_token_hour_data_historical_get**
> dapps_uniswapv3_token_hour_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_token_hour_data_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_token_hour_data_historical_get: $@\n";
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

# **dapps_uniswapv3_tokens_current_get**
> ARRAY[UniswapV3TokenV3DTO] dapps_uniswapv3_tokens_current_get(filter_token_id => $filter_token_id)

GetTokens

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_token_id = "filter_token_id_example"; # string | 

eval {
    my $result = $api_instance->dapps_uniswapv3_tokens_current_get(filter_token_id => $filter_token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_tokens_current_get: $@\n";
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

# **dapps_uniswapv3_tokens_day_data_current_get**
> ARRAY[UniswapV3TokenV3DayDataDTO] dapps_uniswapv3_tokens_day_data_current_get(filter_token_id => $filter_token_id)

GetTokensDayData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_token_id = "filter_token_id_example"; # string | 

eval {
    my $result = $api_instance->dapps_uniswapv3_tokens_day_data_current_get(filter_token_id => $filter_token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_tokens_day_data_current_get: $@\n";
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

# **dapps_uniswapv3_tokens_historical_get**
> dapps_uniswapv3_tokens_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    $api_instance->dapps_uniswapv3_tokens_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_tokens_historical_get: $@\n";
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

# **dapps_uniswapv3_tokens_hour_data_current_get**
> ARRAY[UniswapV3TokenHourDataV3DTO] dapps_uniswapv3_tokens_hour_data_current_get(filter_token_id => $filter_token_id)

GetTokensHourData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $filter_token_id = "filter_token_id_example"; # string | 

eval {
    my $result = $api_instance->dapps_uniswapv3_tokens_hour_data_current_get(filter_token_id => $filter_token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_tokens_hour_data_current_get: $@\n";
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

# **dapps_uniswapv3_transactions_historical_get**
> dapps_uniswapv3_transactions_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    $api_instance->dapps_uniswapv3_transactions_historical_get(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_transactions_historical_get: $@\n";
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

# **dapps_uniswapv3_uniswap_day_data_current_get**
> ARRAY[UniswapV3UniswapDayDataV3DTO] dapps_uniswapv3_uniswap_day_data_current_get()

GetUniswapDayData

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV3Api;
my $api_instance = WWW::OpenAPIClient::UniswapV3Api->new(
);


eval {
    my $result = $api_instance->dapps_uniswapv3_uniswap_day_data_current_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV3Api->dapps_uniswapv3_uniswap_day_data_current_get: $@\n";
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

