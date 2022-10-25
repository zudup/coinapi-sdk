# CoinAPI.EMS.REST.V1.Api.OrdersApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsCowOrdersHistoricalGet**](OrdersApi.md#chainschainiddappscowordershistoricalget) | **GET** /chains/{chain_id}/dapps/cow/orders/historical | 
[**ChainsChainIdDappsDexOrdersHistoricalGet**](OrdersApi.md#chainschainiddappsdexordershistoricalget) | **GET** /chains/{chain_id}/dapps/dex/orders/historical | 



## ChainsChainIdDappsCowOrdersHistoricalGet

> void ChainsChainIdDappsCowOrdersHistoricalGet (string chainId, long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsCowOrdersHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new OrdersApi(Configuration.Default);
            var chainId = "chainId_example";  // string | 
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.ChainsChainIdDappsCowOrdersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.ChainsChainIdDappsCowOrdersHistoricalGet: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string**|  | 
 **startBlock** | **long?**|  | [optional] 
 **endBlock** | **long?**|  | [optional] 
 **startDate** | **DateTime?**|  | [optional] 
 **endDate** | **DateTime?**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsDexOrdersHistoricalGet

> void ChainsChainIdDappsDexOrdersHistoricalGet (string chainId, long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string tokenId = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsDexOrdersHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new OrdersApi(Configuration.Default);
            var chainId = "chainId_example";  // string | 
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var tokenId = "tokenId_example";  // string |  (optional) 

            try
            {
                apiInstance.ChainsChainIdDappsDexOrdersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling OrdersApi.ChainsChainIdDappsDexOrdersHistoricalGet: " + e.Message );
                Debug.Print("Status Code: "+ e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string**|  | 
 **startBlock** | **long?**|  | [optional] 
 **endBlock** | **long?**|  | [optional] 
 **startDate** | **DateTime?**|  | [optional] 
 **endDate** | **DateTime?**|  | [optional] 
 **tokenId** | **string**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)
