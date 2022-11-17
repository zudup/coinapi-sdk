# openapi.api.SushiswapApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sushiswapBundlesCurrent**](SushiswapApi.md#sushiswapbundlescurrent) | **GET** /dapps/sushiswap/bundles/current | Bundles (current)
[**sushiswapBurnsCurrent**](SushiswapApi.md#sushiswapburnscurrent) | **GET** /dapps/sushiswap/burns/current | Burns (current)
[**sushiswapDayDatasCurrent**](SushiswapApi.md#sushiswapdaydatascurrent) | **GET** /dapps/sushiswap/dayDatas/current | DayDatas (current)
[**sushiswapFactorysCurrent**](SushiswapApi.md#sushiswapfactoryscurrent) | **GET** /dapps/sushiswap/factorys/current | Factorys (current)
[**sushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥
[**sushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) 🔥
[**sushiswapGetDayDatasHistorical**](SushiswapApi.md#sushiswapgetdaydatashistorical) | **GET** /dapps/sushiswap/dayDatas/historical | DayDatas (historical) 🔥
[**sushiswapGetFactorysHistorical**](SushiswapApi.md#sushiswapgetfactoryshistorical) | **GET** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥
[**sushiswapGetHourDatasHistorical**](SushiswapApi.md#sushiswapgethourdatashistorical) | **GET** /dapps/sushiswap/hourDatas/historical | HourDatas (historical) 🔥
[**sushiswapGetLiquidityPositionSnapshotsHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionsnapshotshistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) 🔥
[**sushiswapGetLiquidityPositionsHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionshistorical) | **GET** /dapps/sushiswap/liquidityPositions/historical | LiquidityPositions (historical) 🔥
[**sushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) 🔥
[**sushiswapGetPairDayDatasHistorical**](SushiswapApi.md#sushiswapgetpairdaydatashistorical) | **GET** /dapps/sushiswap/pairDayDatas/historical | PairDayDatas (historical) 🔥
[**sushiswapGetPairHourDatasHistorical**](SushiswapApi.md#sushiswapgetpairhourdatashistorical) | **GET** /dapps/sushiswap/pairHourDatas/historical | PairHourDatas (historical) 🔥
[**sushiswapGetPairsHistorical**](SushiswapApi.md#sushiswapgetpairshistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥
[**sushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
[**sushiswapGetTokenDayDatasHistorical**](SushiswapApi.md#sushiswapgettokendaydatashistorical) | **GET** /dapps/sushiswap/tokenDayDatas/historical | TokenDayDatas (historical) 🔥
[**sushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
[**sushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥
[**sushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) 🔥
[**sushiswapHourDatasCurrent**](SushiswapApi.md#sushiswaphourdatascurrent) | **GET** /dapps/sushiswap/hourDatas/current | HourDatas (current)
[**sushiswapLiquidityPositionSnapshotsCurrent**](SushiswapApi.md#sushiswapliquiditypositionsnapshotscurrent) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current)
[**sushiswapLiquidityPositionsCurrent**](SushiswapApi.md#sushiswapliquiditypositionscurrent) | **GET** /dapps/sushiswap/liquidityPositions/current | LiquidityPositions (current)
[**sushiswapMintsCurrent**](SushiswapApi.md#sushiswapmintscurrent) | **GET** /dapps/sushiswap/mints/current | Mints (current)
[**sushiswapPairDayDatasCurrent**](SushiswapApi.md#sushiswappairdaydatascurrent) | **GET** /dapps/sushiswap/pairDayDatas/current | PairDayDatas (current)
[**sushiswapPairHourDatasCurrent**](SushiswapApi.md#sushiswappairhourdatascurrent) | **GET** /dapps/sushiswap/pairHourDatas/current | PairHourDatas (current)
[**sushiswapPairsCurrent**](SushiswapApi.md#sushiswappairscurrent) | **GET** /dapps/sushiswap/pairs/current | Pairs (current)
[**sushiswapSwapsCurrent**](SushiswapApi.md#sushiswapswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current)
[**sushiswapTokenDayDatasCurrent**](SushiswapApi.md#sushiswaptokendaydatascurrent) | **GET** /dapps/sushiswap/tokenDayDatas/current | TokenDayDatas (current)
[**sushiswapTokensCurrent**](SushiswapApi.md#sushiswaptokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current)
[**sushiswapTransactionsCurrent**](SushiswapApi.md#sushiswaptransactionscurrent) | **GET** /dapps/sushiswap/transactions/current | Transactions (current)
[**sushiswapUsersCurrent**](SushiswapApi.md#sushiswapuserscurrent) | **GET** /dapps/sushiswap/users/current | Users (current)


# **sushiswapBundlesCurrent**
> List<SushiswapBundleDTO> sushiswapBundlesCurrent()

Bundles (current)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapBundlesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapBundlesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapBundleDTO>**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapBurnsCurrent**
> List<SushiswapBurnDTO> sushiswapBurnsCurrent()

Burns (current)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapBurnsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapBurnsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapBurnDTO>**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapDayDatasCurrent**
> List<SushiswapDayDataDTO> sushiswapDayDatasCurrent()

DayDatas (current)

Gets dayDatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapDayDatasCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapDayDatasCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapDayDataDTO>**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapFactorysCurrent**
> List<SushiswapFactoryDTO> sushiswapFactorysCurrent()

Factorys (current)

Gets factorys.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapFactorysCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapFactorysCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapFactoryDTO>**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetBundlesHistorical**
> List<SushiswapBundleDTO> sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate, id)

Bundles (historical) 🔥

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Hardcoded to '1'.

try {
    final result = api_instance.sushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetBundlesHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Hardcoded to '1'. | [optional] 

### Return type

[**List<SushiswapBundleDTO>**](SushiswapBundleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetBurnsHistorical**
> List<SushiswapBurnDTO> sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pair)

Burns (historical) 🔥

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final pair = pair_example; // String | 

try {
    final result = api_instance.sushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
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
 **id** | **String**|  | [optional] 
 **pair** | **String**|  | [optional] 

### Return type

[**List<SushiswapBurnDTO>**](SushiswapBurnDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetDayDatasHistorical**
> List<SushiswapDayDataDTO> sushiswapGetDayDatasHistorical(startBlock, endBlock, startDate, endDate, id)

DayDatas (historical) 🔥

Gets dayDatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Unix timestamp for start of day / 86400 giving a unique day index.

try {
    final result = api_instance.sushiswapGetDayDatasHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetDayDatasHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional] 

### Return type

[**List<SushiswapDayDataDTO>**](SushiswapDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetFactorysHistorical**
> List<SushiswapFactoryDTO> sushiswapGetFactorysHistorical(startBlock, endBlock, startDate, endDate, id)

Factorys (historical) 🔥

Gets factorys.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Factory address.

try {
    final result = api_instance.sushiswapGetFactorysHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetFactorysHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Factory address. | [optional] 

### Return type

[**List<SushiswapFactoryDTO>**](SushiswapFactoryDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetHourDatasHistorical**
> List<SushiswapHourDataDTO> sushiswapGetHourDatasHistorical(startBlock, endBlock, startDate, endDate, id)

HourDatas (historical) 🔥

Gets hourDatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Start of hour timestamp.

try {
    final result = api_instance.sushiswapGetHourDatasHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetHourDatasHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Start of hour timestamp. | [optional] 

### Return type

[**List<SushiswapHourDataDTO>**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetLiquidityPositionSnapshotsHistorical**
> List<SushiswapLiquidityPositionSnapshotDTO> sushiswapGetLiquidityPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionSnapshots (historical) 🔥

Gets liquidityPositionSnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final user = user_example; // String | 
final pair = pair_example; // String | 

try {
    final result = api_instance.sushiswapGetLiquidityPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetLiquidityPositionSnapshotsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **id** | **String**|  | [optional] 
 **user** | **String**|  | [optional] 
 **pair** | **String**|  | [optional] 

### Return type

[**List<SushiswapLiquidityPositionSnapshotDTO>**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetLiquidityPositionsHistorical**
> List<SushiswapLiquidityPositionDTO> sushiswapGetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositions (historical) 🔥

Gets liquidityPositions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final user = user_example; // String | 
final pair = pair_example; // String | 

try {
    final result = api_instance.sushiswapGetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetLiquidityPositionsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **id** | **String**|  | [optional] 
 **user** | **String**|  | [optional] 
 **pair** | **String**|  | [optional] 

### Return type

[**List<SushiswapLiquidityPositionDTO>**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetMintsHistorical**
> List<SushiswapMintDTO> sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pair)

Mints (historical) 🔥

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final pair = pair_example; // String | 

try {
    final result = api_instance.sushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
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
 **id** | **String**|  | [optional] 
 **pair** | **String**|  | [optional] 

### Return type

[**List<SushiswapMintDTO>**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPairDayDatasHistorical**
> List<SushiswapPairDayDataDTO> sushiswapGetPairDayDatasHistorical(startBlock, endBlock, startDate, endDate, id, pair, token0, token1)

PairDayDatas (historical) 🔥

Gets pairDayDatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final pair = pair_example; // String | 
final token0 = token0_example; // String | 
final token1 = token1_example; // String | 

try {
    final result = api_instance.sushiswapGetPairDayDatasHistorical(startBlock, endBlock, startDate, endDate, id, pair, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPairDayDatasHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **id** | **String**|  | [optional] 
 **pair** | **String**|  | [optional] 
 **token0** | **String**|  | [optional] 
 **token1** | **String**|  | [optional] 

### Return type

[**List<SushiswapPairDayDataDTO>**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPairHourDatasHistorical**
> List<SushiswapPairHourDataDTO> sushiswapGetPairHourDatasHistorical(startBlock, endBlock, startDate, endDate, id, pair)

PairHourDatas (historical) 🔥

Gets pairHourDatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final pair = pair_example; // String | 

try {
    final result = api_instance.sushiswapGetPairHourDatasHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPairHourDatasHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **id** | **String**|  | [optional] 
 **pair** | **String**|  | [optional] 

### Return type

[**List<SushiswapPairHourDataDTO>**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetPairsHistorical**
> List<SushiswapPairDTO> sushiswapGetPairsHistorical(startBlock, endBlock, startDate, endDate, id, name, token0, token1)

Pairs (historical) 🔥

Gets pairs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final name = name_example; // String | 
final token0 = token0_example; // String | 
final token1 = token1_example; // String | 

try {
    final result = api_instance.sushiswapGetPairsHistorical(startBlock, endBlock, startDate, endDate, id, name, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetPairsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**|  | [optional] 
 **endBlock** | **int**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **id** | **String**|  | [optional] 
 **name** | **String**|  | [optional] 
 **token0** | **String**|  | [optional] 
 **token1** | **String**|  | [optional] 

### Return type

[**List<SushiswapPairDTO>**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetSwapsHistorical**
> List<SushiswapSwapDTO> sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pair)

Swaps (historical) 🔥

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash plus index in Transaction swap array.
final pair = pair_example; // String | Reference to pair.

try {
    final result = api_instance.sushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetSwapsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash plus index in Transaction swap array. | [optional] 
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**List<SushiswapSwapDTO>**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokenDayDatasHistorical**
> List<SushiswapTokenDayDataDTO> sushiswapGetTokenDayDatasHistorical(startBlock, endBlock, startDate, endDate, id)

TokenDayDatas (historical) 🔥

Gets tokenDayDatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, day start timestamp in unix / 86400.

try {
    final result = api_instance.sushiswapGetTokenDayDatasHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokenDayDatasHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, day start timestamp in unix / 86400. | [optional] 

### Return type

[**List<SushiswapTokenDayDataDTO>**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTokensHistorical**
> List<SushiswapTokenDTO> sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

Tokens (historical) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address.
final symbol = symbol_example; // String | Token symbol.
final name = name_example; // String | Token name.

try {
    final result = api_instance.sushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTokensHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Token address. | [optional] 
 **symbol** | **String**| Token symbol. | [optional] 
 **name** | **String**| Token name. | [optional] 

### Return type

[**List<SushiswapTokenDTO>**](SushiswapTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetTransactionsHistorical**
> List<SushiswapTransactionDTO> sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id)

Transactions (historical) 🔥

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Ethereum transaction hash.

try {
    final result = api_instance.sushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetTransactionsHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Ethereum transaction hash. | [optional] 

### Return type

[**List<SushiswapTransactionDTO>**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapGetUsersHistorical**
> List<SushiswapUserDTO> sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate, id)

Users (historical) 🔥

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | User address.

try {
    final result = api_instance.sushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapGetUsersHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| User address. | [optional] 

### Return type

[**List<SushiswapUserDTO>**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapHourDatasCurrent**
> List<SushiswapHourDataDTO> sushiswapHourDatasCurrent()

HourDatas (current)

Gets hourDatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapHourDatasCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapHourDatasCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapHourDataDTO>**](SushiswapHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapLiquidityPositionSnapshotsCurrent**
> List<SushiswapLiquidityPositionSnapshotDTO> sushiswapLiquidityPositionSnapshotsCurrent()

LiquidityPositionSnapshots (current)

Gets liquidityPositionSnapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapLiquidityPositionSnapshotsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapLiquidityPositionSnapshotsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapLiquidityPositionSnapshotDTO>**](SushiswapLiquidityPositionSnapshotDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapLiquidityPositionsCurrent**
> List<SushiswapLiquidityPositionDTO> sushiswapLiquidityPositionsCurrent()

LiquidityPositions (current)

Gets liquidityPositions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapLiquidityPositionsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapLiquidityPositionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapLiquidityPositionDTO>**](SushiswapLiquidityPositionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapMintsCurrent**
> List<SushiswapMintDTO> sushiswapMintsCurrent()

Mints (current)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapMintsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapMintsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapMintDTO>**](SushiswapMintDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapPairDayDatasCurrent**
> List<SushiswapPairDayDataDTO> sushiswapPairDayDatasCurrent()

PairDayDatas (current)

Gets pairDayDatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapPairDayDatasCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapPairDayDatasCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapPairDayDataDTO>**](SushiswapPairDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapPairHourDatasCurrent**
> List<SushiswapPairHourDataDTO> sushiswapPairHourDatasCurrent()

PairHourDatas (current)

Gets pairHourDatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapPairHourDatasCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapPairHourDatasCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapPairHourDataDTO>**](SushiswapPairHourDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapPairsCurrent**
> List<SushiswapPairDTO> sushiswapPairsCurrent(id)

Pairs (current)

Gets pairs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final id = id_example; // String | Pair contract address.

try {
    final result = api_instance.sushiswapPairsCurrent(id);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapPairsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Pair contract address. | [optional] 

### Return type

[**List<SushiswapPairDTO>**](SushiswapPairDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapSwapsCurrent**
> List<SushiswapSwapDTO> sushiswapSwapsCurrent(pair)

Swaps (current)

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();
final pair = pair_example; // String | Reference to pair.

try {
    final result = api_instance.sushiswapSwapsCurrent(pair);
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapSwapsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**List<SushiswapSwapDTO>**](SushiswapSwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapTokenDayDatasCurrent**
> List<SushiswapTokenDayDataDTO> sushiswapTokenDayDatasCurrent()

TokenDayDatas (current)

Gets tokenDayDatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapTokenDayDatasCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapTokenDayDatasCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapTokenDayDataDTO>**](SushiswapTokenDayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapTokensCurrent**
> List<SushiswapTokenDTO> sushiswapTokensCurrent()

Tokens (current)

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapTokensCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapTokensCurrent: $e\n');
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

# **sushiswapTransactionsCurrent**
> List<SushiswapTransactionDTO> sushiswapTransactionsCurrent()

Transactions (current)

Gets transactions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapTransactionsCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapTransactionsCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapTransactionDTO>**](SushiswapTransactionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sushiswapUsersCurrent**
> List<SushiswapUserDTO> sushiswapUsersCurrent()

Users (current)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SushiswapApi();

try {
    final result = api_instance.sushiswapUsersCurrent();
    print(result);
} catch (e) {
    print('Exception when calling SushiswapApi->sushiswapUsersCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SushiswapUserDTO>**](SushiswapUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

