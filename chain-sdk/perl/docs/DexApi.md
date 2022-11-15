# WWW::OpenAPIClient::DexApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::DexApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dex_get_batch_dtos__historical**](DexApi.md#dex_get_batch_dtos__historical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
[**dex_get_batches__historical**](DexApi.md#dex_get_batches__historical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**dex_get_deposit_dtos__historical**](DexApi.md#dex_get_deposit_dtos__historical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
[**dex_get_deposits__historical**](DexApi.md#dex_get_deposits__historical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**dex_get_order_dtos__historical**](DexApi.md#dex_get_order_dtos__historical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**dex_get_orders__historical**](DexApi.md#dex_get_orders__historical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**dex_get_price_dtos__historical**](DexApi.md#dex_get_price_dtos__historical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
[**dex_get_prices__historical**](DexApi.md#dex_get_prices__historical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**dex_get_solution_dtos__historical**](DexApi.md#dex_get_solution_dtos__historical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
[**dex_get_solutions__historical**](DexApi.md#dex_get_solutions__historical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**dex_get_stats__historical**](DexApi.md#dex_get_stats__historical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**dex_get_stats_dtos__historical**](DexApi.md#dex_get_stats_dtos__historical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
[**dex_get_token_dtos__historical**](DexApi.md#dex_get_token_dtos__historical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**dex_get_tokens__historical**](DexApi.md#dex_get_tokens__historical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**dex_get_trade_dtos__historical**](DexApi.md#dex_get_trade_dtos__historical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**dex_get_trades__historical**](DexApi.md#dex_get_trades__historical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**dex_get_user_dtos__historical**](DexApi.md#dex_get_user_dtos__historical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
[**dex_get_users__historical**](DexApi.md#dex_get_users__historical) | **GET** /dapps/dex/users/historical | Users (historical)
[**dex_get_withdraw_dtos__historical**](DexApi.md#dex_get_withdraw_dtos__historical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
[**dex_get_withdraw_request_dtos__historical**](DexApi.md#dex_get_withdraw_request_dtos__historical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
[**dex_get_withdraws__historical**](DexApi.md#dex_get_withdraws__historical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**dex_get_withdraws_requests__historical**](DexApi.md#dex_get_withdraws_requests__historical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)


# **dex_get_batch_dtos__historical**
> ARRAY[DexBatchDTO] dex_get_batch_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

BatchDTOs (historical) 🔥

Gets BatchDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_batch_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_batch_dtos__historical: $@\n";
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

[**ARRAY[DexBatchDTO]**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_batches__historical**
> ARRAY[DexBatchDTO] dex_get_batches__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

Batches (historical)

Gets batches.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->dex_get_batches__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_batches__historical: $@\n";
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

[**ARRAY[DexBatchDTO]**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_deposit_dtos__historical**
> ARRAY[DexDepositDTO] dex_get_deposit_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

DepositDTOs (historical) 🔥

Gets DepositDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_deposit_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_deposit_dtos__historical: $@\n";
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

[**ARRAY[DexDepositDTO]**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_deposits__historical**
> ARRAY[DexDepositDTO] dex_get_deposits__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)

Deposits (historical)

Gets deposits.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_deposits__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_deposits__historical: $@\n";
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

[**ARRAY[DexDepositDTO]**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_order_dtos__historical**
> ARRAY[DexOrderDTO] dex_get_order_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_order_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_order_dtos__historical: $@\n";
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

[**ARRAY[DexOrderDTO]**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_orders__historical**
> ARRAY[DexOrderDTO] dex_get_orders__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)

Orders (historical)

Gets orders.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_orders__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_orders__historical: $@\n";
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

[**ARRAY[DexOrderDTO]**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_price_dtos__historical**
> ARRAY[DexPriceDTO] dex_get_price_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

PriceDTOs (historical) 🔥

Gets PriceDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_price_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_price_dtos__historical: $@\n";
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

[**ARRAY[DexPriceDTO]**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_prices__historical**
> ARRAY[DexPriceDTO] dex_get_prices__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)

Prices (historical)

Gets prices.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_prices__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_prices__historical: $@\n";
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

[**ARRAY[DexPriceDTO]**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_solution_dtos__historical**
> ARRAY[DexSolutionDTO] dex_get_solution_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

SolutionDTOs (historical) 🔥

Gets SolutionDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_solution_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_solution_dtos__historical: $@\n";
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

[**ARRAY[DexSolutionDTO]**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_solutions__historical**
> ARRAY[DexSolutionDTO] dex_get_solutions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)

Solutions (historical)

Gets solutions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_solutions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_solutions__historical: $@\n";
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

[**ARRAY[DexSolutionDTO]**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_stats__historical**
> ARRAY[DexStatsDTO] dex_get_stats__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

Stats (historical)

Gets stats.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->dex_get_stats__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_stats__historical: $@\n";
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

[**ARRAY[DexStatsDTO]**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_stats_dtos__historical**
> ARRAY[DexStatsDTO] dex_get_stats_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

StatsDTOs (historical) 🔥

Gets StatsDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_stats_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_stats_dtos__historical: $@\n";
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

[**ARRAY[DexStatsDTO]**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_token_dtos__historical**
> ARRAY[DexTokenDTO] dex_get_token_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_token_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_token_dtos__historical: $@\n";
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

[**ARRAY[DexTokenDTO]**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_tokens__historical**
> ARRAY[DexTokenDTO] dex_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)

Tokens (historical) 🔥

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_tokens__historical: $@\n";
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

[**ARRAY[DexTokenDTO]**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_trade_dtos__historical**
> ARRAY[DexTradeDTO] dex_get_trade_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_trade_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_trade_dtos__historical: $@\n";
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

[**ARRAY[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_trades__historical**
> ARRAY[DexTradeDTO] dex_get_trades__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

Trades (historical) 🔥

Gets trades.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->dex_get_trades__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_trades__historical: $@\n";
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

[**ARRAY[DexTradeDTO]**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_user_dtos__historical**
> ARRAY[DexUserDTO] dex_get_user_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_user_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_user_dtos__historical: $@\n";
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

[**ARRAY[DexUserDTO]**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_users__historical**
> ARRAY[DexUserDTO] dex_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

Users (historical)

Gets users.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->dex_get_users__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_users__historical: $@\n";
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

[**ARRAY[DexUserDTO]**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_withdraw_dtos__historical**
> ARRAY[DexWithdrawDTO] dex_get_withdraw_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

WithdrawDTOs (historical) 🔥

Gets WithdrawDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_withdraw_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_withdraw_dtos__historical: $@\n";
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

[**ARRAY[DexWithdrawDTO]**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_withdraw_request_dtos__historical**
> ARRAY[DexWithdrawRequestDTO] dex_get_withdraw_request_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

WithdrawRequestDTOs (historical) 🔥

Gets WithdrawRequestDTOs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_withdraw_request_dtos__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_withdraw_request_dtos__historical: $@\n";
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

[**ARRAY[DexWithdrawRequestDTO]**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_withdraws__historical**
> ARRAY[DexWithdrawDTO] dex_get_withdraws__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)

Withdraws (historical)

Gets withdraws.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_withdraws__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_withdraws__historical: $@\n";
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

[**ARRAY[DexWithdrawDTO]**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dex_get_withdraws_requests__historical**
> ARRAY[DexWithdrawRequestDTO] dex_get_withdraws_requests__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)

WithdrawsRequests (historical)

Gets withdraws requests.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::DexApi;
my $api_instance = WWW::OpenAPIClient::DexApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    my $result = $api_instance->dex_get_withdraws_requests__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DexApi->dex_get_withdraws_requests__historical: $@\n";
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

[**ARRAY[DexWithdrawRequestDTO]**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

