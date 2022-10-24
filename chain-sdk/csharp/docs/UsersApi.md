# CoinAPI.EMS.REST.V1.Api.UsersApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsCowUsersHistoricalGet**](UsersApi.md#chainschainiddappscowusershistoricalget) | **GET** /chains/{chain_id}/dapps/cow/users/historical | 
[**ChainsChainIdDappsSushiswapUsersHistoricalGet**](UsersApi.md#chainschainiddappssushiswapusershistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/users/historical | 
[**ChainsChainIdDappsUniswapv2UsersHistoricalGet**](UsersApi.md#chainschainiddappsuniswapv2usershistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/users/historical | 



## ChainsChainIdDappsCowUsersHistoricalGet

> void ChainsChainIdDappsCowUsersHistoricalGet (string chainId, long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsCowUsersHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UsersApi(Configuration.Default);
            var chainId = "chainId_example";  // string | 
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.ChainsChainIdDappsCowUsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UsersApi.ChainsChainIdDappsCowUsersHistoricalGet: " + e.Message );
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


## ChainsChainIdDappsSushiswapUsersHistoricalGet

> void ChainsChainIdDappsSushiswapUsersHistoricalGet (string chainId, long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsSushiswapUsersHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UsersApi(Configuration.Default);
            var chainId = "chainId_example";  // string | 
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.ChainsChainIdDappsSushiswapUsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UsersApi.ChainsChainIdDappsSushiswapUsersHistoricalGet: " + e.Message );
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


## ChainsChainIdDappsUniswapv2UsersHistoricalGet

> void ChainsChainIdDappsUniswapv2UsersHistoricalGet (string chainId, long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv2UsersHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UsersApi(Configuration.Default);
            var chainId = "chainId_example";  // string | 
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.ChainsChainIdDappsUniswapv2UsersHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UsersApi.ChainsChainIdDappsUniswapv2UsersHistoricalGet: " + e.Message );
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

