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
> List<BundleV3DTO> dappsUniswapv3BundleCurrentGet()

GetBundles

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.dappsUniswapv3BundleCurrentGet();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3BundleCurrentGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<BundleV3DTO>**](BundleV3DTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsUniswapv3BundlesHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
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
> List<BurnV3DTO> dappsUniswapv3BurnsCurrentGet(filterPoolId)

GetBurns

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv3BurnsCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3BurnsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<BurnV3DTO>**](BurnV3DTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv3BurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsUniswapv3DayDataHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
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
> List<FactoryV3DTO> dappsUniswapv3FactoryCurrentGet(chainId)

GetFactory

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | 

try {
    final result = api_instance.dappsUniswapv3FactoryCurrentGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3FactoryCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 

### Return type

[**List<FactoryV3DTO>**](FactoryV3DTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsUniswapv3FactoryHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
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
> List<MintV3DTO> dappsUniswapv3MintsCurrentGet(filterPoolId)

GetMints

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv3MintsCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3MintsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<MintV3DTO>**](MintV3DTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv3MintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
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

# **dappsUniswapv3PoolDayDataHistoricalGet**
> dappsUniswapv3PoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv3PoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv3PoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
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
> List<PoolV3DTO> dappsUniswapv3PoolsCurrentGet(filterPoolId)

GetPools

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv3PoolsCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PoolsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PoolV3DTO>**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3PoolsDayDataCurrentGet**
> List<PoolDayDataV3DTO> dappsUniswapv3PoolsDayDataCurrentGet(filterPoolId)

GetPoolsDayData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv3PoolsDayDataCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PoolsDayDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PoolDayDataV3DTO>**](PoolDayDataV3DTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv3PoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
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
> List<PoolHourDataV3DTO> dappsUniswapv3PoolsHourDataCurrentGet(filterPoolId)

GetPoolsHourData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv3PoolsHourDataCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PoolsHourDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PoolHourDataV3DTO>**](PoolHourDataV3DTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv3PositionSnapshotHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
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
> List<PositionSnapshotV3DTO> dappsUniswapv3PositionSnapshotsCurrentGet(filterPoolId)

GetPositionSnapshot

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv3PositionSnapshotsCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PositionSnapshotsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PositionSnapshotV3DTO>**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3PositionsCurrentGet**
> List<PositionV3DTO> dappsUniswapv3PositionsCurrentGet(filterPoolId)

GetPositions

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv3PositionsCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3PositionsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PositionV3DTO>**](PositionV3DTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv3PositionsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
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
> List<SwapV3DTO> dappsUniswapv3SwapsCurrentGet(filterPoolId)

GetSwaps

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv3SwapsCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3SwapsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<SwapV3DTO>**](SwapV3DTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv3SwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv3TickDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
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
> List<TickV3DTO> dappsUniswapv3TicksCurrentGet(filterPoolId)

GetTicks

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv3TicksCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TicksCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<TickV3DTO>**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3TicksDayDataCurrentGet**
> List<TickDayDataV3DTO> dappsUniswapv3TicksDayDataCurrentGet(filterPoolId)

GetTicksDayData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.dappsUniswapv3TicksDayDataCurrentGet(filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TicksDayDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<TickDayDataV3DTO>**](TickDayDataV3DTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.dappsUniswapv3TicksHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.dappsUniswapv3TokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.dappsUniswapv3TokenHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
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
> List<TokenV3DTO> dappsUniswapv3TokensCurrentGet(filterTokenId)

GetTokens

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterTokenId = filterTokenId_example; // String | 

try {
    final result = api_instance.dappsUniswapv3TokensCurrentGet(filterTokenId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TokensCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**List<TokenV3DTO>**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dappsUniswapv3TokensDayDataCurrentGet**
> List<TokenV3DayDataDTO> dappsUniswapv3TokensDayDataCurrentGet(filterTokenId)

GetTokensDayData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterTokenId = filterTokenId_example; // String | 

try {
    final result = api_instance.dappsUniswapv3TokensDayDataCurrentGet(filterTokenId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TokensDayDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**List<TokenV3DayDataDTO>**](TokenV3DayDataDTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    api_instance.dappsUniswapv3TokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
} catch (e) {
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
> List<TokenHourDataV3DTO> dappsUniswapv3TokensHourDataCurrentGet(filterTokenId)

GetTokensHourData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final filterTokenId = filterTokenId_example; // String | 

try {
    final result = api_instance.dappsUniswapv3TokensHourDataCurrentGet(filterTokenId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3TokensHourDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**List<TokenHourDataV3DTO>**](TokenHourDataV3DTO.md)

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

final api_instance = UniswapV3Api();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.dappsUniswapv3TransactionsHistoricalGet(startBlock, endBlock, startDate, endDate);
} catch (e) {
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
> List<UniswapDayDataV3DTO> dappsUniswapv3UniswapDayDataCurrentGet()

GetUniswapDayData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();

try {
    final result = api_instance.dappsUniswapv3UniswapDayDataCurrentGet();
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->dappsUniswapv3UniswapDayDataCurrentGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UniswapDayDataV3DTO>**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

