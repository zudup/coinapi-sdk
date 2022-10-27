# openapi.api.UniswapV3Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#dappsuniswapv3bundlecurrentget) | **GET** /dapps/uniswapv3/bundle/current | GetBundles
[**dappsUniswapv3BundlesHistoricalGet**](UniswapV3Api.md#dappsuniswapv3bundleshistoricalget) | **GET** /dapps/uniswapv3/bundles/historical | 
[**dappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#dappsuniswapv3burnscurrentget) | **GET** /dapps/uniswapv3/burns/current | GetBurns
[**dappsUniswapv3BurnsHistoricalGet**](UniswapV3Api.md#dappsuniswapv3burnshistoricalget) | **GET** /dapps/uniswapv3/burns/historical | 
[**dappsUniswapv3DayDataHistoricalGet**](UniswapV3Api.md#dappsuniswapv3daydatahistoricalget) | **GET** /dapps/uniswapv3/dayData/historical | 
[**dappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#dappsuniswapv3factorycurrentget) | **GET** /dapps/uniswapv3/factory/current | GetFactory
[**dappsUniswapv3FactoryHistoricalGet**](UniswapV3Api.md#dappsuniswapv3factoryhistoricalget) | **GET** /dapps/uniswapv3/factory/historical | 
[**dappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#dappsuniswapv3mintscurrentget) | **GET** /dapps/uniswapv3/mints/current | GetMints
[**dappsUniswapv3MintsHistoricalGet**](UniswapV3Api.md#dappsuniswapv3mintshistoricalget) | **GET** /dapps/uniswapv3/mints/historical | 
[**dappsUniswapv3PoiHistoricalGet**](UniswapV3Api.md#dappsuniswapv3poihistoricalget) | **GET** /dapps/uniswapv3/poi/historical | 
[**dappsUniswapv3PoolDayDataHistoricalGet**](UniswapV3Api.md#dappsuniswapv3pooldaydatahistoricalget) | **GET** /dapps/uniswapv3/poolDayData/historical | 
[**dappsUniswapv3PoolHourDataHistoricalGet**](UniswapV3Api.md#dappsuniswapv3poolhourdatahistoricalget) | **GET** /dapps/uniswapv3/poolHourData/historical | 
[**dappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#dappsuniswapv3poolscurrentget) | **GET** /dapps/uniswapv3/pools/current | GetPools
[**dappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#dappsuniswapv3poolsdaydatacurrentget) | **GET** /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**dappsUniswapv3PoolsHistoricalGet**](UniswapV3Api.md#dappsuniswapv3poolshistoricalget) | **GET** /dapps/uniswapv3/pools/historical | 
[**dappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#dappsuniswapv3poolshourdatacurrentget) | **GET** /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**dappsUniswapv3PositionSnapshotHistoricalGet**](UniswapV3Api.md#dappsuniswapv3positionsnapshothistoricalget) | **GET** /dapps/uniswapv3/positionSnapshot/historical | 
[**dappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#dappsuniswapv3positionsnapshotscurrentget) | **GET** /dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**dappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#dappsuniswapv3positionscurrentget) | **GET** /dapps/uniswapv3/positions/current | GetPositions
[**dappsUniswapv3PositionsHistoricalGet**](UniswapV3Api.md#dappsuniswapv3positionshistoricalget) | **GET** /dapps/uniswapv3/positions/historical | 
[**dappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#dappsuniswapv3swapscurrentget) | **GET** /dapps/uniswapv3/swaps/current | GetSwaps
[**dappsUniswapv3SwapsHistoricalGet**](UniswapV3Api.md#dappsuniswapv3swapshistoricalget) | **GET** /dapps/uniswapv3/swaps/historical | 
[**dappsUniswapv3TickDayDataHistoricalGet**](UniswapV3Api.md#dappsuniswapv3tickdaydatahistoricalget) | **GET** /dapps/uniswapv3/tickDayData/historical | 
[**dappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#dappsuniswapv3tickscurrentget) | **GET** /dapps/uniswapv3/ticks/current | GetTicks
[**dappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#dappsuniswapv3ticksdaydatacurrentget) | **GET** /dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**dappsUniswapv3TicksHistoricalGet**](UniswapV3Api.md#dappsuniswapv3tickshistoricalget) | **GET** /dapps/uniswapv3/ticks/historical | 
[**dappsUniswapv3TokenDayDataHistoricalGet**](UniswapV3Api.md#dappsuniswapv3tokendaydatahistoricalget) | **GET** /dapps/uniswapv3/tokenDayData/historical | 
[**dappsUniswapv3TokenHourDataHistoricalGet**](UniswapV3Api.md#dappsuniswapv3tokenhourdatahistoricalget) | **GET** /dapps/uniswapv3/tokenHourData/historical | 
[**dappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#dappsuniswapv3tokenscurrentget) | **GET** /dapps/uniswapv3/tokens/current | GetTokens
[**dappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#dappsuniswapv3tokensdaydatacurrentget) | **GET** /dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**dappsUniswapv3TokensHistoricalGet**](UniswapV3Api.md#dappsuniswapv3tokenshistoricalget) | **GET** /dapps/uniswapv3/tokens/historical | 
[**dappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#dappsuniswapv3tokenshourdatacurrentget) | **GET** /dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**dappsUniswapv3TransactionsHistoricalGet**](UniswapV3Api.md#dappsuniswapv3transactionshistoricalget) | **GET** /dapps/uniswapv3/transactions/historical | 
[**dappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#dappsuniswapv3uniswapdaydatacurrentget) | **GET** /dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


# **dappsUniswapv3BundleCurrentGet**
> BuiltList<BundleV3DTO> dappsUniswapv3BundleCurrentGet()

GetBundles

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.dappsUniswapv3BundleCurrentGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3BundleCurrentGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;BundleV3DTO&gt;**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3BundlesHistoricalGet**
> dappsUniswapv3BundlesHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsUniswapv3BundlesHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3BundlesHistoricalGet: $e\n');
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

# **dappsUniswapv3BurnsCurrentGet**
> BuiltList<BurnV3DTO> dappsUniswapv3BurnsCurrentGet(filterPoolId)

GetBurns

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final response = api.dappsUniswapv3BurnsCurrentGet(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3BurnsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BuiltList&lt;BurnV3DTO&gt;**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3BurnsHistoricalGet**
> dappsUniswapv3BurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.dappsUniswapv3BurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3BurnsHistoricalGet: $e\n');
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

# **dappsUniswapv3DayDataHistoricalGet**
> dappsUniswapv3DayDataHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsUniswapv3DayDataHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3DayDataHistoricalGet: $e\n');
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

# **dappsUniswapv3FactoryCurrentGet**
> BuiltList<FactoryV3DTO> dappsUniswapv3FactoryCurrentGet(chainId)

GetFactory

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String chainId = chainId_example; // String | 

try {
    final response = api.dappsUniswapv3FactoryCurrentGet(chainId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3FactoryCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 

### Return type

[**BuiltList&lt;FactoryV3DTO&gt;**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3FactoryHistoricalGet**
> dappsUniswapv3FactoryHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsUniswapv3FactoryHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3FactoryHistoricalGet: $e\n');
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

# **dappsUniswapv3MintsCurrentGet**
> BuiltList<MintV3DTO> dappsUniswapv3MintsCurrentGet(filterPoolId)

GetMints

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final response = api.dappsUniswapv3MintsCurrentGet(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3MintsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BuiltList&lt;MintV3DTO&gt;**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3MintsHistoricalGet**
> dappsUniswapv3MintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.dappsUniswapv3MintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3MintsHistoricalGet: $e\n');
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

# **dappsUniswapv3PoiHistoricalGet**
> dappsUniswapv3PoiHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsUniswapv3PoiHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PoiHistoricalGet: $e\n');
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

# **dappsUniswapv3PoolDayDataHistoricalGet**
> dappsUniswapv3PoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.dappsUniswapv3PoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PoolDayDataHistoricalGet: $e\n');
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

# **dappsUniswapv3PoolHourDataHistoricalGet**
> dappsUniswapv3PoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.dappsUniswapv3PoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PoolHourDataHistoricalGet: $e\n');
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

# **dappsUniswapv3PoolsCurrentGet**
> BuiltList<PoolV3DTO> dappsUniswapv3PoolsCurrentGet(filterPoolId)

GetPools

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final response = api.dappsUniswapv3PoolsCurrentGet(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PoolsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BuiltList&lt;PoolV3DTO&gt;**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3PoolsDayDataCurrentGet**
> BuiltList<PoolDayDataV3DTO> dappsUniswapv3PoolsDayDataCurrentGet(filterPoolId)

GetPoolsDayData

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final response = api.dappsUniswapv3PoolsDayDataCurrentGet(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PoolsDayDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BuiltList&lt;PoolDayDataV3DTO&gt;**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3PoolsHistoricalGet**
> dappsUniswapv3PoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.dappsUniswapv3PoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PoolsHistoricalGet: $e\n');
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

# **dappsUniswapv3PoolsHourDataCurrentGet**
> BuiltList<PoolHourDataV3DTO> dappsUniswapv3PoolsHourDataCurrentGet(filterPoolId)

GetPoolsHourData

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final response = api.dappsUniswapv3PoolsHourDataCurrentGet(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PoolsHourDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BuiltList&lt;PoolHourDataV3DTO&gt;**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3PositionSnapshotHistoricalGet**
> dappsUniswapv3PositionSnapshotHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.dappsUniswapv3PositionSnapshotHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PositionSnapshotHistoricalGet: $e\n');
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

# **dappsUniswapv3PositionSnapshotsCurrentGet**
> BuiltList<PositionSnapshotV3DTO> dappsUniswapv3PositionSnapshotsCurrentGet(filterPoolId)

GetPositionSnapshot

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final response = api.dappsUniswapv3PositionSnapshotsCurrentGet(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PositionSnapshotsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BuiltList&lt;PositionSnapshotV3DTO&gt;**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3PositionsCurrentGet**
> BuiltList<PositionV3DTO> dappsUniswapv3PositionsCurrentGet(filterPoolId)

GetPositions

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final response = api.dappsUniswapv3PositionsCurrentGet(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PositionsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BuiltList&lt;PositionV3DTO&gt;**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3PositionsHistoricalGet**
> dappsUniswapv3PositionsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.dappsUniswapv3PositionsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PositionsHistoricalGet: $e\n');
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

# **dappsUniswapv3SwapsCurrentGet**
> BuiltList<SwapV3DTO> dappsUniswapv3SwapsCurrentGet(filterPoolId)

GetSwaps

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final response = api.dappsUniswapv3SwapsCurrentGet(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3SwapsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BuiltList&lt;SwapV3DTO&gt;**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3SwapsHistoricalGet**
> dappsUniswapv3SwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.dappsUniswapv3SwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3SwapsHistoricalGet: $e\n');
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

# **dappsUniswapv3TickDayDataHistoricalGet**
> dappsUniswapv3TickDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.dappsUniswapv3TickDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TickDayDataHistoricalGet: $e\n');
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

# **dappsUniswapv3TicksCurrentGet**
> BuiltList<TickV3DTO> dappsUniswapv3TicksCurrentGet(filterPoolId)

GetTicks

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final response = api.dappsUniswapv3TicksCurrentGet(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TicksCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BuiltList&lt;TickV3DTO&gt;**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3TicksDayDataCurrentGet**
> BuiltList<TickDayDataV3DTO> dappsUniswapv3TicksDayDataCurrentGet(filterPoolId)

GetTicksDayData

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final response = api.dappsUniswapv3TicksDayDataCurrentGet(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TicksDayDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**BuiltList&lt;TickDayDataV3DTO&gt;**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3TicksHistoricalGet**
> dappsUniswapv3TicksHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.dappsUniswapv3TicksHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TicksHistoricalGet: $e\n');
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

# **dappsUniswapv3TokenDayDataHistoricalGet**
> dappsUniswapv3TokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.dappsUniswapv3TokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TokenDayDataHistoricalGet: $e\n');
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

# **dappsUniswapv3TokenHourDataHistoricalGet**
> dappsUniswapv3TokenHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.dappsUniswapv3TokenHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TokenHourDataHistoricalGet: $e\n');
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

# **dappsUniswapv3TokensCurrentGet**
> BuiltList<TokenV3DTO> dappsUniswapv3TokensCurrentGet(filterTokenId)

GetTokens

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterTokenId = filterTokenId_example; // String | 

try {
    final response = api.dappsUniswapv3TokensCurrentGet(filterTokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TokensCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;TokenV3DTO&gt;**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3TokensDayDataCurrentGet**
> BuiltList<TokenV3DayDataDTO> dappsUniswapv3TokensDayDataCurrentGet(filterTokenId)

GetTokensDayData

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterTokenId = filterTokenId_example; // String | 

try {
    final response = api.dappsUniswapv3TokensDayDataCurrentGet(filterTokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TokensDayDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;TokenV3DayDataDTO&gt;**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3TokensHistoricalGet**
> dappsUniswapv3TokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    api.dappsUniswapv3TokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TokensHistoricalGet: $e\n');
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

# **dappsUniswapv3TokensHourDataCurrentGet**
> BuiltList<TokenHourDataV3DTO> dappsUniswapv3TokensHourDataCurrentGet(filterTokenId)

GetTokensHourData

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterTokenId = filterTokenId_example; // String | 

try {
    final response = api.dappsUniswapv3TokensHourDataCurrentGet(filterTokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TokensHourDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;TokenHourDataV3DTO&gt;**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3TransactionsHistoricalGet**
> dappsUniswapv3TransactionsHistoricalGet(startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api.dappsUniswapv3TransactionsHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TransactionsHistoricalGet: $e\n');
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

# **dappsUniswapv3UniswapDayDataCurrentGet**
> BuiltList<UniswapDayDataV3DTO> dappsUniswapv3UniswapDayDataCurrentGet()

GetUniswapDayData

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.dappsUniswapv3UniswapDayDataCurrentGet();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3UniswapDayDataCurrentGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapDayDataV3DTO&gt;**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

