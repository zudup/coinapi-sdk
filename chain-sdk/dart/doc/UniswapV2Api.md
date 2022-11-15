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
> List<UniswapV2BundleV2DTO> uniswapV2GetBundleV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

BundleV2DTOs (historical) 🔥

Gets BundleV2DTOs.

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
    final result = api_instance.uniswapV2GetBundleV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2BundleV2DTO>**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetBundlesHistorical**
> List<UniswapV2BundleV2DTO> uniswapV2GetBundlesHistorical(startBlock, endBlock, startDate, endDate)

Bundles (historical)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.uniswapV2GetBundlesHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<UniswapV2BundleV2DTO>**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetBurnV2DTOsHistorical**
> List<UniswapV2BurnV2DTO> uniswapV2GetBurnV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

BurnV2DTOs (historical) 🔥

Gets BurnV2DTOs.

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
    final result = api_instance.uniswapV2GetBurnV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2BurnV2DTO>**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetBurnsHistorical**
> List<UniswapV2BurnV2DTO> uniswapV2GetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Burns (historical)

Gets burns.

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
    final result = api_instance.uniswapV2GetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2BurnV2DTO>**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetDayDataHistorical**
> List<UniswapV2UniswapDayDataV2DTO> uniswapV2GetDayDataHistorical(startBlock, endBlock, startDate, endDate)

DayData (historical)

Gets uniswapv2 day data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.uniswapV2GetDayDataHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<UniswapV2UniswapDayDataV2DTO>**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetFactoryHistorical**
> List<UniswapV2UniswapFactoryV2DTO> uniswapV2GetFactoryHistorical(startBlock, endBlock, startDate, endDate)

Factory (historical)

Gets factory.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.uniswapV2GetFactoryHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<UniswapV2UniswapFactoryV2DTO>**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical**
> List<UniswapV2LiquidityPositionSnapshotV2DTO> uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionSnapshotV2DTOs (historical) 🔥

Gets LiquidityPositionSnapshotV2DTOs.

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
    final result = api_instance.uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2LiquidityPositionSnapshotV2DTO>**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionV2DTOsHistorical**
> List<UniswapV2LiquidityPositionV2DTO> uniswapV2GetLiquidityPositionV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionV2DTOs (historical) 🔥

Gets LiquidityPositionV2DTOs.

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
    final result = api_instance.uniswapV2GetLiquidityPositionV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2LiquidityPositionV2DTO>**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionsHistorical**
> List<UniswapV2LiquidityPositionV2DTO> uniswapV2GetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositions (historical)

Gets liquidity positions.

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
    final result = api_instance.uniswapV2GetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2LiquidityPositionV2DTO>**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionsSnapshotsHistorical**
> List<UniswapV2LiquidityPositionSnapshotV2DTO> uniswapV2GetLiquidityPositionsSnapshotsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionsSnapshots (historical)

Gets liquidity positions snapshots.

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
    final result = api_instance.uniswapV2GetLiquidityPositionsSnapshotsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2LiquidityPositionSnapshotV2DTO>**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetMintV2DTOsHistorical**
> List<UniswapV2MintV2DTO> uniswapV2GetMintV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

MintV2DTOs (historical) 🔥

Gets MintV2DTOs.

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
    final result = api_instance.uniswapV2GetMintV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2MintV2DTO>**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetMintsHistorical**
> List<UniswapV2MintV2DTO> uniswapV2GetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Mints (historical)

Gets mints.

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
    final result = api_instance.uniswapV2GetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2MintV2DTO>**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairDayDataV2DTOsHistorical**
> List<UniswapV2PairDayDataV2DTO> uniswapV2GetPairDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairDayDataV2DTOs (historical) 🔥

Gets PairDayDataV2DTOs.

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
    final result = api_instance.uniswapV2GetPairDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2PairDayDataV2DTO>**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairHourDataV2DTOsHistorical**
> List<UniswapV2PairHourDataV2DTO> uniswapV2GetPairHourDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairHourDataV2DTOs (historical) 🔥

Gets PairHourDataV2DTOs.

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
    final result = api_instance.uniswapV2GetPairHourDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2PairHourDataV2DTO>**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairV2DTOsHistorical**
> List<UniswapV2PairV2DTO> uniswapV2GetPairV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairV2DTOs (historical) 🔥

Gets PairV2DTOs.

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
    final result = api_instance.uniswapV2GetPairV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2PairV2DTO>**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPoolsCurrent**
