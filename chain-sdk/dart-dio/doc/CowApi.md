# openapi.api.CowApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cowGetOrderDTOsHistorical**](CowApi.md#cowgetorderdtoshistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**cowGetOrdersHistorical**](CowApi.md#cowgetordershistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**cowGetSettlementDTOsHistorical**](CowApi.md#cowgetsettlementdtoshistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
[**cowGetSettlementsHistorical**](CowApi.md#cowgetsettlementshistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**cowGetTokenDTOsHistorical**](CowApi.md#cowgettokendtoshistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**cowGetTokensHistorical**](CowApi.md#cowgettokenshistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
[**cowGetTradeDTOsHistorical**](CowApi.md#cowgettradedtoshistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**cowGetTradesHistorical**](CowApi.md#cowgettradeshistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
[**cowGetUserDTOsHistorical**](CowApi.md#cowgetuserdtoshistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
[**cowGetUsersHistorical**](CowApi.md#cowgetusershistorical) | **GET** /dapps/cow/users/historical | Users (historical)


# **cowGetOrderDTOsHistorical**
> BuiltList<CowOrderDTO> cowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.cowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetOrderDTOsHistorical: $e\n');
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

[**BuiltList&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetOrdersHistorical**
> BuiltList<CowOrderDTO> cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate)

Orders (historical)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetOrdersHistorical: $e\n');
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

[**BuiltList&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetSettlementDTOsHistorical**
> BuiltList<CowSettlementDTO> cowGetSettlementDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SettlementDTOs (historical) 🔥

Gets SettlementDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.cowGetSettlementDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetSettlementDTOsHistorical: $e\n');
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

[**BuiltList&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetSettlementsHistorical**
> BuiltList<CowSettlementDTO> cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate)

Settlements (historical)

Gets settlements.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetSettlementsHistorical: $e\n');
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

[**BuiltList&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTokenDTOsHistorical**
> BuiltList<CowTokenDTO> cowGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.cowGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetTokenDTOsHistorical: $e\n');
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

[**BuiltList&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTokensHistorical**
> BuiltList<CowTokenDTO> cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String tokenId = tokenId_example; // String | 

try {
    final response = api.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetTokensHistorical: $e\n');
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

[**BuiltList&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTradeDTOsHistorical**
> BuiltList<CowTradeDTO> cowGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.cowGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetTradeDTOsHistorical: $e\n');
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

[**BuiltList&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTradesHistorical**
> BuiltList<CowTradeDTO> cowGetTradesHistorical(startBlock, endBlock, startDate, endDate)

Trades (historical) 🔥

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetTradesHistorical: $e\n');
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

[**BuiltList&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetUserDTOsHistorical**
> BuiltList<CowUserDTO> cowGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    final response = api.cowGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetUserDTOsHistorical: $e\n');
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

[**BuiltList&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetUsersHistorical**
> BuiltList<CowUserDTO> cowGetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api = Openapi().getCowApi();
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final response = api.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate);
    print(response);
} catch on DioError (e) {
    print('Exception when calling CowApi->cowGetUsersHistorical: $e\n');
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

[**BuiltList&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

