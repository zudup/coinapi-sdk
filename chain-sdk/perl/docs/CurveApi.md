# WWW::OpenAPIClient::CurveApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::CurveApi;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**curve_get_accounts__historical**](CurveApi.md#curve_get_accounts__historical) | **GET** /dapps/curve/accounts/historical | GetAccounts (historical)
[**curve_get_add_liquidity_events__historical**](CurveApi.md#curve_get_add_liquidity_events__historical) | **GET** /dapps/curve/addLiquidityEvents/historical | GetAddLiquidityEvents (historical)
[**curve_get_admin_fee_change_logs__historical**](CurveApi.md#curve_get_admin_fee_change_logs__historical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | GetAdminFeeChangeLogs (historical)
[**curve_get_amplification_coeff_change_logs__historical**](CurveApi.md#curve_get_amplification_coeff_change_logs__historical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | GetAmplificationCoeffChangeLogs (historical)
[**curve_get_coins__historical**](CurveApi.md#curve_get_coins__historical) | **GET** /dapps/curve/coins/historical | GetCoins (historical)
[**curve_get_contracts__historical**](CurveApi.md#curve_get_contracts__historical) | **GET** /dapps/curve/contracts/historical | GetContracts (historical)
[**curve_get_contracts_versions__historical**](CurveApi.md#curve_get_contracts_versions__historical) | **GET** /dapps/curve/contractsVersions/historical | GetContractsVersions (historical)
[**curve_get_daily_volumes__historical**](CurveApi.md#curve_get_daily_volumes__historical) | **GET** /dapps/curve/dailyVolumes/historical | GetDailyVolumes (historical)
[**curve_get_exchanges__historical**](CurveApi.md#curve_get_exchanges__historical) | **GET** /dapps/curve/exchanges/historical | GetExchanges (historical) 🔥
[**curve_get_fee_change_logs__historical**](CurveApi.md#curve_get_fee_change_logs__historical) | **GET** /dapps/curve/feeChangeLogs/historical | GetFeeChangeLogs (historical)
[**curve_get_gauges__historical**](CurveApi.md#curve_get_gauges__historical) | **GET** /dapps/curve/gauges/historical | GetGauges (historical)
[**curve_get_gauges_deposits__historical**](CurveApi.md#curve_get_gauges_deposits__historical) | **GET** /dapps/curve/gaugesDeposits/historical | GetGaugesDeposits (historical)
[**curve_get_gauges_liquidity__historical**](CurveApi.md#curve_get_gauges_liquidity__historical) | **GET** /dapps/curve/gaugesLiquidity/historical | GetGaugesLiquidity (historical)
[**curve_get_gauges_total_weights__historical**](CurveApi.md#curve_get_gauges_total_weights__historical) | **GET** /dapps/curve/gaugesTotalWeights/historical | GetGaugesTotalWeights (historical)
[**curve_get_gauges_types__historical**](CurveApi.md#curve_get_gauges_types__historical) | **GET** /dapps/curve/gaugesTypes/historical | GetGaugesTypes (historical)
[**curve_get_gauges_types_weights__historical**](CurveApi.md#curve_get_gauges_types_weights__historical) | **GET** /dapps/curve/gaugesTypesWeights/historical | GetGaugesTypesWeights (historical)
[**curve_get_gauges_weights__historical**](CurveApi.md#curve_get_gauges_weights__historical) | **GET** /dapps/curve/gaugesWeights/historical | GetGaugesWeights (historical)
[**curve_get_gauges_weights_votes__historical**](CurveApi.md#curve_get_gauges_weights_votes__historical) | **GET** /dapps/curve/gaugesWeightsVotes/historical | GetGaugesWeightsVotes (historical)
[**curve_get_gauges_withdraw__historical**](CurveApi.md#curve_get_gauges_withdraw__historical) | **GET** /dapps/curve/gaugesWithdraws/historical | GetGaugesWithdraw (historical)
[**curve_get_hourly_volumes__historical**](CurveApi.md#curve_get_hourly_volumes__historical) | **GET** /dapps/curve/hourlyVolumes/historical | GetHourlyVolumes (historical)
[**curve_get_lp_tokens__historical**](CurveApi.md#curve_get_lp_tokens__historical) | **GET** /dapps/curve/lpTokens/historical | GetLpTokens (historical)
[**curve_get_pools__historical**](CurveApi.md#curve_get_pools__historical) | **GET** /dapps/curve/pools/historical | GetPools (historical) 🔥
[**curve_get_proposals__historical**](CurveApi.md#curve_get_proposals__historical) | **GET** /dapps/curve/proposals/historical | GetProposals (historical)
[**curve_get_proposals_votes__historical**](CurveApi.md#curve_get_proposals_votes__historical) | **GET** /dapps/curve/proposalsVotes/historical | GetProposalsVotes (historical)
[**curve_get_remove_liquidity_events__historical**](CurveApi.md#curve_get_remove_liquidity_events__historical) | **GET** /dapps/curve/removeLiquidityEvents/historical | GetRemoveLiquidityEvents (historical)
[**curve_get_remove_liquidity_one_events__historical**](CurveApi.md#curve_get_remove_liquidity_one_events__historical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | GetRemoveLiquidityOneEvents (historical)
[**curve_get_system_states__historical**](CurveApi.md#curve_get_system_states__historical) | **GET** /dapps/curve/systemStates/historical | GetSystemStates (historical)
[**curve_get_tokens__historical**](CurveApi.md#curve_get_tokens__historical) | **GET** /dapps/curve/tokens/historical | GetTokens (historical) 🔥
[**curve_get_transfer_ownership_events__historical**](CurveApi.md#curve_get_transfer_ownership_events__historical) | **GET** /dapps/curve/transferOwnershipEvents/historical | GetTransferOwnershipEvents (historical)
[**curve_get_underlying_coins__historical**](CurveApi.md#curve_get_underlying_coins__historical) | **GET** /dapps/curve/underlyingCoins/historical | GetUnderlyingCoins (historical)
[**curve_get_voting_apps__historical**](CurveApi.md#curve_get_voting_apps__historical) | **GET** /dapps/curve/votingApps/historical | GetVotingApps (historical)
[**curve_get_weekly_volumes__historical**](CurveApi.md#curve_get_weekly_volumes__historical) | **GET** /dapps/curve/weeklyVolumes/historical | GetWeeklyVolumes (historical)


# **curve_get_accounts__historical**
> ARRAY[CurveAccountDTO] curve_get_accounts__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetAccounts (historical)

Gets accounts.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_accounts__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_accounts__historical: $@\n";
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

[**ARRAY[CurveAccountDTO]**](CurveAccountDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_add_liquidity_events__historical**
> ARRAY[CurveAddLiquidityEventDTO] curve_get_add_liquidity_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetAddLiquidityEvents (historical)

Gets add liquidity events.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_add_liquidity_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_add_liquidity_events__historical: $@\n";
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

[**ARRAY[CurveAddLiquidityEventDTO]**](CurveAddLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_admin_fee_change_logs__historical**
> ARRAY[CurveAdminFeeChangeLogDTO] curve_get_admin_fee_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetAdminFeeChangeLogs (historical)

Gets admin fee change logs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_admin_fee_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_admin_fee_change_logs__historical: $@\n";
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

[**ARRAY[CurveAdminFeeChangeLogDTO]**](CurveAdminFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_amplification_coeff_change_logs__historical**
> ARRAY[CurveAmplificationCoeffChangeLogDTO] curve_get_amplification_coeff_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetAmplificationCoeffChangeLogs (historical)

Gets amplification coeff change logs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_amplification_coeff_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_amplification_coeff_change_logs__historical: $@\n";
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

[**ARRAY[CurveAmplificationCoeffChangeLogDTO]**](CurveAmplificationCoeffChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_coins__historical**
> ARRAY[CurveCoinDTO] curve_get_coins__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetCoins (historical)

Gets coins.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_coins__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_coins__historical: $@\n";
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

[**ARRAY[CurveCoinDTO]**](CurveCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_contracts__historical**
> ARRAY[CurveContractDTO] curve_get_contracts__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetContracts (historical)

Gets contracts.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_contracts__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_contracts__historical: $@\n";
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

[**ARRAY[CurveContractDTO]**](CurveContractDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_contracts_versions__historical**
> ARRAY[CurveContractVersionDTO] curve_get_contracts_versions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetContractsVersions (historical)

Gets contracts versions.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_contracts_versions__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_contracts_versions__historical: $@\n";
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

[**ARRAY[CurveContractVersionDTO]**](CurveContractVersionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_daily_volumes__historical**
> ARRAY[CurveDailyVolumeDTO] curve_get_daily_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetDailyVolumes (historical)

Gets daily volumes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_daily_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_daily_volumes__historical: $@\n";
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

[**ARRAY[CurveDailyVolumeDTO]**](CurveDailyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_exchanges__historical**
> ARRAY[CurveExchangeDTO] curve_get_exchanges__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetExchanges (historical) 🔥

Gets exchanges.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_exchanges__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_exchanges__historical: $@\n";
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

[**ARRAY[CurveExchangeDTO]**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_fee_change_logs__historical**
> ARRAY[CurveFeeChangeLogDTO] curve_get_fee_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetFeeChangeLogs (historical)

Gets fee change logs.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_fee_change_logs__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_fee_change_logs__historical: $@\n";
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

[**ARRAY[CurveFeeChangeLogDTO]**](CurveFeeChangeLogDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauges__historical**
> ARRAY[CurveGaugeDTO] curve_get_gauges__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetGauges (historical)

Gets gauges.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_gauges__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauges__historical: $@\n";
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

[**ARRAY[CurveGaugeDTO]**](CurveGaugeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauges_deposits__historical**
> ARRAY[CurveGaugeDepositDTO] curve_get_gauges_deposits__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetGaugesDeposits (historical)

Gets gauges deposits.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_gauges_deposits__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauges_deposits__historical: $@\n";
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

[**ARRAY[CurveGaugeDepositDTO]**](CurveGaugeDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauges_liquidity__historical**
> ARRAY[CurveGaugeLiquidityDTO] curve_get_gauges_liquidity__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetGaugesLiquidity (historical)

Gets gauges liquidity.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_gauges_liquidity__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauges_liquidity__historical: $@\n";
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

[**ARRAY[CurveGaugeLiquidityDTO]**](CurveGaugeLiquidityDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauges_total_weights__historical**
> ARRAY[CurveGaugeTotalWeightDTO] curve_get_gauges_total_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetGaugesTotalWeights (historical)

Gets gauges total weights.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_gauges_total_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauges_total_weights__historical: $@\n";
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

[**ARRAY[CurveGaugeTotalWeightDTO]**](CurveGaugeTotalWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauges_types__historical**
> ARRAY[CurveGaugeTypeDTO] curve_get_gauges_types__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetGaugesTypes (historical)

Gets gauges types.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_gauges_types__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauges_types__historical: $@\n";
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

[**ARRAY[CurveGaugeTypeDTO]**](CurveGaugeTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauges_types_weights__historical**
> ARRAY[CurveGaugeTypeWeightDTO] curve_get_gauges_types_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetGaugesTypesWeights (historical)

Gets gauges types weights.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_gauges_types_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauges_types_weights__historical: $@\n";
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

[**ARRAY[CurveGaugeTypeWeightDTO]**](CurveGaugeTypeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauges_weights__historical**
> ARRAY[CurveGaugeWeightDTO] curve_get_gauges_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetGaugesWeights (historical)

Gets gauges weights.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_gauges_weights__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauges_weights__historical: $@\n";
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

[**ARRAY[CurveGaugeWeightDTO]**](CurveGaugeWeightDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauges_weights_votes__historical**
> ARRAY[CurveGaugeWeightVoteDTO] curve_get_gauges_weights_votes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetGaugesWeightsVotes (historical)

Gets gauges weights votes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_gauges_weights_votes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauges_weights_votes__historical: $@\n";
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

[**ARRAY[CurveGaugeWeightVoteDTO]**](CurveGaugeWeightVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_gauges_withdraw__historical**
> ARRAY[CurveGaugeWithdrawDTO] curve_get_gauges_withdraw__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetGaugesWithdraw (historical)

Gets gauges withdraws.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_gauges_withdraw__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_gauges_withdraw__historical: $@\n";
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

[**ARRAY[CurveGaugeWithdrawDTO]**](CurveGaugeWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_hourly_volumes__historical**
> ARRAY[CurveHourlyVolumeDTO] curve_get_hourly_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetHourlyVolumes (historical)

Gets hourly volumes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_hourly_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_hourly_volumes__historical: $@\n";
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

[**ARRAY[CurveHourlyVolumeDTO]**](CurveHourlyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_lp_tokens__historical**
> ARRAY[CurveLpTokenDTO] curve_get_lp_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetLpTokens (historical)

Gets lp tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_lp_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_lp_tokens__historical: $@\n";
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

[**ARRAY[CurveLpTokenDTO]**](CurveLpTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_pools__historical**
> ARRAY[CurvePoolDTO] curve_get_pools__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetPools (historical) 🔥

Gets pools.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_pools__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_pools__historical: $@\n";
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

[**ARRAY[CurvePoolDTO]**](CurvePoolDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_proposals__historical**
> ARRAY[CurveProposalDTO] curve_get_proposals__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetProposals (historical)

Gets proposals.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_proposals__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_proposals__historical: $@\n";
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

[**ARRAY[CurveProposalDTO]**](CurveProposalDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_proposals_votes__historical**
> ARRAY[CurveProposalVoteDTO] curve_get_proposals_votes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetProposalsVotes (historical)

Gets proposals votes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_proposals_votes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_proposals_votes__historical: $@\n";
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

[**ARRAY[CurveProposalVoteDTO]**](CurveProposalVoteDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_remove_liquidity_events__historical**
> ARRAY[CurveRemoveLiquidityEventDTO] curve_get_remove_liquidity_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetRemoveLiquidityEvents (historical)

Gets remove liquidity events.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_remove_liquidity_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_remove_liquidity_events__historical: $@\n";
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

[**ARRAY[CurveRemoveLiquidityEventDTO]**](CurveRemoveLiquidityEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_remove_liquidity_one_events__historical**
> ARRAY[CurveRemoveLiquidityOneEventDTO] curve_get_remove_liquidity_one_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetRemoveLiquidityOneEvents (historical)

Gets remove liquidity one events.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_remove_liquidity_one_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_remove_liquidity_one_events__historical: $@\n";
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

[**ARRAY[CurveRemoveLiquidityOneEventDTO]**](CurveRemoveLiquidityOneEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_system_states__historical**
> ARRAY[CurveSystemStateDTO] curve_get_system_states__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetSystemStates (historical)

Gets system states.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_system_states__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_system_states__historical: $@\n";
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

[**ARRAY[CurveSystemStateDTO]**](CurveSystemStateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_tokens__historical**
> ARRAY[CurveTokenDTO] curve_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id)

GetTokens (historical) 🔥

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $token_id = "token_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_tokens__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, token_id => $token_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_tokens__historical: $@\n";
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

[**ARRAY[CurveTokenDTO]**](CurveTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_transfer_ownership_events__historical**
> ARRAY[CurveTransferOwnershipEventDTO] curve_get_transfer_ownership_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetTransferOwnershipEvents (historical)

Gets transfer ownership events.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_transfer_ownership_events__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_transfer_ownership_events__historical: $@\n";
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

[**ARRAY[CurveTransferOwnershipEventDTO]**](CurveTransferOwnershipEventDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_underlying_coins__historical**
> ARRAY[CurveUnderlyingCoinDTO] curve_get_underlying_coins__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetUnderlyingCoins (historical)

Gets underlying coins.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_underlying_coins__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_underlying_coins__historical: $@\n";
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

[**ARRAY[CurveUnderlyingCoinDTO]**](CurveUnderlyingCoinDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_voting_apps__historical**
> ARRAY[CurveVotingAppDTO] curve_get_voting_apps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date)

GetVotingApps (historical)

Gets voting apps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 

eval {
    my $result = $api_instance->curve_get_voting_apps__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_voting_apps__historical: $@\n";
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

[**ARRAY[CurveVotingAppDTO]**](CurveVotingAppDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **curve_get_weekly_volumes__historical**
> ARRAY[CurveWeeklyVolumeDTO] curve_get_weekly_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id)

GetWeeklyVolumes (historical)

Gets weekly volumes.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::CurveApi;
my $api_instance = WWW::OpenAPIClient::CurveApi->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $pool_id = "pool_id_example"; # string | 

eval {
    my $result = $api_instance->curve_get_weekly_volumes__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CurveApi->curve_get_weekly_volumes__historical: $@\n";
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

[**ARRAY[CurveWeeklyVolumeDTO]**](CurveWeeklyVolumeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

