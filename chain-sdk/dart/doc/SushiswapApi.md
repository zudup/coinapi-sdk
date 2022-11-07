# openapi.api.SushiswapApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | GetBundles (historical)
[**sushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | GetBurns (historical)
[**sushiswapGetDayDataHistorical**](SushiswapApi.md#sushiswapgetdaydatahistorical) | **GET** /dapps/sushiswap/dayData/historical | GetDayData (historical)
[**sushiswapGetFactoryHistorical**](SushiswapApi.md#sushiswapgetfactoryhistorical) | **GET** /dapps/sushiswap/factory/historical | GetFactory (historical)
[**sushiswapGetHourDataHistorical**](SushiswapApi.md#sushiswapgethourdatahistorical) | **GET** /dapps/sushiswap/hourData/historical | GetHourData (historical)
[**sushiswapGetLiquidityPositionHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionhistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
[**sushiswapGetLiquidityPositionSnapshotHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionsnapshothistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
[**sushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | GetMints (historical)
[**sushiswapGetPoolsCurrent**](SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | GetPools (current)
[**sushiswapGetPoolsDayDataHistorical**](SushiswapApi.md#sushiswapgetpoolsdaydatahistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
[**sushiswapGetPoolsHistorical**](SushiswapApi.md#sushiswapgetpoolshistorical) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical)
[**sushiswapGetPoolsHourDataHistorical**](SushiswapApi.md#sushiswapgetpoolshourdatahistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
[**sushiswapGetSwapsCurrent**](SushiswapApi.md#sushiswapgetswapscurrent) | **GET** /dapps/sushiswap/swaps/current | GetSwaps (current)
[**sushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
[**sushiswapGetTokensCurrent**](SushiswapApi.md#sushiswapgettokenscurrent) | **GET** /dapps/sushiswap/tokens/current | GetTokens (current)
[**sushiswapGetTokensDayDataHistorical**](SushiswapApi.md#sushiswapgettokensdaydatahistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
[**sushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical)
[**sushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
[**sushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | GetUsers (historical)


# **sushiswapGetBundlesHistorical**
> List<SushiswapBundleDTO> sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate)

GetBundles (historical)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetBundlesHistorical: $e\n');
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

[**List<SushiswapBundleDTO>**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetBurnsHistorical**
> List<SushiswapBurnDTO> sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetBurns (historical)

Gets burns.

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
    final result = api_instance.sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetBurnsHistorical: $e\n');
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

[**List<SushiswapBurnDTO>**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetDayDataHistorical**
> List<SushiswapDayDataDTO> sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate)

GetDayData (historical)

Gets day data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetDayDataHistorical: $e\n');
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

[**List<SushiswapDayDataDTO>**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetFactoryHistorical**
> List<SushiswapFactoryDTO> sushiswapGetFactoryHistorical(startBlock, endBlock, startDate, endDate)

GetFactory (historical)

Gets factory.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.sushiswapGetFactoryHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetFactoryHistorical: $e\n');
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

[**List<SushiswapFactoryDTO>**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetHourDataHistorical**
> List<SushiswapHourDataDTO> sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate)

GetHourData (historical)

Gets hour data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetHourDataHistorical: $e\n');
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

[**List<SushiswapHourDataDTO>**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetLiquidityPositionHistorical**
> List<SushiswapLiquidityPositionDTO> sushiswapGetLiquidityPositionHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetLiquidityPosition (historical)

Gets liquidity position.

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
    final result = api_instance.sushiswapGetLiquidityPositionHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetLiquidityPositionHistorical: $e\n');
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

[**List<SushiswapLiquidityPositionDTO>**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetLiquidityPositionSnapshotHistorical**
> List<SushiswapLiquidityPositionSnapshotDTO> sushiswapGetLiquidityPositionSnapshotHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetLiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.

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
    final result = api_instance.sushiswapGetLiquidityPositionSnapshotHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetLiquidityPositionSnapshotHistorical: $e\n');
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

[**List<SushiswapLiquidityPositionSnapshotDTO>**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetMintsHistorical**
> List<SushiswapMintDTO> sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetMints (historical)

Gets mints.

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
    final result = api_instance.sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetMintsHistorical: $e\n');
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

[**List<SushiswapMintDTO>**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPoolsCurrent**
> List<SushiswapPairDTO> sushiswapGetPoolsCurrent()

GetPools (current)

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapGetPoolsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPoolsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapPairDTO>**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPoolsDayDataHistorical**
> List<SushiswapPairDayDataDTO> sushiswapGetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPoolsDayData (historical)

Gets pools day data.

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
    final result = api_instance.sushiswapGetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPoolsDayDataHistorical: $e\n');
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

[**List<SushiswapPairDayDataDTO>**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPoolsHistorical**
> List<SushiswapPairDTO> sushiswapGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPools (historical)

Gets list of pools for given filters.

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
    final result = api_instance.sushiswapGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPoolsHistorical: $e\n');
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

[**List<SushiswapPairDTO>**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPoolsHourDataHistorical**
> List<SushiswapPairHourDataDTO> sushiswapGetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetPoolsHourData (historical)

Gets pools tracked each our.

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
    final result = api_instance.sushiswapGetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPoolsHourDataHistorical: $e\n');
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

[**List<SushiswapPairHourDataDTO>**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetSwapsCurrent**
> List<SushiswapSwapDTO> sushiswapGetSwapsCurrent()

GetSwaps (current)

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapGetSwapsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetSwapsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapSwapDTO>**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetSwapsHistorical**
> List<SushiswapSwapDTO> sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)

GetSwaps (historical)

Gets list of swaps for given filters.

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
    final result = api_instance.sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetSwapsHistorical: $e\n');
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

[**List<SushiswapSwapDTO>**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokensCurrent**
> List<SushiswapTokenDTO> sushiswapGetTokensCurrent()

GetTokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapGetTokensCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapTokenDTO>**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokensDayDataHistorical**
> List<SushiswapTokenDayDataDTO> sushiswapGetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokensDayData (historical)

Gets tokens day data.

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
    final result = api_instance.sushiswapGetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokensDayDataHistorical: $e\n');
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

[**List<SushiswapTokenDayDataDTO>**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokensHistorical**
> List<SushiswapTokenDTO> sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

GetTokens (historical)

Gets list of tokens for given filters.

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
    final result = api_instance.sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokensHistorical: $e\n');
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

[**List<SushiswapTokenDTO>**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTransactionsHistorical**
> List<SushiswapTransactionDTO> sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate)

GetTransactions (historical)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTransactionsHistorical: $e\n');
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

[**List<SushiswapTransactionDTO>**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetUsersHistorical**
> List<SushiswapUserDTO> sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate)

GetUsers (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetUsersHistorical: $e\n');
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

[**List<SushiswapUserDTO>**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

