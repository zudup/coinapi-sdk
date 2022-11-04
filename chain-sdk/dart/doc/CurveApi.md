# openapi.api.CurveApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsCurveAccountsHistoricalGet**](CurveApi.md#dappscurveaccountshistoricalget) | **GET** /dapps/curve/accounts/historical | 
[**dappsCurveAddLiquidityEventHistoricalGet**](CurveApi.md#dappscurveaddliquidityeventhistoricalget) | **GET** /dapps/curve/addLiquidityEvent/historical | 
[**dappsCurveAdminFeeChangeLogHistoricalGet**](CurveApi.md#dappscurveadminfeechangeloghistoricalget) | **GET** /dapps/curve/adminFeeChangeLog/historical | 
[**dappsCurveAmplificationCoeffChangeLogHistoricalGet**](CurveApi.md#dappscurveamplificationcoeffchangeloghistoricalget) | **GET** /dapps/curve/amplificationCoeffChangeLog/historical | 
[**dappsCurveCoinsHistoricalGet**](CurveApi.md#dappscurvecoinshistoricalget) | **GET** /dapps/curve/coins/historical | 
[**dappsCurveContractsHistoricalGet**](CurveApi.md#dappscurvecontractshistoricalget) | **GET** /dapps/curve/contracts/historical | 
[**dappsCurveContractsVersionHistoricalGet**](CurveApi.md#dappscurvecontractsversionhistoricalget) | **GET** /dapps/curve/contractsVersion/historical | 
[**dappsCurveDailyVolumeHistoricalGet**](CurveApi.md#dappscurvedailyvolumehistoricalget) | **GET** /dapps/curve/dailyVolume/historical | 
[**dappsCurveFeeChangeLogHistoricalGet**](CurveApi.md#dappscurvefeechangeloghistoricalget) | **GET** /dapps/curve/feeChangeLog/historical | 
[**dappsCurveGaugeDepositHistoricalGet**](CurveApi.md#dappscurvegaugedeposithistoricalget) | **GET** /dapps/curve/gaugeDeposit/historical | 
[**dappsCurveGaugeHistoricalGet**](CurveApi.md#dappscurvegaugehistoricalget) | **GET** /dapps/curve/gauge/historical | 
[**dappsCurveGaugeLiquidityHistoricalGet**](CurveApi.md#dappscurvegaugeliquidityhistoricalget) | **GET** /dapps/curve/gaugeLiquidity/historical | 
[**dappsCurveGaugeTotalWeightHistoricalGet**](CurveApi.md#dappscurvegaugetotalweighthistoricalget) | **GET** /dapps/curve/gaugeTotalWeight/historical | 
[**dappsCurveGaugeTypeHistoricalGet**](CurveApi.md#dappscurvegaugetypehistoricalget) | **GET** /dapps/curve/gaugeType/historical | 
[**dappsCurveGaugeTypeWeightHistoricalGet**](CurveApi.md#dappscurvegaugetypeweighthistoricalget) | **GET** /dapps/curve/gaugeTypeWeight/historical | 
[**dappsCurveGaugeWeightHistoricalGet**](CurveApi.md#dappscurvegaugeweighthistoricalget) | **GET** /dapps/curve/gaugeWeight/historical | 
[**dappsCurveGaugeWeightVoteHistoricalGet**](CurveApi.md#dappscurvegaugeweightvotehistoricalget) | **GET** /dapps/curve/gaugeWeightVote/historical | 
[**dappsCurveGaugeWithdrawHistoricalGet**](CurveApi.md#dappscurvegaugewithdrawhistoricalget) | **GET** /dapps/curve/gaugeWithdraw/historical | 
[**dappsCurveHourlyVolumeHistoricalGet**](CurveApi.md#dappscurvehourlyvolumehistoricalget) | **GET** /dapps/curve/hourlyVolume/historical | 
[**dappsCurveLpTokenHistoricalGet**](CurveApi.md#dappscurvelptokenhistoricalget) | **GET** /dapps/curve/lpToken/historical | 
[**dappsCurvePoolsHistoricalGet**](CurveApi.md#dappscurvepoolshistoricalget) | **GET** /dapps/curve/pools/historical | 
[**dappsCurveProposalsHistoricalGet**](CurveApi.md#dappscurveproposalshistoricalget) | **GET** /dapps/curve/proposals/historical | 
[**dappsCurveProposalsVoteHistoricalGet**](CurveApi.md#dappscurveproposalsvotehistoricalget) | **GET** /dapps/curve/proposalsVote/historical | 
[**dappsCurveRemoveLiquidityEventHistoricalGet**](CurveApi.md#dappscurveremoveliquidityeventhistoricalget) | **GET** /dapps/curve/removeLiquidityEvent/historical | 
[**dappsCurveRemoveLiquidityOneEventHistoricalGet**](CurveApi.md#dappscurveremoveliquidityoneeventhistoricalget) | **GET** /dapps/curve/removeLiquidityOneEvent/historical | 
[**dappsCurveSwapsHistoricalGet**](CurveApi.md#dappscurveswapshistoricalget) | **GET** /dapps/curve/swaps/historical | 
[**dappsCurveSystemStateHistoricalGet**](CurveApi.md#dappscurvesystemstatehistoricalget) | **GET** /dapps/curve/systemState/historical | 
[**dappsCurveTokensHistoricalGet**](CurveApi.md#dappscurvetokenshistoricalget) | **GET** /dapps/curve/tokens/historical | 
[**dappsCurveTransferOwnershipEventHistoricalGet**](CurveApi.md#dappscurvetransferownershipeventhistoricalget) | **GET** /dapps/curve/transferOwnershipEvent/historical | 
[**dappsCurveUnderlyingCoinHistoricalGet**](CurveApi.md#dappscurveunderlyingcoinhistoricalget) | **GET** /dapps/curve/underlyingCoin/historical | 
[**dappsCurveVotingAppHistoricalGet**](CurveApi.md#dappscurvevotingapphistoricalget) | **GET** /dapps/curve/votingApp/historical | 
[**dappsCurveWeeklyVolumeHistoricalGet**](CurveApi.md#dappscurveweeklyvolumehistoricalget) | **GET** /dapps/curve/weeklyVolume/historical | 


# **dappsCurveAccountsHistoricalGet**
> dappsCurveAccountsHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveAccountsHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveAccountsHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveAddLiquidityEventHistoricalGet**
> dappsCurveAddLiquidityEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveAddLiquidityEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveAddLiquidityEventHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveAdminFeeChangeLogHistoricalGet**
> dappsCurveAdminFeeChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveAdminFeeChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveAdminFeeChangeLogHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveAmplificationCoeffChangeLogHistoricalGet**
> dappsCurveAmplificationCoeffChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveAmplificationCoeffChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveAmplificationCoeffChangeLogHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveCoinsHistoricalGet**
> dappsCurveCoinsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveCoinsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveCoinsHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveContractsHistoricalGet**
> dappsCurveContractsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveContractsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveContractsHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveContractsVersionHistoricalGet**
> dappsCurveContractsVersionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveContractsVersionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveContractsVersionHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveDailyVolumeHistoricalGet**
> dappsCurveDailyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveDailyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveDailyVolumeHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveFeeChangeLogHistoricalGet**
> dappsCurveFeeChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveFeeChangeLogHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveFeeChangeLogHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveGaugeDepositHistoricalGet**
> dappsCurveGaugeDepositHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveGaugeDepositHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveGaugeDepositHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveGaugeHistoricalGet**
> dappsCurveGaugeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveGaugeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveGaugeHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveGaugeLiquidityHistoricalGet**
> dappsCurveGaugeLiquidityHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveGaugeLiquidityHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveGaugeLiquidityHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveGaugeTotalWeightHistoricalGet**
> dappsCurveGaugeTotalWeightHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveGaugeTotalWeightHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveGaugeTotalWeightHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveGaugeTypeHistoricalGet**
> dappsCurveGaugeTypeHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveGaugeTypeHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveGaugeTypeHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveGaugeTypeWeightHistoricalGet**
> dappsCurveGaugeTypeWeightHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveGaugeTypeWeightHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveGaugeTypeWeightHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveGaugeWeightHistoricalGet**
> dappsCurveGaugeWeightHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveGaugeWeightHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveGaugeWeightHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveGaugeWeightVoteHistoricalGet**
> dappsCurveGaugeWeightVoteHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveGaugeWeightVoteHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveGaugeWeightVoteHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveGaugeWithdrawHistoricalGet**
> dappsCurveGaugeWithdrawHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveGaugeWithdrawHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveGaugeWithdrawHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveHourlyVolumeHistoricalGet**
> dappsCurveHourlyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveHourlyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveHourlyVolumeHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveLpTokenHistoricalGet**
> dappsCurveLpTokenHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveLpTokenHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveLpTokenHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurvePoolsHistoricalGet**
> dappsCurvePoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurvePoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurvePoolsHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveProposalsHistoricalGet**
> dappsCurveProposalsHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveProposalsHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveProposalsHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveProposalsVoteHistoricalGet**
> dappsCurveProposalsVoteHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveProposalsVoteHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveProposalsVoteHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveRemoveLiquidityEventHistoricalGet**
> dappsCurveRemoveLiquidityEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveRemoveLiquidityEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveRemoveLiquidityEventHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveRemoveLiquidityOneEventHistoricalGet**
> dappsCurveRemoveLiquidityOneEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveRemoveLiquidityOneEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveRemoveLiquidityOneEventHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveSwapsHistoricalGet**
> dappsCurveSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveSwapsHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveSystemStateHistoricalGet**
> dappsCurveSystemStateHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveSystemStateHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveSystemStateHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveTokensHistoricalGet**
> dappsCurveTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.dappsCurveTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveTokensHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **tokenId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveTransferOwnershipEventHistoricalGet**
> dappsCurveTransferOwnershipEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveTransferOwnershipEventHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveTransferOwnershipEventHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveUnderlyingCoinHistoricalGet**
> dappsCurveUnderlyingCoinHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveUnderlyingCoinHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveUnderlyingCoinHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveVotingAppHistoricalGet**
> dappsCurveVotingAppHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsCurveVotingAppHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveVotingAppHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsCurveWeeklyVolumeHistoricalGet**
> dappsCurveWeeklyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CurveApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsCurveWeeklyVolumeHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling CurveApi->dappsCurveWeeklyVolumeHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **poolId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

