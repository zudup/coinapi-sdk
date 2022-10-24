# openapi.api.BurnsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsSushiswapBurnsHistoricalGet**](BurnsApi.md#chainschainiddappssushiswapburnshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/burns/historical | 
[**chainsChainIdDappsUniswapv2BurnsHistoricalGet**](BurnsApi.md#chainschainiddappsuniswapv2burnshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/burns/historical | 
[**chainsChainIdDappsUniswapv3BurnsHistoricalGet**](BurnsApi.md#chainschainiddappsuniswapv3burnshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/historical | 


# **chainsChainIdDappsSushiswapBurnsHistoricalGet**
> chainsChainIdDappsSushiswapBurnsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BurnsApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.chainsChainIdDappsSushiswapBurnsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling BurnsApi->chainsChainIdDappsSushiswapBurnsHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 
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

# **chainsChainIdDappsUniswapv2BurnsHistoricalGet**
> chainsChainIdDappsUniswapv2BurnsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BurnsApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.chainsChainIdDappsUniswapv2BurnsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling BurnsApi->chainsChainIdDappsUniswapv2BurnsHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 
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

# **chainsChainIdDappsUniswapv3BurnsHistoricalGet**
> chainsChainIdDappsUniswapv3BurnsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BurnsApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final poolId = poolId_example; // String | 

try {
    api_instance.chainsChainIdDappsUniswapv3BurnsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch (e) {
    print('Exception when calling BurnsApi->chainsChainIdDappsUniswapv3BurnsHistoricalGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  | 
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

