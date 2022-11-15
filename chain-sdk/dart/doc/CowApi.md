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
> List<CowOrderDTO> cowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.cowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<CowOrderDTO>**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetOrdersHistorical**
> List<CowOrderDTO> cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate)

Orders (historical)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<CowOrderDTO>**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetSettlementDTOsHistorical**
> List<CowSettlementDTO> cowGetSettlementDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SettlementDTOs (historical) 🔥

Gets SettlementDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.cowGetSettlementDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<CowSettlementDTO>**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetSettlementsHistorical**
> List<CowSettlementDTO> cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate)

Settlements (historical)

Gets settlements.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.cowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<CowSettlementDTO>**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTokenDTOsHistorical**
> List<CowTokenDTO> cowGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.cowGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<CowTokenDTO>**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTokensHistorical**
> List<CowTokenDTO> cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    final result = api_instance.cowGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
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

[**List<CowTokenDTO>**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTradeDTOsHistorical**
> List<CowTradeDTO> cowGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.cowGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<CowTradeDTO>**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetTradesHistorical**
> List<CowTradeDTO> cowGetTradesHistorical(startBlock, endBlock, startDate, endDate)

Trades (historical) 🔥

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.cowGetTradesHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<CowTradeDTO>**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetUserDTOsHistorical**
> List<CowUserDTO> cowGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.cowGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
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

[**List<CowUserDTO>**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cowGetUsersHistorical**
> List<CowUserDTO> cowGetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CowApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.cowGetUsersHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
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

[**List<CowUserDTO>**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

