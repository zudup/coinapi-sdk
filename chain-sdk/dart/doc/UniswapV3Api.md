# openapi.api.UniswapV3Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV3GetBundleV3sHistorical**](UniswapV3Api.md#uniswapv3getbundlev3shistorical) | **GET** /dapps/uniswapv3/bundlev3s/historical | BundleV3s (historical) 🔥
[**uniswapV3GetBundlesCurrent**](UniswapV3Api.md#uniswapv3getbundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**uniswapV3GetBurnV3sHistorical**](UniswapV3Api.md#uniswapv3getburnv3shistorical) | **GET** /dapps/uniswapv3/burnv3s/historical | BurnV3s (historical) 🔥
[**uniswapV3GetBurnsCurrent**](UniswapV3Api.md#uniswapv3getburnscurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**uniswapV3GetDayDataCurrent**](UniswapV3Api.md#uniswapv3getdaydatacurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
[**uniswapV3GetFactoryCurrent**](UniswapV3Api.md#uniswapv3getfactorycurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
[**uniswapV3GetFactoryV3sHistorical**](UniswapV3Api.md#uniswapv3getfactoryv3shistorical) | **GET** /dapps/uniswapv3/factoryv3s/historical | FactoryV3s (historical) 🔥
[**uniswapV3GetMintV3sHistorical**](UniswapV3Api.md#uniswapv3getmintv3shistorical) | **GET** /dapps/uniswapv3/mintv3s/historical | MintV3s (historical) 🔥
[**uniswapV3GetMintsCurrent**](UniswapV3Api.md#uniswapv3getmintscurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**uniswapV3GetPoolDayDataV3sHistorical**](UniswapV3Api.md#uniswapv3getpooldaydatav3shistorical) | **GET** /dapps/uniswapv3/pooldaydatav3s/historical | PoolDayDataV3s (historical) 🔥
[**uniswapV3GetPoolHourDataV3sHistorical**](UniswapV3Api.md#uniswapv3getpoolhourdatav3shistorical) | **GET** /dapps/uniswapv3/poolhourdatav3s/historical | PoolHourDataV3s (historical) 🔥
[**uniswapV3GetPoolV3sHistorical**](UniswapV3Api.md#uniswapv3getpoolv3shistorical) | **GET** /dapps/uniswapv3/poolv3s/historical | PoolV3s (historical) 🔥
[**uniswapV3GetPoolsCurrent**](UniswapV3Api.md#uniswapv3getpoolscurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**uniswapV3GetPoolsDayDataCurrent**](UniswapV3Api.md#uniswapv3getpoolsdaydatacurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**uniswapV3GetPoolsHourDataCurrent**](UniswapV3Api.md#uniswapv3getpoolshourdatacurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**uniswapV3GetPositionSnapshotV3sHistorical**](UniswapV3Api.md#uniswapv3getpositionsnapshotv3shistorical) | **GET** /dapps/uniswapv3/positionsnapshotv3s/historical | PositionSnapshotV3s (historical) 🔥
[**uniswapV3GetPositionV3sHistorical**](UniswapV3Api.md#uniswapv3getpositionv3shistorical) | **GET** /dapps/uniswapv3/positionv3s/historical | PositionV3s (historical) 🔥
[**uniswapV3GetPositionsCurrent**](UniswapV3Api.md#uniswapv3getpositionscurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**uniswapV3GetPositionsSnapshotsCurrent**](UniswapV3Api.md#uniswapv3getpositionssnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**uniswapV3GetSwapV3sHistorical**](UniswapV3Api.md#uniswapv3getswapv3shistorical) | **GET** /dapps/uniswapv3/swapv3s/historical | SwapV3s (historical) 🔥
[**uniswapV3GetSwapsCurrent**](UniswapV3Api.md#uniswapv3getswapscurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**uniswapV3GetTickDayDataV3sHistorical**](UniswapV3Api.md#uniswapv3gettickdaydatav3shistorical) | **GET** /dapps/uniswapv3/tickdaydatav3s/historical | TickDayDataV3s (historical) 🔥
[**uniswapV3GetTickV3sHistorical**](UniswapV3Api.md#uniswapv3gettickv3shistorical) | **GET** /dapps/uniswapv3/tickv3s/historical | TickV3s (historical) 🔥
[**uniswapV3GetTicksCurrent**](UniswapV3Api.md#uniswapv3gettickscurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**uniswapV3GetTicksDayDataCurrent**](UniswapV3Api.md#uniswapv3getticksdaydatacurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**uniswapV3GetTokenHourDataV3sHistorical**](UniswapV3Api.md#uniswapv3gettokenhourdatav3shistorical) | **GET** /dapps/uniswapv3/tokenhourdatav3s/historical | TokenHourDataV3s (historical) 🔥
[**uniswapV3GetTokenV3DayDatasHistorical**](UniswapV3Api.md#uniswapv3gettokenv3daydatashistorical) | **GET** /dapps/uniswapv3/tokenv3daydatas/historical | TokenV3DayDatas (historical) 🔥
[**uniswapV3GetTokenV3sHistorical**](UniswapV3Api.md#uniswapv3gettokenv3shistorical) | **GET** /dapps/uniswapv3/tokenv3s/historical | TokenV3s (historical) 🔥
[**uniswapV3GetTokensCurrent**](UniswapV3Api.md#uniswapv3gettokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**uniswapV3GetTokensDayDataCurrent**](UniswapV3Api.md#uniswapv3gettokensdaydatacurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**uniswapV3GetTokensHourDataCurrent**](UniswapV3Api.md#uniswapv3gettokenshourdatacurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
[**uniswapV3GetTransactionV3sHistorical**](UniswapV3Api.md#uniswapv3gettransactionv3shistorical) | **GET** /dapps/uniswapv3/transactionv3s/historical | TransactionV3s (historical) 🔥
[**uniswapV3GetUniswapDayDataV3sHistorical**](UniswapV3Api.md#uniswapv3getuniswapdaydatav3shistorical) | **GET** /dapps/uniswapv3/uniswapdaydatav3s/historical | UniswapDayDataV3s (historical) 🔥


# **uniswapV3GetBundleV3sHistorical**
> List<UniswapV3BundleV3DTO> uniswapV3GetBundleV3sHistorical(startBlock, endBlock, startDate, endDate, id)

BundleV3s (historical) 🔥

Gets bundlev3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 

try {
    final result = api_instance.uniswapV3GetBundleV3sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetBundleV3sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**List<UniswapV3BundleV3DTO>**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetBundlesCurrent**
> List<UniswapV3BundleV3DTO> uniswapV3GetBundlesCurrent()

Bundles (current)

Gets bundles.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3GetBundlesCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetBundlesCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3BundleV3DTO>**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetBurnV3sHistorical**
> List<UniswapV3BurnV3DTO> uniswapV3GetBurnV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

BurnV3s (historical) 🔥

Gets burnv3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash + '#' + index in mints Transaction array.
final pool = pool_example; // String | Pool position is within.
final token0 = token0_example; // String | Reference to token0 as stored in pool contract.
final token1 = token1_example; // String | Reference to token1 as stored in pool contract.

try {
    final result = api_instance.uniswapV3GetBurnV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetBurnV3sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash + '#' + index in mints Transaction array. | [optional] 
 **pool** | **String**| Pool position is within. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pool contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pool contract. | [optional] 

### Return type

[**List<UniswapV3BurnV3DTO>**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetBurnsCurrent**
> List<UniswapV3BurnV3DTO> uniswapV3GetBurnsCurrent(filterPoolId)

Burns (current)

Gets burns.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV3GetBurnsCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetBurnsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3BurnV3DTO>**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetDayDataCurrent**
> List<UniswapV3UniswapDayDataV3DTO> uniswapV3GetDayDataCurrent()

DayData (current)

Gets uniswapv3 day data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3GetDayDataCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetDayDataCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3UniswapDayDataV3DTO>**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetFactoryCurrent**
> List<UniswapV3FactoryV3DTO> uniswapV3GetFactoryCurrent()

Factory (current)

Gets factory.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.uniswapV3GetFactoryCurrent();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetFactoryCurrent: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapV3FactoryV3DTO>**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetFactoryV3sHistorical**
> List<UniswapV3FactoryV3DTO> uniswapV3GetFactoryV3sHistorical(startBlock, endBlock, startDate, endDate, id)

FactoryV3s (historical) 🔥

Gets factoryv3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Factory address.

try {
    final result = api_instance.uniswapV3GetFactoryV3sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetFactoryV3sHistorical: $e\n');
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

[**List<UniswapV3FactoryV3DTO>**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetMintV3sHistorical**
> List<UniswapV3MintV3DTO> uniswapV3GetMintV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

MintV3s (historical) 🔥

Gets mintv3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash + '#' + index in mints Transaction array.
final pool = pool_example; // String | Pool address.
final token0 = token0_example; // String | Reference to token0 as stored in pool contract.
final token1 = token1_example; // String | Reference to token1 as stored in pool contract.

try {
    final result = api_instance.uniswapV3GetMintV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetMintV3sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash + '#' + index in mints Transaction array. | [optional] 
 **pool** | **String**| Pool address. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pool contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pool contract. | [optional] 

### Return type

[**List<UniswapV3MintV3DTO>**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetMintsCurrent**
> List<UniswapV3MintV3DTO> uniswapV3GetMintsCurrent(filterPoolId)

Mints (current)

Gets mints.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV3GetMintsCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetMintsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3MintV3DTO>**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolDayDataV3sHistorical**
> List<UniswapV3PoolDayDataV3DTO> uniswapV3GetPoolDayDataV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PoolDayDataV3s (historical) 🔥

Gets pooldaydatav3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final pool = pool_example; // String | 

try {
    final result = api_instance.uniswapV3GetPoolDayDataV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolDayDataV3sHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**List<UniswapV3PoolDayDataV3DTO>**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolHourDataV3sHistorical**
> List<UniswapV3PoolHourDataV3DTO> uniswapV3GetPoolHourDataV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PoolHourDataV3s (historical) 🔥

Gets poolhourdatav3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final pool = pool_example; // String | 

try {
    final result = api_instance.uniswapV3GetPoolHourDataV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolHourDataV3sHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**List<UniswapV3PoolHourDataV3DTO>**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolV3sHistorical**
> List<UniswapV3PoolV3DTO> uniswapV3GetPoolV3sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

PoolV3s (historical) 🔥

Gets poolv3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Pool address.
final token0 = token0_example; // String | Reference to token0 as stored in pool contract.
final token1 = token1_example; // String | Reference to token1 as stored in pool contract.

try {
    final result = api_instance.uniswapV3GetPoolV3sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolV3sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Pool address. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pool contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pool contract. | [optional] 

### Return type

[**List<UniswapV3PoolV3DTO>**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsCurrent**
> List<UniswapV3PoolV3DTO> uniswapV3GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

Gets pools.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV3GetPoolsCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3PoolV3DTO>**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsDayDataCurrent**
> List<UniswapV3PoolDayDataV3DTO> uniswapV3GetPoolsDayDataCurrent(filterPoolId)

PoolsDayData (current)

Gets pools day data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV3GetPoolsDayDataCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolsDayDataCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3PoolDayDataV3DTO>**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPoolsHourDataCurrent**
> List<UniswapV3PoolHourDataV3DTO> uniswapV3GetPoolsHourDataCurrent(filterPoolId)

PoolsHourData (current)

Gets pools hour data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV3GetPoolsHourDataCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPoolsHourDataCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3PoolHourDataV3DTO>**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionSnapshotV3sHistorical**
> List<UniswapV3PositionSnapshotV3DTO> uniswapV3GetPositionSnapshotV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool)

PositionSnapshotV3s (historical) 🔥

Gets positionsnapshotv3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final pool = pool_example; // String | 

try {
    final result = api_instance.uniswapV3GetPositionSnapshotV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPositionSnapshotV3sHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**List<UniswapV3PositionSnapshotV3DTO>**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionV3sHistorical**
> List<UniswapV3PositionV3DTO> uniswapV3GetPositionV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

PositionV3s (historical) 🔥

Gets positionv3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | NFT token identifier.
final pool = pool_example; // String | Pool position is within.
final token0 = token0_example; // String | Reference to token0 as stored in pair contract.
final token1 = token1_example; // String | Reference to token1 as stored in pair contract.

try {
    final result = api_instance.uniswapV3GetPositionV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPositionV3sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| NFT token identifier. | [optional] 
 **pool** | **String**| Pool position is within. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pair contract. | [optional] 

### Return type

[**List<UniswapV3PositionV3DTO>**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionsCurrent**
> List<UniswapV3PositionV3DTO> uniswapV3GetPositionsCurrent(filterPoolId)

Positions (current)

Gets positions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV3GetPositionsCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPositionsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3PositionV3DTO>**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetPositionsSnapshotsCurrent**
> List<UniswapV3PositionSnapshotV3DTO> uniswapV3GetPositionsSnapshotsCurrent(filterPoolId)

PositionsSnapshots (current)

Gets positions snapshots.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV3GetPositionsSnapshotsCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetPositionsSnapshotsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3PositionSnapshotV3DTO>**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetSwapV3sHistorical**
> List<UniswapV3SwapV3DTO> uniswapV3GetSwapV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1)

SwapV3s (historical) 🔥

Gets swapv3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.
final pool = pool_example; // String | Pool swap occured within.
final token0 = token0_example; // String | Reference to token0 as stored in pair contract.
final token1 = token1_example; // String | Reference to token1 as stored in pair contract.

try {
    final result = api_instance.uniswapV3GetSwapV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetSwapV3sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Identifier, format: transaction hash + \"#\" + index in swaps Transaction array. | [optional] 
 **pool** | **String**| Pool swap occured within. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pair contract. | [optional] 

### Return type

[**List<UniswapV3SwapV3DTO>**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetSwapsCurrent**
> List<UniswapV3SwapV3DTO> uniswapV3GetSwapsCurrent(filterPoolId)

Swaps (current) 🔥

Gets swaps.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV3GetSwapsCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetSwapsCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3SwapV3DTO>**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTickDayDataV3sHistorical**
> List<UniswapV3TickDayDataV3DTO> uniswapV3GetTickDayDataV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool)

TickDayDataV3s (historical) 🔥

Gets tickdaydatav3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final pool = pool_example; // String | 

try {
    final result = api_instance.uniswapV3GetTickDayDataV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTickDayDataV3sHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**List<UniswapV3TickDayDataV3DTO>**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTickV3sHistorical**
> List<UniswapV3TickV3DTO> uniswapV3GetTickV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool)

TickV3s (historical) 🔥

Gets tickv3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final pool = pool_example; // String | 

try {
    final result = api_instance.uniswapV3GetTickV3sHistorical(startBlock, endBlock, startDate, endDate, id, pool);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTickV3sHistorical: $e\n');
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
 **pool** | **String**|  | [optional] 

### Return type

[**List<UniswapV3TickV3DTO>**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTicksCurrent**
> List<UniswapV3TickV3DTO> uniswapV3GetTicksCurrent(filterPoolId)

Ticks (current)

Gets ticks.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV3GetTicksCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTicksCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3TickV3DTO>**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTicksDayDataCurrent**
> List<UniswapV3TickDayDataV3DTO> uniswapV3GetTicksDayDataCurrent(filterPoolId)

TicksDayData (current)

Gets ticks day data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | 

try {
    final result = api_instance.uniswapV3GetTicksDayDataCurrent(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTicksDayDataCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3TickDayDataV3DTO>**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokenHourDataV3sHistorical**
> List<UniswapV3TokenHourDataV3DTO> uniswapV3GetTokenHourDataV3sHistorical(startBlock, endBlock, startDate, endDate, id)

TokenHourDataV3s (historical) 🔥

Gets tokenhourdatav3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address concatendated with date.

try {
    final result = api_instance.uniswapV3GetTokenHourDataV3sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokenHourDataV3sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Token address concatendated with date. | [optional] 

### Return type

[**List<UniswapV3TokenHourDataV3DTO>**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokenV3DayDatasHistorical**
> List<UniswapV3TokenV3DayDataDTO> uniswapV3GetTokenV3DayDatasHistorical(startBlock, endBlock, startDate, endDate, id)

TokenV3DayDatas (historical) 🔥

Gets tokenv3daydatas.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address concatendated with date.

try {
    final result = api_instance.uniswapV3GetTokenV3DayDatasHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokenV3DayDatasHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Token address concatendated with date. | [optional] 

### Return type

[**List<UniswapV3TokenV3DayDataDTO>**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokenV3sHistorical**
> List<UniswapV3TokenV3DTO> uniswapV3GetTokenV3sHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

TokenV3s (historical) 🔥

Gets tokenv3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address.
final symbol = symbol_example; // String | Token symbol.
final name = name_example; // String | Token name.

try {
    final result = api_instance.uniswapV3GetTokenV3sHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokenV3sHistorical: $e\n');
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

[**List<UniswapV3TokenV3DTO>**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensCurrent**
> List<UniswapV3TokenV3DTO> uniswapV3GetTokensCurrent(filterTokenId)

Tokens (current) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterTokenId = filterTokenId_example; // String | 

try {
    final result = api_instance.uniswapV3GetTokensCurrent(filterTokenId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokensCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3TokenV3DTO>**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensDayDataCurrent**
> List<UniswapV3TokenV3DayDataDTO> uniswapV3GetTokensDayDataCurrent(filterTokenId)

TokensDayData (current)

Gets tokens day data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterTokenId = filterTokenId_example; // String | 

try {
    final result = api_instance.uniswapV3GetTokensDayDataCurrent(filterTokenId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokensDayDataCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3TokenV3DayDataDTO>**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTokensHourDataCurrent**
> List<UniswapV3TokenHourDataV3DTO> uniswapV3GetTokensHourDataCurrent(filterTokenId)

TokensHourData (current)

Gets tokens hour data.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterTokenId = filterTokenId_example; // String | 

try {
    final result = api_instance.uniswapV3GetTokensHourDataCurrent(filterTokenId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTokensHourDataCurrent: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**List<UniswapV3TokenHourDataV3DTO>**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetTransactionV3sHistorical**
> List<UniswapV3TransactionV3DTO> uniswapV3GetTransactionV3sHistorical(startBlock, endBlock, startDate, endDate, id)

TransactionV3s (historical) 🔥

Gets transactionv3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash.

try {
    final result = api_instance.uniswapV3GetTransactionV3sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetTransactionV3sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash. | [optional] 

### Return type

[**List<UniswapV3TransactionV3DTO>**](UniswapV3TransactionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV3GetUniswapDayDataV3sHistorical**
> List<UniswapV3UniswapDayDataV3DTO> uniswapV3GetUniswapDayDataV3sHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapDayDataV3s (historical) 🔥

Gets uniswapdaydatav3s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Timestamp rounded to current day by dividing by 86400.

try {
    final result = api_instance.uniswapV3GetUniswapDayDataV3sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->uniswapV3GetUniswapDayDataV3sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Timestamp rounded to current day by dividing by 86400. | [optional] 

### Return type

[**List<UniswapV3UniswapDayDataV3DTO>**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

