# CoinAPI.EMS.REST.V1.Api.TransferOwnershipEventApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet**](TransferOwnershipEventApi.md#chainschainiddappscurvetransferownershipeventhistoricalget) | **GET** /chains/{chain_id}/dapps/curve/transferOwnershipEvent/historical |  |

<a name="chainschainiddappscurvetransferownershipeventhistoricalget"></a>
# **ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet**
> void ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet (string chainId, long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new TransferOwnershipEventApi(config);
            var chainId = "chainId_example";  // string | 
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling TransferOwnershipEventApi.ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGetWithHttpInfo(chainId, startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling TransferOwnershipEventApi.ChainsChainIdDappsCurveTransferOwnershipEventHistoricalGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** |  |  |
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **poolId** | **string** |  | [optional]  |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
