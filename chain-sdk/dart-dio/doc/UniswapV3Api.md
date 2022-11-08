# openapi.api.UniswapV3Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV3GetBundlesCurrent**](UniswapV3Api.md#uniswapv3getbundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | GetBundles (current)
[**uniswapV3GetBundlesHistorical**](UniswapV3Api.md#uniswapv3getbundleshistorical) | **GET** /dapps/uniswapv3/bundles/historical | GetBundles (historical)
[**uniswapV3GetBurnsCurrent**](UniswapV3Api.md#uniswapv3getburnscurrent) | **GET** /dapps/uniswapv3/burns/current | GetBurns (current)
[**uniswapV3GetBurnsHistorical**](UniswapV3Api.md#uniswapv3getburnshistorical) | **GET** /dapps/uniswapv3/burns/historical | GetBurns (historical)
[**uniswapV3GetDayDataCurrent**](UniswapV3Api.md#uniswapv3getdaydatacurrent) | **GET** /dapps/uniswapv3/dayData/current | GetDayData (current)
[**uniswapV3GetDayDataHistorical**](UniswapV3Api.md#uniswapv3getdaydatahistorical) | **GET** /dapps/uniswapv3/dayData/historical | GetDayData (historical)
[**uniswapV3GetFactoryCurrent**](UniswapV3Api.md#uniswapv3getfactorycurrent) | **GET** /dapps/uniswapv3/factory/current | GetFactory (current)
[**uniswapV3GetFactoryHistorical**](UniswapV3Api.md#uniswapv3getfactoryhistorical) | **GET** /dapps/uniswapv3/factory/historical | GetFactory (historical)
[**uniswapV3GetMintsCurrent**](UniswapV3Api.md#uniswapv3getmintscurrent) | **GET** /dapps/uniswapv3/mints/current | GetMints (current)
[**uniswapV3GetMintsHistorical**](UniswapV3Api.md#uniswapv3getmintshistorical) | **GET** /dapps/uniswapv3/mints/historical | GetMints (historical)
[**uniswapV3GetPoolsCurrent**](UniswapV3Api.md#uniswapv3getpoolscurrent) | **GET** /dapps/uniswapv3/pools/current | GetPools (current) 🔥
[**uniswapV3GetPoolsDayDataCurrent**](UniswapV3Api.md#uniswapv3getpoolsdaydatacurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData (current)
[**uniswapV3GetPoolsDayDataHistorical**](UniswapV3Api.md#uniswapv3getpoolsdaydatahistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical | GetPoolsDayData (historical)
[**uniswapV3GetPoolsHistorical**](UniswapV3Api.md#uniswapv3getpoolshistorical) | **GET** /dapps/uniswapv3/pools/historical | GetPools (historical) 🔥
[**uniswapV3GetPoolsHourDataCurrent**](UniswapV3Api.md#uniswapv3getpoolshourdatacurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData (current)
[**uniswapV3GetPoolsHourDataHistorical**](UniswapV3Api.md#uniswapv3getpoolshourdatahistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical | GetPoolsHourData (historical)
[**uniswapV3GetPositionsCurrent**](UniswapV3Api.md#uniswapv3getpositionscurrent) | **GET** /dapps/uniswapv3/positions/current | GetPositions (current)
[**uniswapV3GetPositionsHistorical**](UniswapV3Api.md#uniswapv3getpositionshistorical) | **GET** /dapps/uniswapv3/positions/historical | GetPositions (historical)
[**uniswapV3GetPositionsSnaphotsHistorical**](UniswapV3Api.md#uniswapv3getpositionssnaphotshistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical | GetPositionsSnaphots (historical)
[**uniswapV3GetPositionsSnapshotsCurrent**](UniswapV3Api.md#uniswapv3getpositionssnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | GetPositionsSnapshots (current)
[**uniswapV3GetSwapsCurrent**](UniswapV3Api.md#uniswapv3getswapscurrent) | **GET** /dapps/uniswapv3/swaps/current | GetSwaps (current) 🔥
[**uniswapV3GetSwapsHistorical**](UniswapV3Api.md#uniswapv3getswapshistorical) | **GET** /dapps/uniswapv3/swaps/historical | GetSwaps (historical) 🔥
[**uniswapV3GetTicksCurrent**](UniswapV3Api.md#uniswapv3gettickscurrent) | **GET** /dapps/uniswapv3/ticks/current | GetTicks (current)
[**uniswapV3GetTicksDayDataCurrent**](UniswapV3Api.md#uniswapv3getticksdaydatacurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | GetTicksDayData (current)
[**uniswapV3GetTicksDayDataHistorical**](UniswapV3Api.md#uniswapv3getticksdaydatahistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical | GetTicksDayData (historical)
[**uniswapV3GetTicksHistorical**](UniswapV3Api.md#uniswapv3gettickshistorical) | **GET** /dapps/uniswapv3/ticks/historical | GetTicks (historical)
[**uniswapV3GetTokensCurrent**](UniswapV3Api.md#uniswapv3gettokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | GetTokens (current) 🔥
[**uniswapV3GetTokensDayDataCurrent**](UniswapV3Api.md#uniswapv3gettokensdaydatacurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | GetTokensDayData (current)
[**uniswapV3GetTokensDayDataHistorical**](UniswapV3Api.md#uniswapv3gettokensdaydatahistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical | GetTokensDayData (historical)
[**uniswapV3GetTokensHistorical**](UniswapV3Api.md#uniswapv3gettokenshistorical) | **GET** /dapps/uniswapv3/tokens/historical | GetTokens (historical) 🔥
[**uniswapV3GetTokensHourDataCurrent**](UniswapV3Api.md#uniswapv3gettokenshourdatacurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | GetTokensHourData (current)
[**uniswapV3GetTokensHourDataHistorical**](UniswapV3Api.md#uniswapv3gettokenshourdatahistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical | GetTokensHourData (historical)
[**uniswapV3GetTransactionsHistorical**](UniswapV3Api.md#uniswapv3gettransactionshistorical) | **GET** /dapps/uniswapv3/transactions/historical | GetTransactions (historical)


# **uniswapV3GetBundlesCurrent**
> BuiltList<UniswapV3BundleV3DTO> uniswapV3GetBundlesCurrent()

GetBundles (current)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3GetBundlesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetBundlesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3BundleV3DTO&gt;**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetBundlesHistorical**
> BuiltList<UniswapV3BundleV3DTO> uniswapV3GetBundlesHistorical(startBlock, endBlock, startDate, endDate)

GetBundles (historical)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.uniswapV3GetBundlesHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetBundlesHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3BundleV3DTO&gt;**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetBurnsCurrent**
> BuiltList<UniswapV3BurnV3DTO> uniswapV3GetBurnsCurrent(filterPoolId)

GetBurns (current)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV3GetBurnsCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetBurnsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3BurnV3DTO&gt;**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetBurnsHistorical**
> BuiltList<UniswapV3BurnV3DTO> uniswapV3GetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetBurns (historical)

Gets burns.

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
    final response = api.uniswapV3GetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetBurnsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3BurnV3DTO&gt;**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetDayDataCurrent**
> BuiltList<UniswapV3UniswapDayDataV3DTO> uniswapV3GetDayDataCurrent()

GetDayData (current)

Gets uniswapv3 day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3GetDayDataCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3UniswapDayDataV3DTO&gt;**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetDayDataHistorical**
> BuiltList<UniswapV3UniswapDayDataV3DTO> uniswapV3GetDayDataHistorical(startBlock, endBlock, startDate, endDate)

GetDayData (historical)

Gets uniswapv3 day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.uniswapV3GetDayDataHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetDayDataHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3UniswapDayDataV3DTO&gt;**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetFactoryCurrent**
> BuiltList<UniswapV3FactoryV3DTO> uniswapV3GetFactoryCurrent()

GetFactory (current)

Gets factory.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();

try {
    final response = api.uniswapV3GetFactoryCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetFactoryCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV3FactoryV3DTO&gt;**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetFactoryHistorical**
> BuiltList<UniswapV3FactoryV3DTO> uniswapV3GetFactoryHistorical(startBlock, endBlock, startDate, endDate)

GetFactory (historical)

Gets factory.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.uniswapV3GetFactoryHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetFactoryHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3FactoryV3DTO&gt;**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetMintsCurrent**
> BuiltList<UniswapV3MintV3DTO> uniswapV3GetMintsCurrent(filterPoolId)

GetMints (current)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV3GetMintsCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetMintsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3MintV3DTO&gt;**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetMintsHistorical**
> BuiltList<UniswapV3MintV3DTO> uniswapV3GetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetMints (historical)

Gets mints.

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
    final response = api.uniswapV3GetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetMintsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3MintV3DTO&gt;**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsCurrent**
> BuiltList<UniswapV3PoolV3DTO> uniswapV3GetPoolsCurrent(filterPoolId)

GetPools (current) 🔥

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV3GetPoolsCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PoolV3DTO&gt;**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsDayDataCurrent**
> BuiltList<UniswapV3PoolDayDataV3DTO> uniswapV3GetPoolsDayDataCurrent(filterPoolId)

GetPoolsDayData (current)

Gets pools day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV3GetPoolsDayDataCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolsDayDataCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PoolDayDataV3DTO&gt;**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsDayDataHistorical**
> BuiltList<UniswapV3PoolDayDataV3DTO> uniswapV3GetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPoolsDayData (historical)

Gets pools day data.

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
    final response = api.uniswapV3GetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolsDayDataHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3PoolDayDataV3DTO&gt;**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsHistorical**
> BuiltList<UniswapV3PoolV3DTO> uniswapV3GetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPools (historical) 🔥

Gets pools.

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
    final response = api.uniswapV3GetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3PoolV3DTO&gt;**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsHourDataCurrent**
> BuiltList<UniswapV3PoolHourDataV3DTO> uniswapV3GetPoolsHourDataCurrent(filterPoolId)

GetPoolsHourData (current)

Gets pools hour data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV3GetPoolsHourDataCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolsHourDataCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PoolHourDataV3DTO&gt;**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsHourDataHistorical**
> BuiltList<UniswapV3PoolHourDataV3DTO> uniswapV3GetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPoolsHourData (historical)

Gets pools hour data.

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
    final response = api.uniswapV3GetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolsHourDataHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3PoolHourDataV3DTO&gt;**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionsCurrent**
> BuiltList<UniswapV3PositionV3DTO> uniswapV3GetPositionsCurrent(filterPoolId)

GetPositions (current)

Gets positions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV3GetPositionsCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPositionsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PositionV3DTO&gt;**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionsHistorical**
> BuiltList<UniswapV3PositionV3DTO> uniswapV3GetPositionsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPositions (historical)

Gets positions.

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
    final response = api.uniswapV3GetPositionsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPositionsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3PositionV3DTO&gt;**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionsSnaphotsHistorical**
> BuiltList<UniswapV3PositionSnapshotV3DTO> uniswapV3GetPositionsSnaphotsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPositionsSnaphots (historical)

Gets positions snapshots.

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
    final response = api.uniswapV3GetPositionsSnaphotsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPositionsSnaphotsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3PositionSnapshotV3DTO&gt;**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionsSnapshotsCurrent**
> BuiltList<UniswapV3PositionSnapshotV3DTO> uniswapV3GetPositionsSnapshotsCurrent(filterPoolId)

GetPositionsSnapshots (current)

Gets positions snapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV3GetPositionsSnapshotsCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPositionsSnapshotsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3PositionSnapshotV3DTO&gt;**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetSwapsCurrent**
> BuiltList<UniswapV3SwapV3DTO> uniswapV3GetSwapsCurrent(filterPoolId)

GetSwaps (current) 🔥

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV3GetSwapsCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetSwapsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3SwapV3DTO&gt;**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetSwapsHistorical**
> BuiltList<UniswapV3SwapV3DTO> uniswapV3GetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetSwaps (historical) 🔥

Gets swaps.

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
    final response = api.uniswapV3GetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetSwapsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3SwapV3DTO&gt;**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTicksCurrent**
> BuiltList<UniswapV3TickV3DTO> uniswapV3GetTicksCurrent(filterPoolId)

GetTicks (current)

Gets ticks.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV3GetTicksCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTicksCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3TickV3DTO&gt;**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTicksDayDataCurrent**
> BuiltList<UniswapV3TickDayDataV3DTO> uniswapV3GetTicksDayDataCurrent(filterPoolId)

GetTicksDayData (current)

Gets ticks day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV3GetTicksDayDataCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTicksDayDataCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3TickDayDataV3DTO&gt;**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTicksDayDataHistorical**
> BuiltList<UniswapV3TickDayDataV3DTO> uniswapV3GetTicksDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetTicksDayData (historical)

Gets ticks day data.

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
    final response = api.uniswapV3GetTicksDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTicksDayDataHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3TickDayDataV3DTO&gt;**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTicksHistorical**
> BuiltList<UniswapV3TickV3DTO> uniswapV3GetTicksHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetTicks (historical)

Gets ticks.

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
    final response = api.uniswapV3GetTicksHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTicksHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3TickV3DTO&gt;**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensCurrent**
> BuiltList<UniswapV3TokenV3DTO> uniswapV3GetTokensCurrent(filterTokenId)

GetTokens (current) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterTokenId = filterTokenId_example; // String | 

try {
    final response = api.uniswapV3GetTokensCurrent(filterTokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokensCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3TokenV3DTO&gt;**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensDayDataCurrent**
> BuiltList<UniswapV3TokenV3DayDataDTO> uniswapV3GetTokensDayDataCurrent(filterTokenId)

GetTokensDayData (current)

Gets tokens day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterTokenId = filterTokenId_example; // String | 

try {
    final response = api.uniswapV3GetTokensDayDataCurrent(filterTokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokensDayDataCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensDayDataHistorical**
> BuiltList<UniswapV3TokenV3DayDataDTO> uniswapV3GetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokensDayData (historical)

Gets tokens day data.

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
    final response = api.uniswapV3GetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokensDayDataHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3TokenV3DayDataDTO&gt;**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensHistorical**
> BuiltList<UniswapV3TokenV3DTO> uniswapV3GetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokens (historical) 🔥

Gets tokens.

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
    final response = api.uniswapV3GetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokensHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3TokenV3DTO&gt;**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensHourDataCurrent**
> BuiltList<UniswapV3TokenHourDataV3DTO> uniswapV3GetTokensHourDataCurrent(filterTokenId)

GetTokensHourData (current)

Gets tokens hour data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final String filterTokenId = filterTokenId_example; // String | 

try {
    final response = api.uniswapV3GetTokensHourDataCurrent(filterTokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokensHourDataCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV3TokenHourDataV3DTO&gt;**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensHourDataHistorical**
> BuiltList<UniswapV3TokenHourDataV3DTO> uniswapV3GetTokensHourDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokensHourData (historical)

Gets tokens hour data.

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
    final response = api.uniswapV3GetTokensHourDataHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokensHourDataHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3TokenHourDataV3DTO&gt;**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTransactionsHistorical**
> BuiltList<UniswapV3TransactionV3DTO> uniswapV3GetTransactionsHistorical(startBlock, endBlock, startDate, endDate)

GetTransactions (historical)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV3Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.uniswapV3GetTransactionsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTransactionsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV3TransactionV3DTO&gt;**](UniswapV3TransactionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

