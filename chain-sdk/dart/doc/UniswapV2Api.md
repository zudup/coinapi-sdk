# openapi.api.UniswapV2Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsUniswapv2BundlesHistoricalGet**](UniswapV2Api.md#dappsuniswapv2bundleshistoricalget) | **GET** /dapps/uniswapv2/bundles/historical | 
[**dappsUniswapv2BurnsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2burnshistoricalget) | **GET** /dapps/uniswapv2/burns/historical | 
[**dappsUniswapv2DayDataHistoricalGet**](UniswapV2Api.md#dappsuniswapv2daydatahistoricalget) | **GET** /dapps/uniswapv2/dayData/historical | 
[**dappsUniswapv2FactoryHistoricalGet**](UniswapV2Api.md#dappsuniswapv2factoryhistoricalget) | **GET** /dapps/uniswapv2/factory/historical | 
[**dappsUniswapv2LiquidityPositionHistoricalGet**](UniswapV2Api.md#dappsuniswapv2liquiditypositionhistoricalget) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
[**dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2liquiditypositionsnapshotshistoricalget) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
[**dappsUniswapv2MintsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2mintshistoricalget) | **GET** /dapps/uniswapv2/mints/historical | 
[**dappsUniswapv2PoiHistoricalGet**](UniswapV2Api.md#dappsuniswapv2poihistoricalget) | **GET** /dapps/uniswapv2/poi/historical | 
[**dappsUniswapv2PoolDayDataHistoricalGet**](UniswapV2Api.md#dappsuniswapv2pooldaydatahistoricalget) | **GET** /dapps/uniswapv2/poolDayData/historical | 
[**dappsUniswapv2PoolHourDataHistoricalGet**](UniswapV2Api.md#dappsuniswapv2poolhourdatahistoricalget) | **GET** /dapps/uniswapv2/poolHourData/historical | 
[**dappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#dappsuniswapv2poolscurrentget) | **GET** /dapps/uniswapv2/pools/current | GetPools
[**dappsUniswapv2PoolsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2poolshistoricalget) | **GET** /dapps/uniswapv2/pools/historical | 
[**dappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#dappsuniswapv2swapscurrentget) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
[**dappsUniswapv2SwapsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2swapshistoricalget) | **GET** /dapps/uniswapv2/swaps/historical | 
[**dappsUniswapv2TokenDayDataHistoricalGet**](UniswapV2Api.md#dappsuniswapv2tokendaydatahistoricalget) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
[**dappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#dappsuniswapv2tokenscurrentget) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
[**dappsUniswapv2TokensHistoricalGet**](UniswapV2Api.md#dappsuniswapv2tokenshistoricalget) | **GET** /dapps/uniswapv2/tokens/historical | 
[**dappsUniswapv2TransactionsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2transactionshistoricalget) | **GET** /dapps/uniswapv2/transactions/historical | 
[**dappsUniswapv2UsersHistoricalGet**](UniswapV2Api.md#dappsuniswapv2usershistoricalget) | **GET** /dapps/uniswapv2/users/historical | 


# **dappsUniswapv2BundlesHistoricalGet**
> dappsUniswapv2BundlesHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsUniswapv2BundlesHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2BundlesHistoricalGet: $e\n');
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

# **dappsUniswapv2BurnsHistoricalGet**
> dappsUniswapv2BurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv2BurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2BurnsHistoricalGet: $e\n');
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

# **dappsUniswapv2DayDataHistoricalGet**
> dappsUniswapv2DayDataHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsUniswapv2DayDataHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2DayDataHistoricalGet: $e\n');
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

# **dappsUniswapv2FactoryHistoricalGet**
> dappsUniswapv2FactoryHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsUniswapv2FactoryHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2FactoryHistoricalGet: $e\n');
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

# **dappsUniswapv2LiquidityPositionHistoricalGet**
> dappsUniswapv2LiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv2LiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2LiquidityPositionHistoricalGet: $e\n');
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

# **dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**
> dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet: $e\n');
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

# **dappsUniswapv2MintsHistoricalGet**
> dappsUniswapv2MintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv2MintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2MintsHistoricalGet: $e\n');
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

# **dappsUniswapv2PoiHistoricalGet**
> dappsUniswapv2PoiHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsUniswapv2PoiHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2PoiHistoricalGet: $e\n');
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

# **dappsUniswapv2PoolDayDataHistoricalGet**
> dappsUniswapv2PoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv2PoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2PoolDayDataHistoricalGet: $e\n');
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

# **dappsUniswapv2PoolHourDataHistoricalGet**
> dappsUniswapv2PoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv2PoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2PoolHourDataHistoricalGet: $e\n');
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

# **dappsUniswapv2PoolsCurrentGet**
> List<PairV2DTO> dappsUniswapv2PoolsCurrentGet(filterPoolId)

GetPools

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv2PoolsCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2PoolsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PairV2DTO>**](PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv2PoolsHistoricalGet**
> dappsUniswapv2PoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv2PoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2PoolsHistoricalGet: $e\n');
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

# **dappsUniswapv2SwapsCurrentGet**
> List<SwapV2DTO> dappsUniswapv2SwapsCurrentGet()

GetSwaps

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.dappsUniswapv2SwapsCurrentGet();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2SwapsCurrentGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SwapV2DTO>**](SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv2SwapsHistoricalGet**
> dappsUniswapv2SwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv2SwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2SwapsHistoricalGet: $e\n');
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

# **dappsUniswapv2TokenDayDataHistoricalGet**
> dappsUniswapv2TokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.dappsUniswapv2TokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2TokenDayDataHistoricalGet: $e\n');
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

# **dappsUniswapv2TokensCurrentGet**
> List<TokenV2DTO> dappsUniswapv2TokensCurrentGet()

GetTokens

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.dappsUniswapv2TokensCurrentGet();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2TokensCurrentGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<TokenV2DTO>**](TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv2TokensHistoricalGet**
> dappsUniswapv2TokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.dappsUniswapv2TokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2TokensHistoricalGet: $e\n');
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

# **dappsUniswapv2TransactionsHistoricalGet**
> dappsUniswapv2TransactionsHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsUniswapv2TransactionsHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2TransactionsHistoricalGet: $e\n');
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

# **dappsUniswapv2UsersHistoricalGet**
> dappsUniswapv2UsersHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsUniswapv2UsersHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling UniswapV2Api->dappsUniswapv2UsersHistoricalGet: $e\n');
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

