# openapi.api.UniswapV2Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV2GetBundleV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getbundlev2dtoshistorical) | **GET** /dapps/uniswapv2/BundleV2DTOs/historical | BundleV2DTOs (historical) 🔥
[**uniswapV2GetBundlesHistorical**](UniswapV2Api.md#uniswapv2getbundleshistorical) | **GET** /dapps/uniswapv2/bundles/historical | Bundles (historical)
[**uniswapV2GetBurnV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getburnv2dtoshistorical) | **GET** /dapps/uniswapv2/BurnV2DTOs/historical | BurnV2DTOs (historical) 🔥
[**uniswapV2GetBurnsHistorical**](UniswapV2Api.md#uniswapv2getburnshistorical) | **GET** /dapps/uniswapv2/burns/historical | Burns (historical)
[**uniswapV2GetDayDataHistorical**](UniswapV2Api.md#uniswapv2getdaydatahistorical) | **GET** /dapps/uniswapv2/dayData/historical | DayData (historical)
[**uniswapV2GetFactoryHistorical**](UniswapV2Api.md#uniswapv2getfactoryhistorical) | **GET** /dapps/uniswapv2/factory/historical | Factory (historical)
[**uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getliquiditypositionsnapshotv2dtoshistorical) | **GET** /dapps/uniswapv2/LiquidityPositionSnapshotV2DTOs/historical | LiquidityPositionSnapshotV2DTOs (historical) 🔥
[**uniswapV2GetLiquidityPositionV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getliquiditypositionv2dtoshistorical) | **GET** /dapps/uniswapv2/LiquidityPositionV2DTOs/historical | LiquidityPositionV2DTOs (historical) 🔥
[**uniswapV2GetLiquidityPositionsHistorical**](UniswapV2Api.md#uniswapv2getliquiditypositionshistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical)
[**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](UniswapV2Api.md#uniswapv2getliquiditypositionssnapshotshistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | LiquidityPositionsSnapshots (historical)
[**uniswapV2GetMintV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getmintv2dtoshistorical) | **GET** /dapps/uniswapv2/MintV2DTOs/historical | MintV2DTOs (historical) 🔥
[**uniswapV2GetMintsHistorical**](UniswapV2Api.md#uniswapv2getmintshistorical) | **GET** /dapps/uniswapv2/mints/historical | Mints (historical)
[**uniswapV2GetPairDayDataV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getpairdaydatav2dtoshistorical) | **GET** /dapps/uniswapv2/PairDayDataV2DTOs/historical | PairDayDataV2DTOs (historical) 🔥
[**uniswapV2GetPairHourDataV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getpairhourdatav2dtoshistorical) | **GET** /dapps/uniswapv2/PairHourDataV2DTOs/historical | PairHourDataV2DTOs (historical) 🔥
[**uniswapV2GetPairV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getpairv2dtoshistorical) | **GET** /dapps/uniswapv2/PairV2DTOs/historical | PairV2DTOs (historical) 🔥
[**uniswapV2GetPoolsCurrent**](UniswapV2Api.md#uniswapv2getpoolscurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswapV2GetPoolsDayDataHistorical**](UniswapV2Api.md#uniswapv2getpoolsdaydatahistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical | PoolsDayData (historical)
[**uniswapV2GetPoolsHistorical**](UniswapV2Api.md#uniswapv2getpoolshistorical) | **GET** /dapps/uniswapv2/pools/historical | Pools (historical) 🔥
[**uniswapV2GetPoolsHourDataHistorical**](UniswapV2Api.md#uniswapv2getpoolshourdatahistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical | PoolsHourData (historical)
[**uniswapV2GetSwapV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getswapv2dtoshistorical) | **GET** /dapps/uniswapv2/SwapV2DTOs/historical | SwapV2DTOs (historical) 🔥
[**uniswapV2GetSwapsCurrent**](UniswapV2Api.md#uniswapv2getswapscurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswapV2GetSwapsHistorical**](UniswapV2Api.md#uniswapv2getswapshistorical) | **GET** /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥
[**uniswapV2GetTokenDayDataV2DTOsHistorical**](UniswapV2Api.md#uniswapv2gettokendaydatav2dtoshistorical) | **GET** /dapps/uniswapv2/TokenDayDataV2DTOs/historical | TokenDayDataV2DTOs (historical) 🔥
[**uniswapV2GetTokenV2DTOsHistorical**](UniswapV2Api.md#uniswapv2gettokenv2dtoshistorical) | **GET** /dapps/uniswapv2/TokenV2DTOs/historical | TokenV2DTOs (historical) 🔥
[**uniswapV2GetTokensCurrent**](UniswapV2Api.md#uniswapv2gettokenscurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**uniswapV2GetTokensDayDataHistorical**](UniswapV2Api.md#uniswapv2gettokensdaydatahistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical | TokensDayData (historical)
[**uniswapV2GetTokensHistorical**](UniswapV2Api.md#uniswapv2gettokenshistorical) | **GET** /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥
[**uniswapV2GetTransactionV2DTOsHistorical**](UniswapV2Api.md#uniswapv2gettransactionv2dtoshistorical) | **GET** /dapps/uniswapv2/TransactionV2DTOs/historical | TransactionV2DTOs (historical) 🔥
[**uniswapV2GetTransactionsHistorical**](UniswapV2Api.md#uniswapv2gettransactionshistorical) | **GET** /dapps/uniswapv2/transactions/historical | Transactions (historical)
[**uniswapV2GetUniswapDayDataV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getuniswapdaydatav2dtoshistorical) | **GET** /dapps/uniswapv2/UniswapDayDataV2DTOs/historical | UniswapDayDataV2DTOs (historical) 🔥
[**uniswapV2GetUniswapFactoryV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getuniswapfactoryv2dtoshistorical) | **GET** /dapps/uniswapv2/UniswapFactoryV2DTOs/historical | UniswapFactoryV2DTOs (historical) 🔥
[**uniswapV2GetUserV2DTOsHistorical**](UniswapV2Api.md#uniswapv2getuserv2dtoshistorical) | **GET** /dapps/uniswapv2/UserV2DTOs/historical | UserV2DTOs (historical) 🔥
[**uniswapV2GetUsersHistorical**](UniswapV2Api.md#uniswapv2getusershistorical) | **GET** /dapps/uniswapv2/users/historical | Users (historical)


# **uniswapV2GetBundleV2DTOsHistorical**
> BuiltList<UniswapV2BundleV2DTO> uniswapV2GetBundleV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

BundleV2DTOs (historical) 🔥

Gets BundleV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetBundleV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetBundleV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2BundleV2DTO&gt;**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetBundlesHistorical**
> BuiltList<UniswapV2BundleV2DTO> uniswapV2GetBundlesHistorical(startBlock, endBlock, startDate, endDate)

Bundles (historical)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.uniswapV2GetBundlesHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetBundlesHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2BundleV2DTO&gt;**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetBurnV2DTOsHistorical**
> BuiltList<UniswapV2BurnV2DTO> uniswapV2GetBurnV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

BurnV2DTOs (historical) 🔥

Gets BurnV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetBurnV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetBurnV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2BurnV2DTO&gt;**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetBurnsHistorical**
> BuiltList<UniswapV2BurnV2DTO> uniswapV2GetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Burns (historical)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetBurnsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2BurnV2DTO&gt;**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetDayDataHistorical**
> BuiltList<UniswapV2UniswapDayDataV2DTO> uniswapV2GetDayDataHistorical(startBlock, endBlock, startDate, endDate)

DayData (historical)

Gets uniswapv2 day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.uniswapV2GetDayDataHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetDayDataHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2UniswapDayDataV2DTO&gt;**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetFactoryHistorical**
> BuiltList<UniswapV2UniswapFactoryV2DTO> uniswapV2GetFactoryHistorical(startBlock, endBlock, startDate, endDate)

Factory (historical)

Gets factory.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.uniswapV2GetFactoryHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetFactoryHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2UniswapFactoryV2DTO&gt;**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical**
> BuiltList<UniswapV2LiquidityPositionSnapshotV2DTO> uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionSnapshotV2DTOs (historical) 🔥

Gets LiquidityPositionSnapshotV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt;**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionV2DTOsHistorical**
> BuiltList<UniswapV2LiquidityPositionV2DTO> uniswapV2GetLiquidityPositionV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionV2DTOs (historical) 🔥

Gets LiquidityPositionV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetLiquidityPositionV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetLiquidityPositionV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2LiquidityPositionV2DTO&gt;**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionsHistorical**
> BuiltList<UniswapV2LiquidityPositionV2DTO> uniswapV2GetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositions (historical)

Gets liquidity positions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetLiquidityPositionsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2LiquidityPositionV2DTO&gt;**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionsSnapshotsHistorical**
> BuiltList<UniswapV2LiquidityPositionSnapshotV2DTO> uniswapV2GetLiquidityPositionsSnapshotsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionsSnapshots (historical)

Gets liquidity positions snapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetLiquidityPositionsSnapshotsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetLiquidityPositionsSnapshotsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2LiquidityPositionSnapshotV2DTO&gt;**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetMintV2DTOsHistorical**
> BuiltList<UniswapV2MintV2DTO> uniswapV2GetMintV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

MintV2DTOs (historical) 🔥

Gets MintV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetMintV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetMintV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2MintV2DTO&gt;**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetMintsHistorical**
> BuiltList<UniswapV2MintV2DTO> uniswapV2GetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Mints (historical)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetMintsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2MintV2DTO&gt;**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairDayDataV2DTOsHistorical**
> BuiltList<UniswapV2PairDayDataV2DTO> uniswapV2GetPairDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairDayDataV2DTOs (historical) 🔥

Gets PairDayDataV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetPairDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPairDayDataV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2PairDayDataV2DTO&gt;**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairHourDataV2DTOsHistorical**
> BuiltList<UniswapV2PairHourDataV2DTO> uniswapV2GetPairHourDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairHourDataV2DTOs (historical) 🔥

Gets PairHourDataV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetPairHourDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPairHourDataV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2PairHourDataV2DTO&gt;**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairV2DTOsHistorical**
> BuiltList<UniswapV2PairV2DTO> uniswapV2GetPairV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairV2DTOs (historical) 🔥

Gets PairV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetPairV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPairV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPoolsCurrent**
> BuiltList<UniswapV2PairV2DTO> uniswapV2GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final String filterPoolId = filterPoolId_example; // String | 

try {
    final response = api.uniswapV2GetPoolsCurrent(filterPoolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPoolsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**BuiltList&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPoolsDayDataHistorical**
> BuiltList<UniswapV2PairDayDataV2DTO> uniswapV2GetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolsDayData (historical)

Gets pools day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPoolsDayDataHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2PairDayDataV2DTO&gt;**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPoolsHistorical**
> BuiltList<UniswapV2PairV2DTO> uniswapV2GetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Pools (historical) 🔥

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPoolsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2PairV2DTO&gt;**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPoolsHourDataHistorical**
> BuiltList<UniswapV2PairHourDataV2DTO> uniswapV2GetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolsHourData (historical)

Gets pools tracked each our.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPoolsHourDataHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2PairHourDataV2DTO&gt;**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetSwapV2DTOsHistorical**
> BuiltList<UniswapV2SwapV2DTO> uniswapV2GetSwapV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SwapV2DTOs (historical) 🔥

Gets SwapV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetSwapV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetSwapV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetSwapsCurrent**
> BuiltList<UniswapV2SwapV2DTO> uniswapV2GetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();

try {
    final response = api.uniswapV2GetSwapsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetSwapsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetSwapsHistorical**
> BuiltList<UniswapV2SwapV2DTO> uniswapV2GetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Swaps (historical) 🔥

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetSwapsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2SwapV2DTO&gt;**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokenDayDataV2DTOsHistorical**
> BuiltList<UniswapV2TokenDayDataV2DTO> uniswapV2GetTokenDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDayDataV2DTOs (historical) 🔥

Gets TokenDayDataV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetTokenDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTokenDayDataV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2TokenDayDataV2DTO&gt;**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokenV2DTOsHistorical**
> BuiltList<UniswapV2TokenV2DTO> uniswapV2GetTokenV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenV2DTOs (historical) 🔥

Gets TokenV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetTokenV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTokenV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokensCurrent**
> BuiltList<UniswapV2TokenV2DTO> uniswapV2GetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();

try {
    final response = api.uniswapV2GetTokensCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokensDayDataHistorical**
> BuiltList<UniswapV2TokenDayDataV2DTO> uniswapV2GetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

TokensDayData (historical)

Gets tokens day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    final response = api.uniswapV2GetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTokensDayDataHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2TokenDayDataV2DTO&gt;**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokensHistorical**
> BuiltList<UniswapV2TokenV2DTO> uniswapV2GetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    final response = api.uniswapV2GetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTokensHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2TokenV2DTO&gt;**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTransactionV2DTOsHistorical**
> BuiltList<UniswapV2TransactionV2DTO> uniswapV2GetTransactionV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TransactionV2DTOs (historical) 🔥

Gets TransactionV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetTransactionV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTransactionV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2TransactionV2DTO&gt;**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTransactionsHistorical**
> BuiltList<UniswapV2TransactionV2DTO> uniswapV2GetTransactionsHistorical(startBlock, endBlock, startDate, endDate)

Transactions (historical)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.uniswapV2GetTransactionsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTransactionsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2TransactionV2DTO&gt;**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUniswapDayDataV2DTOsHistorical**
> BuiltList<UniswapV2UniswapDayDataV2DTO> uniswapV2GetUniswapDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UniswapDayDataV2DTOs (historical) 🔥

Gets UniswapDayDataV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetUniswapDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetUniswapDayDataV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2UniswapDayDataV2DTO&gt;**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUniswapFactoryV2DTOsHistorical**
> BuiltList<UniswapV2UniswapFactoryV2DTO> uniswapV2GetUniswapFactoryV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UniswapFactoryV2DTOs (historical) 🔥

Gets UniswapFactoryV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetUniswapFactoryV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetUniswapFactoryV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2UniswapFactoryV2DTO&gt;**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUserV2DTOsHistorical**
> BuiltList<UniswapV2UserV2DTO> uniswapV2GetUserV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UserV2DTOs (historical) 🔥

Gets UserV2DTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.uniswapV2GetUserV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetUserV2DTOsHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2UserV2DTO&gt;**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUsersHistorical**
> BuiltList<UniswapV2UserV2DTO> uniswapV2GetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getUniswapV2Api();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.uniswapV2GetUsersHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetUsersHistorical: $e\n');
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

[**BuiltList&lt;UniswapV2UserV2DTO&gt;**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

