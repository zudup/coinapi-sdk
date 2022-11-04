# CoinAPI.EMS.REST.V1.Api.CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DappsCowOrdersHistoricalGet**](CowApi.md#dappscowordershistoricalget) | **GET** /dapps/cow/orders/historical | 
[**DappsCowSettlementHistoricalGet**](CowApi.md#dappscowsettlementhistoricalget) | **GET** /dapps/cow/settlement/historical | 
[**DappsCowTokensHistoricalGet**](CowApi.md#dappscowtokenshistoricalget) | **GET** /dapps/cow/tokens/historical | 
[**DappsCowTradesHistoricalGet**](CowApi.md#dappscowtradeshistoricalget) | **GET** /dapps/cow/trades/historical | 
[**DappsCowUsersHistoricalGet**](CowApi.md#dappscowusershistoricalget) | **GET** /dapps/cow/users/historical | 



## DappsCowOrdersHistoricalGet

> void DappsCowOrdersHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCowOrdersHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCowOrdersHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.DappsCowOrdersHistoricalGet: " + e.Message );
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


## DappsCowSettlementHistoricalGet

> void DappsCowSettlementHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCowSettlementHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCowSettlementHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.DappsCowSettlementHistoricalGet: " + e.Message );
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


## DappsCowTokensHistoricalGet

> void DappsCowTokensHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string tokenId = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCowTokensHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var tokenId = "tokenId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsCowTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.DappsCowTokensHistoricalGet: " + e.Message );
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


## DappsCowTradesHistoricalGet

> void DappsCowTradesHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCowTradesHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCowTradesHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.DappsCowTradesHistoricalGet: " + e.Message );
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


## DappsCowUsersHistoricalGet

> void DappsCowUsersHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsCowUsersHistoricalGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsCowUsersHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.DappsCowUsersHistoricalGet: " + e.Message );
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

