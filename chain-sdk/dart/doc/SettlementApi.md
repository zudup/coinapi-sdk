# openapi.api.SettlementApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCowSettlementHistoricalGet**](SettlementApi.md#chainschainiddappscowsettlementhistoricalget) | **GET** /chains/{chain_id}/dapps/cow/settlement/historical | 


# **chainsChainIdDappsCowSettlementHistoricalGet**
> chainsChainIdDappsCowSettlementHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SettlementApi();
final chainId = chainId_example; // String | 
final startBlock = 789; // int | 
final endBlock = 789; // int | 
final startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try {
    api_instance.chainsChainIdDappsCowSettlementHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
} catch (e) {
    print('Exception when calling SettlementApi->chainsChainIdDappsCowSettlementHistoricalGet: $e\n');
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

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

