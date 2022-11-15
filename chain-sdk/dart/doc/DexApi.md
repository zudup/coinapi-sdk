# openapi.api.DexApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dexGetBatchDTOsHistorical**](DexApi.md#dexgetbatchdtoshistorical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
[**dexGetBatchesHistorical**](DexApi.md#dexgetbatcheshistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
[**dexGetDepositDTOsHistorical**](DexApi.md#dexgetdepositdtoshistorical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
[**dexGetDepositsHistorical**](DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
[**dexGetOrderDTOsHistorical**](DexApi.md#dexgetorderdtoshistorical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**dexGetOrdersHistorical**](DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
[**dexGetPriceDTOsHistorical**](DexApi.md#dexgetpricedtoshistorical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
[**dexGetPricesHistorical**](DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
[**dexGetSolutionDTOsHistorical**](DexApi.md#dexgetsolutiondtoshistorical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
[**dexGetSolutionsHistorical**](DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
[**dexGetStatsDTOsHistorical**](DexApi.md#dexgetstatsdtoshistorical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
[**dexGetStatsHistorical**](DexApi.md#dexgetstatshistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
[**dexGetTokenDTOsHistorical**](DexApi.md#dexgettokendtoshistorical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**dexGetTokensHistorical**](DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
[**dexGetTradeDTOsHistorical**](DexApi.md#dexgettradedtoshistorical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**dexGetTradesHistorical**](DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
[**dexGetUserDTOsHistorical**](DexApi.md#dexgetuserdtoshistorical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
[**dexGetUsersHistorical**](DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical | Users (historical)
[**dexGetWithdrawDTOsHistorical**](DexApi.md#dexgetwithdrawdtoshistorical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
[**dexGetWithdrawRequestDTOsHistorical**](DexApi.md#dexgetwithdrawrequestdtoshistorical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
[**dexGetWithdrawsHistorical**](DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
[**dexGetWithdrawsRequestsHistorical**](DexApi.md#dexgetwithdrawsrequestshistorical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)


# **dexGetBatchDTOsHistorical**
> List<DexBatchDTO> dexGetBatchDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

BatchDTOs (historical) 🔥

Gets BatchDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetBatchDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetBatchDTOsHistorical: $e\n');
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

[**List<DexBatchDTO>**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetBatchesHistorical**
> List<DexBatchDTO> dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate)

Batches (historical)

Gets batches.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.dexGetBatchesHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetBatchesHistorical: $e\n');
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

[**List<DexBatchDTO>**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetDepositDTOsHistorical**
> List<DexDepositDTO> dexGetDepositDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

DepositDTOs (historical) 🔥

Gets DepositDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetDepositDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetDepositDTOsHistorical: $e\n');
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

[**List<DexDepositDTO>**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetDepositsHistorical**
> List<DexDepositDTO> dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Deposits (historical)

Gets deposits.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    final result = api_instance.dexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetDepositsHistorical: $e\n');
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

[**List<DexDepositDTO>**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetOrderDTOsHistorical**
> List<DexOrderDTO> dexGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetOrderDTOsHistorical: $e\n');
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

[**List<DexOrderDTO>**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetOrdersHistorical**
> List<DexOrderDTO> dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Orders (historical)

Gets orders.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    final result = api_instance.dexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetOrdersHistorical: $e\n');
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

[**List<DexOrderDTO>**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetPriceDTOsHistorical**
> List<DexPriceDTO> dexGetPriceDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

PriceDTOs (historical) 🔥

Gets PriceDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetPriceDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetPriceDTOsHistorical: $e\n');
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

[**List<DexPriceDTO>**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetPricesHistorical**
> List<DexPriceDTO> dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Prices (historical)

Gets prices.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    final result = api_instance.dexGetPricesHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetPricesHistorical: $e\n');
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

[**List<DexPriceDTO>**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetSolutionDTOsHistorical**
> List<DexSolutionDTO> dexGetSolutionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

SolutionDTOs (historical) 🔥

Gets SolutionDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetSolutionDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetSolutionDTOsHistorical: $e\n');
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

[**List<DexSolutionDTO>**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetSolutionsHistorical**
> List<DexSolutionDTO> dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Solutions (historical)

Gets solutions.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    final result = api_instance.dexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetSolutionsHistorical: $e\n');
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

[**List<DexSolutionDTO>**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetStatsDTOsHistorical**
> List<DexStatsDTO> dexGetStatsDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

StatsDTOs (historical) 🔥

Gets StatsDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetStatsDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetStatsDTOsHistorical: $e\n');
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

[**List<DexStatsDTO>**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetStatsHistorical**
> List<DexStatsDTO> dexGetStatsHistorical(startBlock, endBlock, startDate, endDate)

Stats (historical)

Gets stats.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.dexGetStatsHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetStatsHistorical: $e\n');
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

[**List<DexStatsDTO>**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetTokenDTOsHistorical**
> List<DexTokenDTO> dexGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetTokenDTOsHistorical: $e\n');
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

[**List<DexTokenDTO>**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetTokensHistorical**
> List<DexTokenDTO> dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Tokens (historical) 🔥

Gets tokens.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    final result = api_instance.dexGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetTokensHistorical: $e\n');
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

[**List<DexTokenDTO>**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetTradeDTOsHistorical**
> List<DexTradeDTO> dexGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetTradeDTOsHistorical: $e\n');
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

[**List<DexTradeDTO>**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetTradesHistorical**
> List<DexTradeDTO> dexGetTradesHistorical(startBlock, endBlock, startDate, endDate)

Trades (historical) 🔥

Gets trades.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.dexGetTradesHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetTradesHistorical: $e\n');
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

[**List<DexTradeDTO>**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetUserDTOsHistorical**
> List<DexUserDTO> dexGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetUserDTOsHistorical: $e\n');
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

[**List<DexUserDTO>**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetUsersHistorical**
> List<DexUserDTO> dexGetUsersHistorical(startBlock, endBlock, startDate, endDate)

Users (historical)

Gets users.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    final result = api_instance.dexGetUsersHistorical(startBlock, endBlock, startDate, endDate);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetUsersHistorical: $e\n');
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

[**List<DexUserDTO>**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetWithdrawDTOsHistorical**
> List<DexWithdrawDTO> dexGetWithdrawDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

WithdrawDTOs (historical) 🔥

Gets WithdrawDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetWithdrawDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetWithdrawDTOsHistorical: $e\n');
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

[**List<DexWithdrawDTO>**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetWithdrawRequestDTOsHistorical**
> List<DexWithdrawRequestDTO> dexGetWithdrawRequestDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId)

WithdrawRequestDTOs (historical) 🔥

Gets WithdrawRequestDTOs.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    final result = api_instance.dexGetWithdrawRequestDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetWithdrawRequestDTOsHistorical: $e\n');
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

[**List<DexWithdrawRequestDTO>**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetWithdrawsHistorical**
> List<DexWithdrawDTO> dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

Withdraws (historical)

Gets withdraws.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    final result = api_instance.dexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetWithdrawsHistorical: $e\n');
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

[**List<DexWithdrawDTO>**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dexGetWithdrawsRequestsHistorical**
> List<DexWithdrawRequestDTO> dexGetWithdrawsRequestsHistorical(startBlock, endBlock, startDate, endDate, tokenId)

WithdrawsRequests (historical)

Gets withdraws requests.

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DexApi();
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final tokenId = tokenId_example; // String | 

try {
    final result = api_instance.dexGetWithdrawsRequestsHistorical(startBlock, endBlock, startDate, endDate, tokenId);
    print(result);
} catch (e) {
    print('Exception when calling DexApi->dexGetWithdrawsRequestsHistorical: $e\n');
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

[**List<DexWithdrawRequestDTO>**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

