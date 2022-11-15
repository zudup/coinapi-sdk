# openapi.api.SushiswapApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**curveGetExchangesCurrent**](SushiswapApi.md#curvegetexchangescurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
[**dexGetTradesCurrent**](SushiswapApi.md#dexgettradescurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
[**sushiswapGetBundleDTOsHistorical**](SushiswapApi.md#sushiswapgetbundledtoshistorical) | **GET** /dapps/sushiswap/BundleDTOs/historical | BundleDTOs (historical) 🔥
[**sushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical)
[**sushiswapGetBurnDTOsHistorical**](SushiswapApi.md#sushiswapgetburndtoshistorical) | **GET** /dapps/sushiswap/BurnDTOs/historical | BurnDTOs (historical) 🔥
[**sushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical)
[**sushiswapGetDayDataDTOsHistorical**](SushiswapApi.md#sushiswapgetdaydatadtoshistorical) | **GET** /dapps/sushiswap/DayDataDTOs/historical | DayDataDTOs (historical) 🔥
[**sushiswapGetDayDataHistorical**](SushiswapApi.md#sushiswapgetdaydatahistorical) | **GET** /dapps/sushiswap/dayData/historical | DayData (historical)
[**sushiswapGetFactoryDTOsHistorical**](SushiswapApi.md#sushiswapgetfactorydtoshistorical) | **GET** /dapps/sushiswap/FactoryDTOs/historical | FactoryDTOs (historical) 🔥
[**sushiswapGetFactoryHistorical**](SushiswapApi.md#sushiswapgetfactoryhistorical) | **GET** /dapps/sushiswap/factory/historical | Factory (historical)
[**sushiswapGetHourDataDTOsHistorical**](SushiswapApi.md#sushiswapgethourdatadtoshistorical) | **GET** /dapps/sushiswap/HourDataDTOs/historical | HourDataDTOs (historical) 🔥
[**sushiswapGetHourDataHistorical**](SushiswapApi.md#sushiswapgethourdatahistorical) | **GET** /dapps/sushiswap/hourData/historical | HourData (historical)
[**sushiswapGetLiquidityPositionDTOsHistorical**](SushiswapApi.md#sushiswapgetliquiditypositiondtoshistorical) | **GET** /dapps/sushiswap/LiquidityPositionDTOs/historical | LiquidityPositionDTOs (historical) 🔥
[**sushiswapGetLiquidityPositionHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionhistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | LiquidityPosition (historical)
[**sushiswapGetLiquidityPositionSnapshotDTOsHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionsnapshotdtoshistorical) | **GET** /dapps/sushiswap/LiquidityPositionSnapshotDTOs/historical | LiquidityPositionSnapshotDTOs (historical) 🔥
[**sushiswapGetLiquidityPositionSnapshotHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionsnapshothistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshot (historical)
[**sushiswapGetMintDTOsHistorical**](SushiswapApi.md#sushiswapgetmintdtoshistorical) | **GET** /dapps/sushiswap/MintDTOs/historical | MintDTOs (historical) 🔥
[**sushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical)
[**sushiswapGetPairDTOsHistorical**](SushiswapApi.md#sushiswapgetpairdtoshistorical) | **GET** /dapps/sushiswap/PairDTOs/historical | PairDTOs (historical) 🔥
[**sushiswapGetPairDayDataDTOsHistorical**](SushiswapApi.md#sushiswapgetpairdaydatadtoshistorical) | **GET** /dapps/sushiswap/PairDayDataDTOs/historical | PairDayDataDTOs (historical) 🔥
[**sushiswapGetPairHourDataDTOsHistorical**](SushiswapApi.md#sushiswapgetpairhourdatadtoshistorical) | **GET** /dapps/sushiswap/PairHourDataDTOs/historical | PairHourDataDTOs (historical) 🔥
[**sushiswapGetPoolsCurrent**](SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
[**sushiswapGetPoolsDayDataHistorical**](SushiswapApi.md#sushiswapgetpoolsdaydatahistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | PoolsDayData (historical)
[**sushiswapGetPoolsHistorical**](SushiswapApi.md#sushiswapgetpoolshistorical) | **GET** /dapps/sushiswap/pools/historical | Pools (historical) 🔥
[**sushiswapGetPoolsHourDataHistorical**](SushiswapApi.md#sushiswapgetpoolshourdatahistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | PoolsHourData (historical)
[**sushiswapGetSwapDTOsHistorical**](SushiswapApi.md#sushiswapgetswapdtoshistorical) | **GET** /dapps/sushiswap/SwapDTOs/historical | SwapDTOs (historical) 🔥
[**sushiswapGetSwapsCurrent**](SushiswapApi.md#sushiswapgetswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
[**sushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
[**sushiswapGetTokenDTOsHistorical**](SushiswapApi.md#sushiswapgettokendtoshistorical) | **GET** /dapps/sushiswap/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**sushiswapGetTokenDayDataDTOsHistorical**](SushiswapApi.md#sushiswapgettokendaydatadtoshistorical) | **GET** /dapps/sushiswap/TokenDayDataDTOs/historical | TokenDayDataDTOs (historical) 🔥
[**sushiswapGetTokensCurrent**](SushiswapApi.md#sushiswapgettokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
[**sushiswapGetTokensDayDataHistorical**](SushiswapApi.md#sushiswapgettokensdaydatahistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | TokensDayData (historical)
[**sushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
[**sushiswapGetTransactionDTOsHistorical**](SushiswapApi.md#sushiswapgettransactiondtoshistorical) | **GET** /dapps/sushiswap/TransactionDTOs/historical | TransactionDTOs (historical) 🔥
[**sushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical)
[**sushiswapGetUserDTOsHistorical**](SushiswapApi.md#sushiswapgetuserdtoshistorical) | **GET** /dapps/sushiswap/UserDTOs/historical | UserDTOs (historical) 🔥
[**sushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical)


# **curveGetExchangesCurrent**
> BuiltList<CurveExchangeDTO> curveGetExchangesCurrent()

Exchanges (current) 🔥

Gets exchanges.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.curveGetExchangesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->curveGetExchangesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;CurveExchangeDTO&gt;**](CurveExchangeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetTradesCurrent**
> BuiltList<DexTradeDTO> dexGetTradesCurrent()

Trades (current) 🔥

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.dexGetTradesCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->dexGetTradesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetBundleDTOsHistorical**
> BuiltList<SushiswapBundleDTO> sushiswapGetBundleDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

BundleDTOs (historical) 🔥

Gets BundleDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetBundleDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetBundleDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetBundlesHistorical**
> BuiltList<SushiswapBundleDTO> sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate)

Bundles (historical)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | AAAAAAAAAA
final int endBlock = 789; // int | BBBBBBBBBBBB
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | CCCCCCCCC
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | DDDDDDDDDDD

try {
    final response = api.sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetBundlesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| AAAAAAAAAA | [optional] 
 **endBlock** | **int**| BBBBBBBBBBBB | [optional] 
 **startDate** | **DateTime**| CCCCCCCCC | [optional] 
 **endDate** | **DateTime**| DDDDDDDDDDD | [optional] 

### Return type

[**BuiltList&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetBurnDTOsHistorical**
> BuiltList<SushiswapBurnDTO> sushiswapGetBurnDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

BurnDTOs (historical) 🔥

Gets BurnDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetBurnDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetBurnDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetBurnsHistorical**
> BuiltList<SushiswapBurnDTO> sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Burns (historical)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetDayDataDTOsHistorical**
> BuiltList<SushiswapDayDataDTO> sushiswapGetDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

DayDataDTOs (historical) 🔥

Gets DayDataDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetDayDataDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetDayDataHistorical**
> BuiltList<SushiswapDayDataDTO> sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate)

DayData (historical)

Gets day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.sushiswapGetDayDataHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetFactoryDTOsHistorical**
> BuiltList<SushiswapFactoryDTO> sushiswapGetFactoryDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

FactoryDTOs (historical) 🔥

Gets FactoryDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetFactoryDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetFactoryDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetFactoryHistorical**
> BuiltList<SushiswapFactoryDTO> sushiswapGetFactoryHistorical(startBlock, endBlock, startDate, endDate)

Factory (historical)

Gets factory.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.sushiswapGetFactoryHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetHourDataDTOsHistorical**
> BuiltList<SushiswapHourDataDTO> sushiswapGetHourDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

HourDataDTOs (historical) 🔥

Gets HourDataDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetHourDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetHourDataDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetHourDataHistorical**
> BuiltList<SushiswapHourDataDTO> sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate)

HourData (historical)

Gets hour data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.sushiswapGetHourDataHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetLiquidityPositionDTOsHistorical**
> BuiltList<SushiswapLiquidityPositionDTO> sushiswapGetLiquidityPositionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionDTOs (historical) 🔥

Gets LiquidityPositionDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetLiquidityPositionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetLiquidityPositionDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetLiquidityPositionHistorical**
> BuiltList<SushiswapLiquidityPositionDTO> sushiswapGetLiquidityPositionHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPosition (historical)

Gets liquidity position.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetLiquidityPositionHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetLiquidityPositionSnapshotDTOsHistorical**
> BuiltList<SushiswapLiquidityPositionSnapshotDTO> sushiswapGetLiquidityPositionSnapshotDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionSnapshotDTOs (historical) 🔥

Gets LiquidityPositionSnapshotDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetLiquidityPositionSnapshotDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetLiquidityPositionSnapshotDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetLiquidityPositionSnapshotHistorical**
> BuiltList<SushiswapLiquidityPositionSnapshotDTO> sushiswapGetLiquidityPositionSnapshotHistorical(startBlock, endBlock, startDate, endDate, poolId)

LiquidityPositionSnapshot (historical)

Gets liquidity position snapshot.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetLiquidityPositionSnapshotHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetMintDTOsHistorical**
> BuiltList<SushiswapMintDTO> sushiswapGetMintDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

MintDTOs (historical) 🔥

Gets MintDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetMintDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetMintDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetMintsHistorical**
> BuiltList<SushiswapMintDTO> sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Mints (historical)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPairDTOsHistorical**
> BuiltList<SushiswapPairDTO> sushiswapGetPairDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairDTOs (historical) 🔥

Gets PairDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetPairDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPairDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPairDayDataDTOsHistorical**
> BuiltList<SushiswapPairDayDataDTO> sushiswapGetPairDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairDayDataDTOs (historical) 🔥

Gets PairDayDataDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetPairDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPairDayDataDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPairHourDataDTOsHistorical**
> BuiltList<SushiswapPairHourDataDTO> sushiswapGetPairHourDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PairHourDataDTOs (historical) 🔥

Gets PairHourDataDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetPairHourDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPairHourDataDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPoolsCurrent**
> BuiltList<SushiswapPairDTO> sushiswapGetPoolsCurrent()

Pools (current) 🔥

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapGetPoolsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPoolsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPoolsDayDataHistorical**
> BuiltList<SushiswapPairDayDataDTO> sushiswapGetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolsDayData (historical)

Gets pools day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetPoolsDayDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPoolsHistorical**
> BuiltList<SushiswapPairDTO> sushiswapGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Pools (historical) 🔥

Gets list of pools for given filters.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe
final String poolId = poolId_example; // String | The pool address.

try {
    final response = api.sushiswapGetPoolsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPoolsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe | [optional] 
 **poolId** | **String**| The pool address. | [optional] 

### Return type

[**BuiltList&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPoolsHourDataHistorical**
> BuiltList<SushiswapPairHourDataDTO> sushiswapGetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId)

PoolsHourData (historical)

Gets pools tracked each our.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetPoolsHourDataHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetSwapDTOsHistorical**
> BuiltList<SushiswapSwapDTO> sushiswapGetSwapDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SwapDTOs (historical) 🔥

Gets SwapDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetSwapDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetSwapDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetSwapsCurrent**
> BuiltList<SushiswapSwapDTO> sushiswapGetSwapsCurrent()

Swaps (current) 🔥

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapGetSwapsCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetSwapsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetSwapsHistorical**
> BuiltList<SushiswapSwapDTO> sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId)

Swaps (historical) 🔥

Gets list of swaps for given filters.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe
final String poolId = poolId_example; // String | The pool address.

try {
    final response = api.sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetSwapsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe | [optional] 
 **poolId** | **String**| The pool address. | [optional] 

### Return type

[**BuiltList&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokenDTOsHistorical**
> BuiltList<SushiswapTokenDTO> sushiswapGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokenDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokenDayDataDTOsHistorical**
> BuiltList<SushiswapTokenDayDataDTO> sushiswapGetTokenDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDayDataDTOs (historical) 🔥

Gets TokenDayDataDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetTokenDayDataDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokenDayDataDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokensCurrent**
> BuiltList<SushiswapTokenDTO> sushiswapGetTokensCurrent()

Tokens (current) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();

try {
    final response = api.sushiswapGetTokensCurrent();
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokensCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokensDayDataHistorical**
> BuiltList<SushiswapTokenDayDataDTO> sushiswapGetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId)

TokensDayData (historical)

Gets tokens day data.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    final response = api.sushiswapGetTokensDayDataHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokensHistorical**
> BuiltList<SushiswapTokenDTO> sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets list of tokens for given filters.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final int endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe
final String tokenId = tokenId_example; // String | The token address.

try {
    final response = api.sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokensHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe | [optional] 
 **tokenId** | **String**| The token address. | [optional] 

### Return type

[**BuiltList&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTransactionDTOsHistorical**
> BuiltList<SushiswapTransactionDTO> sushiswapGetTransactionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TransactionDTOs (historical) 🔥

Gets TransactionDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetTransactionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTransactionDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTransactionsHistorical**
> BuiltList<SushiswapTransactionDTO> sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate)

Transactions (historical)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetUserDTOsHistorical**
> BuiltList<SushiswapUserDTO> sushiswapGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.sushiswapGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling SushiswapApi->sushiswapGetUserDTOsHistorical: $e\n');
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

[**BuiltList&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetUsersHistorical**
> BuiltList<SushiswapUserDTO> sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getSushiswapApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
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

[**BuiltList&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

