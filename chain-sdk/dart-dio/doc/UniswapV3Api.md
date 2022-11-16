# openapi.api.UniswapV3Api

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV3GetBundlesCurrent**](UniswapV3Api.md#uniswapv3getbundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**uniswapV3GetBurnsCurrent**](UniswapV3Api.md#uniswapv3getburnscurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**uniswapV3GetDayDataCurrent**](UniswapV3Api.md#uniswapv3getdaydatacurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
[**uniswapV3GetFactoryCurrent**](UniswapV3Api.md#uniswapv3getfactorycurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
[**uniswapV3GetMintsCurrent**](UniswapV3Api.md#uniswapv3getmintscurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**uniswapV3GetPoolsCurrent**](UniswapV3Api.md#uniswapv3getpoolscurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**uniswapV3GetPoolsDayDataCurrent**](UniswapV3Api.md#uniswapv3getpoolsdaydatacurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**uniswapV3GetPoolsHourDataCurrent**](UniswapV3Api.md#uniswapv3getpoolshourdatacurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**uniswapV3GetPositionsCurrent**](UniswapV3Api.md#uniswapv3getpositionscurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**uniswapV3GetPositionsSnapshotsCurrent**](UniswapV3Api.md#uniswapv3getpositionssnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**uniswapV3GetSwapsCurrent**](UniswapV3Api.md#uniswapv3getswapscurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**uniswapV3GetTicksCurrent**](UniswapV3Api.md#uniswapv3gettickscurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**uniswapV3GetTicksDayDataCurrent**](UniswapV3Api.md#uniswapv3getticksdaydatacurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**uniswapV3GetTokensCurrent**](UniswapV3Api.md#uniswapv3gettokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**uniswapV3GetTokensDayDataCurrent**](UniswapV3Api.md#uniswapv3gettokensdaydatacurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**uniswapV3GetTokensHourDataCurrent**](UniswapV3Api.md#uniswapv3gettokenshourdatacurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)


# **uniswapV3GetBundlesCurrent**
> BuiltList<UniswapV3BundleV3DTO> uniswapV3GetBundlesCurrent()

Bundles (current)

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

# **uniswapV3GetBurnsCurrent**
> BuiltList<UniswapV3BurnV3DTO> uniswapV3GetBurnsCurrent(filterPoolId)

Burns (current)

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

# **uniswapV3GetDayDataCurrent**
> BuiltList<UniswapV3UniswapDayDataV3DTO> uniswapV3GetDayDataCurrent()

DayData (current)

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

# **uniswapV3GetFactoryCurrent**
> BuiltList<UniswapV3FactoryV3DTO> uniswapV3GetFactoryCurrent()

Factory (current)

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

# **uniswapV3GetMintsCurrent**
> BuiltList<UniswapV3MintV3DTO> uniswapV3GetMintsCurrent(filterPoolId)

Mints (current)

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

# **uniswapV3GetPoolsCurrent**
> BuiltList<UniswapV3PoolV3DTO> uniswapV3GetPoolsCurrent(filterPoolId)

Pools (current) 🔥

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

PoolsDayData (current)

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

# **uniswapV3GetPoolsHourDataCurrent**
> BuiltList<UniswapV3PoolHourDataV3DTO> uniswapV3GetPoolsHourDataCurrent(filterPoolId)

PoolsHourData (current)

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

# **uniswapV3GetPositionsCurrent**
> BuiltList<UniswapV3PositionV3DTO> uniswapV3GetPositionsCurrent(filterPoolId)

Positions (current)

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

# **uniswapV3GetPositionsSnapshotsCurrent**
> BuiltList<UniswapV3PositionSnapshotV3DTO> uniswapV3GetPositionsSnapshotsCurrent(filterPoolId)

PositionsSnapshots (current)

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

Swaps (current) 🔥

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

# **uniswapV3GetTicksCurrent**
> BuiltList<UniswapV3TickV3DTO> uniswapV3GetTicksCurrent(filterPoolId)

Ticks (current)

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

TicksDayData (current)

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

# **uniswapV3GetTokensCurrent**
> BuiltList<UniswapV3TokenV3DTO> uniswapV3GetTokensCurrent(filterTokenId)

Tokens (current) 🔥

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

TokensDayData (current)

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

# **uniswapV3GetTokensHourDataCurrent**
> BuiltList<UniswapV3TokenHourDataV3DTO> uniswapV3GetTokensHourDataCurrent(filterTokenId)

TokensHourData (current)

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