> List<UniswapV2PairV2DTO> uniswapV2GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV2GetPoolsCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPoolsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV2PairV2DTO>**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPoolsDayDataHistorical**
> List<UniswapV2PairDayDataV2DTO> uniswapV2GetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolsDayData (historical)

Gets pools day data.

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
    final result = api_instance.uniswapV2GetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2PairDayDataV2DTO>**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPoolsHistorical**
> List<UniswapV2PairV2DTO> uniswapV2GetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Pools (historical) 🔥

Gets pools.

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
    final result = api_instance.uniswapV2GetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2PairV2DTO>**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPoolsHourDataHistorical**
> List<UniswapV2PairHourDataV2DTO> uniswapV2GetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolsHourData (historical)

Gets pools tracked each our.

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
    final result = api_instance.uniswapV2GetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2PairHourDataV2DTO>**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetSwapV2DTOsHistorical**
> List<UniswapV2SwapV2DTO> uniswapV2GetSwapV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SwapV2DTOs (historical) 🔥

Gets SwapV2DTOs.

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
    final result = api_instance.uniswapV2GetSwapV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2SwapV2DTO>**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetSwapsCurrent**
> List<UniswapV2SwapV2DTO> uniswapV2GetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2GetSwapsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetSwapsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2SwapV2DTO>**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetSwapsHistorical**
> List<UniswapV2SwapV2DTO> uniswapV2GetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Swaps (historical) 🔥

Gets swaps.

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
    final result = api_instance.uniswapV2GetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2SwapV2DTO>**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokenDayDataV2DTOsHistorical**
> List<UniswapV2TokenDayDataV2DTO> uniswapV2GetTokenDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDayDataV2DTOs (historical) 🔥

Gets TokenDayDataV2DTOs.

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
    final result = api_instance.uniswapV2GetTokenDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2TokenDayDataV2DTO>**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokenV2DTOsHistorical**
> List<UniswapV2TokenV2DTO> uniswapV2GetTokenV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenV2DTOs (historical) 🔥

Gets TokenV2DTOs.

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
    final result = api_instance.uniswapV2GetTokenV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2TokenV2DTO>**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokensCurrent**
> List<UniswapV2TokenV2DTO> uniswapV2GetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();

try {
    final result = api_instance.uniswapV2GetTokensCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV2TokenV2DTO>**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokensDayDataHistorical**
> List<UniswapV2TokenDayDataV2DTO> uniswapV2GetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

TokensDayData (historical)

Gets tokens day data.

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
    final result = api_instance.uniswapV2GetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
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

[**List<UniswapV2TokenDayDataV2DTO>**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokensHistorical**
> List<UniswapV2TokenV2DTO> uniswapV2GetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

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
    final result = api_instance.uniswapV2GetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
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

[**List<UniswapV2TokenV2DTO>**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTransactionV2DTOsHistorical**
> List<UniswapV2TransactionV2DTO> uniswapV2GetTransactionV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TransactionV2DTOs (historical) 🔥

Gets TransactionV2DTOs.

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
    final result = api_instance.uniswapV2GetTransactionV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2TransactionV2DTO>**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTransactionsHistorical**
> List<UniswapV2TransactionV2DTO> uniswapV2GetTransactionsHistorical(startBlock, endBlock, startDate, endDate)

Transactions (historical)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.uniswapV2GetTransactionsHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<UniswapV2TransactionV2DTO>**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUniswapDayDataV2DTOsHistorical**
> List<UniswapV2UniswapDayDataV2DTO> uniswapV2GetUniswapDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UniswapDayDataV2DTOs (historical) 🔥

Gets UniswapDayDataV2DTOs.

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
    final result = api_instance.uniswapV2GetUniswapDayDataV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2UniswapDayDataV2DTO>**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUniswapFactoryV2DTOsHistorical**
> List<UniswapV2UniswapFactoryV2DTO> uniswapV2GetUniswapFactoryV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UniswapFactoryV2DTOs (historical) 🔥

Gets UniswapFactoryV2DTOs.

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
    final result = api_instance.uniswapV2GetUniswapFactoryV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2UniswapFactoryV2DTO>**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUserV2DTOsHistorical**
> List<UniswapV2UserV2DTO> uniswapV2GetUserV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UserV2DTOs (historical) 🔥

Gets UserV2DTOs.

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
    final result = api_instance.uniswapV2GetUserV2DTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<UniswapV2UserV2DTO>**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUsersHistorical**
> List<UniswapV2UserV2DTO> uniswapV2GetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.uniswapV2GetUsersHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<UniswapV2UserV2DTO>**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

