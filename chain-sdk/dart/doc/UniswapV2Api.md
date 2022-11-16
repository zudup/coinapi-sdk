# openapi.api.UniswapV2Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV2GetBundleV2sHistorical**](UniswapV2Api.md#uniswapv2getbundlev2shistorical) | **GET** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥
[**uniswapV2GetBurnV2sHistorical**](UniswapV2Api.md#uniswapv2getburnv2shistorical) | **GET** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥
[**uniswapV2GetLiquidityPositionSnapshotV2sHistorical**](UniswapV2Api.md#uniswapv2getliquiditypositionsnapshotv2shistorical) | **GET** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥
[**uniswapV2GetLiquidityPositionV2sHistorical**](UniswapV2Api.md#uniswapv2getliquiditypositionv2shistorical) | **GET** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥
[**uniswapV2GetMintV2sHistorical**](UniswapV2Api.md#uniswapv2getmintv2shistorical) | **GET** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥
[**uniswapV2GetPairDayDataV2sHistorical**](UniswapV2Api.md#uniswapv2getpairdaydatav2shistorical) | **GET** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥
[**uniswapV2GetPairHourDataV2sHistorical**](UniswapV2Api.md#uniswapv2getpairhourdatav2shistorical) | **GET** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥
[**uniswapV2GetPairV2sHistorical**](UniswapV2Api.md#uniswapv2getpairv2shistorical) | **GET** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥
[**uniswapV2GetPoolsCurrent**](UniswapV2Api.md#uniswapv2getpoolscurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswapV2GetSwapV2sHistorical**](UniswapV2Api.md#uniswapv2getswapv2shistorical) | **GET** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥
[**uniswapV2GetSwapsCurrent**](UniswapV2Api.md#uniswapv2getswapscurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswapV2GetTokenDayDataV2sHistorical**](UniswapV2Api.md#uniswapv2gettokendaydatav2shistorical) | **GET** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥
[**uniswapV2GetTokenV2sHistorical**](UniswapV2Api.md#uniswapv2gettokenv2shistorical) | **GET** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥
[**uniswapV2GetTokensCurrent**](UniswapV2Api.md#uniswapv2gettokenscurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**uniswapV2GetTransactionV2sHistorical**](UniswapV2Api.md#uniswapv2gettransactionv2shistorical) | **GET** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥
[**uniswapV2GetUniswapDayDataV2sHistorical**](UniswapV2Api.md#uniswapv2getuniswapdaydatav2shistorical) | **GET** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥
[**uniswapV2GetUniswapFactoryV2sHistorical**](UniswapV2Api.md#uniswapv2getuniswapfactoryv2shistorical) | **GET** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥
[**uniswapV2GetUserV2sHistorical**](UniswapV2Api.md#uniswapv2getuserv2shistorical) | **GET** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥


# **uniswapV2GetBundleV2sHistorical**
> List<UniswapV2BundleV2DTO> uniswapV2GetBundleV2sHistorical(startBlock, endBlock, startDate, endDate, id)

BundleV2s (historical) 🔥

Gets bundlev2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Constant 1.

try {
    final result = api_instance.uniswapV2GetBundleV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetBundleV2sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Constant 1. | [optional] 

### Return type

[**List<UniswapV2BundleV2DTO>**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetBurnV2sHistorical**
> List<UniswapV2BurnV2DTO> uniswapV2GetBurnV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

BurnV2s (historical) 🔥

Gets burnv2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash plus index in the transaction burn array
final pair = pair_example; // String | Reference to pair.

try {
    final result = api_instance.uniswapV2GetBurnV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetBurnV2sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash plus index in the transaction burn array | [optional] 
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**List<UniswapV2BurnV2DTO>**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionSnapshotV2sHistorical**
> List<UniswapV2LiquidityPositionSnapshotV2DTO> uniswapV2GetLiquidityPositionSnapshotV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionSnapshotV2s (historical) 🔥

Gets liquiditypositionsnapshotv2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final id = id_example; // String | 
final user = user_example; // String | 
final pair = pair_example; // String | 

try {
    final result = api_instance.uniswapV2GetLiquidityPositionSnapshotV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetLiquidityPositionSnapshotV2sHistorical: $e\n');
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

[**List<UniswapV2LiquidityPositionSnapshotV2DTO>**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetLiquidityPositionV2sHistorical**
> List<UniswapV2LiquidityPositionV2DTO> uniswapV2GetLiquidityPositionV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair)

LiquidityPositionV2s (historical) 🔥

Gets liquiditypositionv2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | User address and pair address concatenated with a dash.
final user = user_example; // String | Reference to user.
final pair = pair_example; // String | Reference to the pair liquidity is being provided on.

try {
    final result = api_instance.uniswapV2GetLiquidityPositionV2sHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetLiquidityPositionV2sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| User address and pair address concatenated with a dash. | [optional] 
 **user** | **String**| Reference to user. | [optional] 
 **pair** | **String**| Reference to the pair liquidity is being provided on. | [optional] 

### Return type

[**List<UniswapV2LiquidityPositionV2DTO>**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetMintV2sHistorical**
> List<UniswapV2MintV2DTO> uniswapV2GetMintV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

MintV2s (historical) 🔥

Gets mintv2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash plus index in the transaction mint array.
final pair = pair_example; // String | Reference to pair.

try {
    final result = api_instance.uniswapV2GetMintV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetMintV2sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Transaction hash plus index in the transaction mint array. | [optional] 
 **pair** | **String**| Reference to pair. | [optional] 

### Return type

[**List<UniswapV2MintV2DTO>**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairDayDataV2sHistorical**
> List<UniswapV2PairDayDataV2DTO> uniswapV2GetPairDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

PairDayDataV2s (historical) 🔥

Gets pairdaydatav2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 
final token0 = token0_example; // String | Reference to token0.
final token1 = token1_example; // String | Reference to token1.

try {
    final result = api_instance.uniswapV2GetPairDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPairDayDataV2sHistorical: $e\n');
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
 **token0** | **String**| Reference to token0. | [optional] 
 **token1** | **String**| Reference to token1. | [optional] 

### Return type

[**List<UniswapV2PairDayDataV2DTO>**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairHourDataV2sHistorical**
> List<UniswapV2PairHourDataV2DTO> uniswapV2GetPairHourDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

PairHourDataV2s (historical) 🔥

Gets pairhourdatav2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | 
final pair = pair_example; // String | Address for pair contract.

try {
    final result = api_instance.uniswapV2GetPairHourDataV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPairHourDataV2sHistorical: $e\n');
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
 **pair** | **String**| Address for pair contract. | [optional] 

### Return type

[**List<UniswapV2PairHourDataV2DTO>**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetPairV2sHistorical**
> List<UniswapV2PairV2DTO> uniswapV2GetPairV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1)

PairV2s (historical) 🔥

Gets pairv2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Pair contract address.
final token0 = token0_example; // String | Reference to token0 as stored in pair contract.
final token1 = token1_example; // String | Reference to token1 as stored in pair contract.

try {
    final result = api_instance.uniswapV2GetPairV2sHistorical(startBlock, endBlock, startDate, endDate, id, token0, token1);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetPairV2sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Pair contract address. | [optional] 
 **token0** | **String**| Reference to token0 as stored in pair contract. | [optional] 
 **token1** | **String**| Reference to token1 as stored in pair contract. | [optional] 

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

# **uniswapV2GetSwapV2sHistorical**
> List<UniswapV2SwapV2DTO> uniswapV2GetSwapV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair)

SwapV2s (historical) 🔥

Gets swapv2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Transaction hash plus index in Transaction swap array.
final pair = pair_example; // String | Reference to pair.

try {
    final result = api_instance.uniswapV2GetSwapV2sHistorical(startBlock, endBlock, startDate, endDate, id, pair);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetSwapV2sHistorical: $e\n');
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

# **uniswapV2GetTokenDayDataV2sHistorical**
> List<UniswapV2TokenDayDataV2DTO> uniswapV2GetTokenDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id)

TokenDayDataV2s (historical) 🔥

Gets tokendaydatav2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.

try {
    final result = api_instance.uniswapV2GetTokenDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTokenDayDataV2sHistorical: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startBlock** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **endBlock** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **startDate** | **DateTime**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **endDate** | **DateTime**| The end date of timeframe. | [optional] 
 **id** | **String**| Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] 

### Return type

[**List<UniswapV2TokenDayDataV2DTO>**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetTokenV2sHistorical**
> List<UniswapV2TokenV2DTO> uniswapV2GetTokenV2sHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name)

TokenV2s (historical) 🔥

Gets tokenv2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Token address.
final symbol = symbol_example; // String | Token symbol.
final name = name_example; // String | Token name.

try {
    final result = api_instance.uniswapV2GetTokenV2sHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTokenV2sHistorical: $e\n');
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

# **uniswapV2GetTransactionV2sHistorical**
> List<UniswapV2TransactionV2DTO> uniswapV2GetTransactionV2sHistorical(startBlock, endBlock, startDate, endDate, id)

TransactionV2s (historical) 🔥

Gets transactionv2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Ethereum transaction hash.

try {
    final result = api_instance.uniswapV2GetTransactionV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetTransactionV2sHistorical: $e\n');
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

[**List<UniswapV2TransactionV2DTO>**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUniswapDayDataV2sHistorical**
> List<UniswapV2UniswapDayDataV2DTO> uniswapV2GetUniswapDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapDayDataV2s (historical) 🔥

Gets uniswapdaydatav2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Unix timestamp for start of day / 86400 giving a unique day index.

try {
    final result = api_instance.uniswapV2GetUniswapDayDataV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetUniswapDayDataV2sHistorical: $e\n');
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

[**List<UniswapV2UniswapDayDataV2DTO>**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUniswapFactoryV2sHistorical**
> List<UniswapV2UniswapFactoryV2DTO> uniswapV2GetUniswapFactoryV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UniswapFactoryV2s (historical) 🔥

Gets uniswapfactoryv2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | Factory address.

try {
    final result = api_instance.uniswapV2GetUniswapFactoryV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetUniswapFactoryV2sHistorical: $e\n');
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

[**List<UniswapV2UniswapFactoryV2DTO>**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswapV2GetUserV2sHistorical**
> List<UniswapV2UserV2DTO> uniswapV2GetUserV2sHistorical(startBlock, endBlock, startDate, endDate, id)

UserV2s (historical) 🔥

Gets userv2s.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV2Api();
final startBlock = 789; // int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
final endBlock = 789; // int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | The end date of timeframe.
final id = id_example; // String | User address.

try {
    final result = api_instance.uniswapV2GetUserV2sHistorical(startBlock, endBlock, startDate, endDate, id);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV2Api->uniswapV2GetUserV2sHistorical: $e\n');
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

[**List<UniswapV2UserV2DTO>**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

