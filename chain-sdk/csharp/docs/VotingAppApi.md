# CoinAPI.EMS.REST.V1.Api.VotingAppApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsCurveVotingAppHistoricalGet**](VotingAppApi.md#chainschainiddappscurvevotingapphistoricalget) | **GET** /chains/{chain_id}/dapps/curve/votingApp/historical | 



## ChainsChainIdDappsCurveVotingAppHistoricalGet

> void ChainsChainIdDappsCurveVotingAppHistoricalGet (string chainId, long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsCurveVotingAppHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new VotingAppApi(Configuration.Default);
            var chainId = "chainId_example";  // string | 
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.ChainsChainIdDappsCurveVotingAppHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling VotingAppApi.ChainsChainIdDappsCurveVotingAppHistoricalGet: " + e.Message );
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

