# openapi.api.UniswapV3Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3bundlecurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**chainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3burnscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**chainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3factorycurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**chainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3mintscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**chainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3poolsdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3poolshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3positionsnapshotscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**chainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3positionscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**chainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**chainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tickscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3ticksdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**chainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tokensdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tokenshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3uniswapdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


# **chainsChainIdDappsUniswapv3BundleCurrentGet**
> List<BundleV3DTO> chainsChainIdDappsUniswapv3BundleCurrentGet(chainId)

GetBundles

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3BundleCurrentGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3BundleCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**List<BundleV3DTO>**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3BurnsCurrentGet**
> List<BurnV3DTO> chainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, filterPoolId)

GetBurns

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3BurnsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<BurnV3DTO>**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3FactoryCurrentGet**
> List<FactoryV3DTO> chainsChainIdDappsUniswapv3FactoryCurrentGet(chainId)

GetFactory

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3FactoryCurrentGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3FactoryCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**List<FactoryV3DTO>**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3MintsCurrentGet**
> List<MintV3DTO> chainsChainIdDappsUniswapv3MintsCurrentGet(chainId, filterPoolId)

GetMints

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3MintsCurrentGet(chainId, filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3MintsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<MintV3DTO>**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3PoolsCurrentGet**
> List<PoolV3DTO> chainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, filterPoolId)

GetPools

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3PoolsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PoolV3DTO>**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**
> List<PoolDayDataV3DTO> chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, filterPoolId)

GetPoolsDayData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PoolDayDataV3DTO>**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**
> List<PoolHourDataV3DTO> chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, filterPoolId)

GetPoolsHourData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PoolHourDataV3DTO>**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**
> List<PositionSnapshotV3DTO> chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, filterPoolId)

GetPositionSnapshot

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PositionSnapshotV3DTO>**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3PositionsCurrentGet**
> List<PositionV3DTO> chainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, filterPoolId)

GetPositions

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3PositionsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<PositionV3DTO>**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3SwapsCurrentGet**
> List<SwapV3DTO> chainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, filterPoolId)

GetSwaps

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3SwapsCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<SwapV3DTO>**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3TicksCurrentGet**
> List<TickV3DTO> chainsChainIdDappsUniswapv3TicksCurrentGet(chainId, filterPoolId)

GetTicks

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3TicksCurrentGet(chainId, filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3TicksCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<TickV3DTO>**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**
> List<TickDayDataV3DTO> chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, filterPoolId)

GetTicksDayData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterPoolId = filterPoolId_example; // String | Filter pool id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, filterPoolId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3TicksDayDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterPoolId** | **String**| Filter pool id | [optional] 

### Return type

[**List<TickDayDataV3DTO>**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3TokensCurrentGet**
> List<TokenV3DTO> chainsChainIdDappsUniswapv3TokensCurrentGet(chainId, filterTokenId)

GetTokens

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterTokenId = filterTokenId_example; // String | 

try {
    final result = api_instance.chainsChainIdDappsUniswapv3TokensCurrentGet(chainId, filterTokenId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3TokensCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**List<TokenV3DTO>**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**
> List<TokenV3DayDataDTO> chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, filterTokenId)

GetTokensDayData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterTokenId = filterTokenId_example; // String | 

try {
    final result = api_instance.chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, filterTokenId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3TokensDayDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**List<TokenV3DayDataDTO>**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**
> List<TokenHourDataV3DTO> chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, filterTokenId)

GetTokensHourData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id
final filterTokenId = filterTokenId_example; // String | 

try {
    final result = api_instance.chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, filterTokenId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3TokensHourDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 
 **filterTokenId** | **String**|  | [optional] 

### Return type

[**List<TokenHourDataV3DTO>**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**
> List<UniswapDayDataV3DTO> chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId)

GetUniswapDayData

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = UniswapV3Api();
final chainId = chainId_example; // String | Chain id

try {
    final result = api_instance.chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId);
    print(result);
} catch (e) {
    print('Exception when calling UniswapV3Api->chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**| Chain id | 

### Return type

[**List<UniswapDayDataV3DTO>**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

