# WWW::OpenAPIClient::GaugeApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::GaugeApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chains_chain_id_dapps_curve_gauge_historical_get**](GaugeApi.md#chains_chain_id_dapps_curve_gauge_historical_get) | **GET** /chains/{chain_id}/dapps/curve/gauge/historical | 


# **chains_chain_id_dapps_curve_gauge_historical_get**
> chains_chain_id_dapps_curve_gauge_historical_get(chain_id => $chain_id, start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)



### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::GaugeApi;
my $api_instance = WWW::OpenAPIClient::GaugeApi->new(
);

my $chain_id = "chain_id_example"; # string | 
my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    $api_instance->chains_chain_id_dapps_curve_gauge_historical_get(chain_id => $chain_id, start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling GaugeApi->chains_chain_id_dapps_curve_gauge_historical_get: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **string**|  | 
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
