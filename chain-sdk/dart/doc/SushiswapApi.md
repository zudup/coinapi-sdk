# openapi.api.SushiswapApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsSushiswapBundlesHistoricalGet**](SushiswapApi.md#dappssushiswapbundleshistoricalget) | **GET** /dapps/sushiswap/bundles/historical | 
[**dappsSushiswapBurnsHistoricalGet**](SushiswapApi.md#dappssushiswapburnshistoricalget) | **GET** /dapps/sushiswap/burns/historical | 
[**dappsSushiswapDayDataHistoricalGet**](SushiswapApi.md#dappssushiswapdaydatahistoricalget) | **GET** /dapps/sushiswap/dayData/historical | 
[**dappsSushiswapFactoryHistoricalGet**](SushiswapApi.md#dappssushiswapfactoryhistoricalget) | **GET** /dapps/sushiswap/factory/historical | 
[**dappsSushiswapHourDataHistoricalGet**](SushiswapApi.md#dappssushiswaphourdatahistoricalget) | **GET** /dapps/sushiswap/hourData/historical | 
[**dappsSushiswapLiquidityPositionHistoricalGet**](SushiswapApi.md#dappssushiswapliquiditypositionhistoricalget) | **GET** /dapps/sushiswap/liquidityPosition/historical | 
[**dappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](SushiswapApi.md#dappssushiswapliquiditypositionsnapshotshistoricalget) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | 
[**dappsSushiswapMintsHistoricalGet**](SushiswapApi.md#dappssushiswapmintshistoricalget) | **GET** /dapps/sushiswap/mints/historical | 
[**dappsSushiswapPoolDayDataHistoricalGet**](SushiswapApi.md#dappssushiswappooldaydatahistoricalget) | **GET** /dapps/sushiswap/poolDayData/historical | 
[**dappsSushiswapPoolHourDataHistoricalGet**](SushiswapApi.md#dappssushiswappoolhourdatahistoricalget) | **GET** /dapps/sushiswap/poolHourData/historical | 
[**dappsSushiswapPoolsCurrentGet**](SushiswapApi.md#dappssushiswappoolscurrentget) | **GET** /dapps/sushiswap/pools/current | GetPools
[**dappsSushiswapPoolsHistoricalGet**](SushiswapApi.md#dappssushiswappoolshistoricalget) | **GET** /dapps/sushiswap/pools/historical | GetPools
[**dappsSushiswapSwapsCurrentGet**](SushiswapApi.md#dappssushiswapswapscurrentget) | **GET** /dapps/sushiswap/swaps/current | GetSwaps
[**dappsSushiswapSwapsHistoricalGet**](SushiswapApi.md#dappssushiswapswapshistoricalget) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**dappsSushiswapTokenDayDataHistoricalGet**](SushiswapApi.md#dappssushiswaptokendaydatahistoricalget) | **GET** /dapps/sushiswap/tokenDayData/historical | 
[**dappsSushiswapTokensCurrentGet**](SushiswapApi.md#dappssushiswaptokenscurrentget) | **GET** /dapps/sushiswap/tokens/current | GetTokens
[**dappsSushiswapTokensHistoricalGet**](SushiswapApi.md#dappssushiswaptokenshistoricalget) | **GET** /dapps/sushiswap/tokens/historical | GetTokens
[**dappsSushiswapTransactionsHistoricalGet**](SushiswapApi.md#dappssushiswaptransactionshistoricalget) | **GET** /dapps/sushiswap/transactions/historical | 
[**dappsSushiswapUsersHistoricalGet**](SushiswapApi.md#dappssushiswapusershistoricalget) | **GET** /dapps/sushiswap/users/historical | 


# **dappsSushiswapBundlesHistoricalGet**
> dappsSushiswapBundlesHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsSushiswapBundlesHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapBundlesHistoricalGet: $e\n');
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

# **dappsSushiswapBurnsHistoricalGet**
> dappsSushiswapBurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsSushiswapBurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapBurnsHistoricalGet: $e\n');
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

# **dappsSushiswapDayDataHistoricalGet**
> dappsSushiswapDayDataHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsSushiswapDayDataHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapDayDataHistoricalGet: $e\n');
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

# **dappsSushiswapFactoryHistoricalGet**
> dappsSushiswapFactoryHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsSushiswapFactoryHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapFactoryHistoricalGet: $e\n');
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

# **dappsSushiswapHourDataHistoricalGet**
> dappsSushiswapHourDataHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsSushiswapHourDataHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapHourDataHistoricalGet: $e\n');
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

# **dappsSushiswapLiquidityPositionHistoricalGet**
> dappsSushiswapLiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsSushiswapLiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapLiquidityPositionHistoricalGet: $e\n');
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

# **dappsSushiswapLiquidityPositionSnapshotsHistoricalGet**
> dappsSushiswapLiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsSushiswapLiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapLiquidityPositionSnapshotsHistoricalGet: $e\n');
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

# **dappsSushiswapMintsHistoricalGet**
> dappsSushiswapMintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsSushiswapMintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapMintsHistoricalGet: $e\n');
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

# **dappsSushiswapPoolDayDataHistoricalGet**
> dappsSushiswapPoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsSushiswapPoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapPoolDayDataHistoricalGet: $e\n');
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

# **dappsSushiswapPoolHourDataHistoricalGet**
> dappsSushiswapPoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsSushiswapPoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapPoolHourDataHistoricalGet: $e\n');
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

# **dappsSushiswapPoolsCurrentGet**
> List<PairDTO> dappsSushiswapPoolsCurrentGet()

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.dappsSushiswapPoolsCurrentGet();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapPoolsCurrentGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<PairDTO>**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsSushiswapPoolsHistoricalGet**
> List<PairDTO> dappsSushiswapPoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)

GetPools

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dappsSushiswapPoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapPoolsHistoricalGet: $e\n');
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

[**List<PairDTO>**](PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsSushiswapSwapsCurrentGet**
> List<SwapDTO> dappsSushiswapSwapsCurrentGet()

GetSwaps

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.dappsSushiswapSwapsCurrentGet();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapSwapsCurrentGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SwapDTO>**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsSushiswapSwapsHistoricalGet**
> List<SwapDTO> dappsSushiswapSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)

GetSwaps (historical)

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dappsSushiswapSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapSwapsHistoricalGet: $e\n');
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

[**List<SwapDTO>**](SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsSushiswapTokenDayDataHistoricalGet**
> dappsSushiswapTokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.dappsSushiswapTokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapTokenDayDataHistoricalGet: $e\n');
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

# **dappsSushiswapTokensCurrentGet**
> List<TokenDTO> dappsSushiswapTokensCurrentGet()

GetTokens

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.dappsSushiswapTokensCurrentGet();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapTokensCurrentGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<TokenDTO>**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsSushiswapTokensHistoricalGet**
> List<TokenDTO> dappsSushiswapTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)

GetTokens

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    final result = api_instance.dappsSushiswapTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapTokensHistoricalGet: $e\n');
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

[**List<TokenDTO>**](TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsSushiswapTransactionsHistoricalGet**
> dappsSushiswapTransactionsHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsSushiswapTransactionsHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapTransactionsHistoricalGet: $e\n');
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

# **dappsSushiswapUsersHistoricalGet**
> dappsSushiswapUsersHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsSushiswapUsersHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling SushiswapApi->dappsSushiswapUsersHistoricalGet: $e\n');
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

