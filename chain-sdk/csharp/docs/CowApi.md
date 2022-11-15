# CoinAPI.EMS.REST.V1.Api.CowApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CowGetOrderDTOsHistorical**](CowApi.md#cowgetorderdtoshistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
[**CowGetOrdersHistorical**](CowApi.md#cowgetordershistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
[**CowGetSettlementDTOsHistorical**](CowApi.md#cowgetsettlementdtoshistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
[**CowGetSettlementsHistorical**](CowApi.md#cowgetsettlementshistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
[**CowGetTokenDTOsHistorical**](CowApi.md#cowgettokendtoshistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
[**CowGetTokensHistorical**](CowApi.md#cowgettokenshistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
[**CowGetTradeDTOsHistorical**](CowApi.md#cowgettradedtoshistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
[**CowGetTradesHistorical**](CowApi.md#cowgettradeshistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
[**CowGetUserDTOsHistorical**](CowApi.md#cowgetuserdtoshistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
[**CowGetUsersHistorical**](CowApi.md#cowgetusershistorical) | **GET** /dapps/cow/users/historical | Users (historical)



## CowGetOrderDTOsHistorical

> List&lt;CowOrderDTO&gt; CowGetOrderDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetOrderDTOsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                // OrderDTOs (historical) 🔥
                List<CowOrderDTO> result = apiInstance.CowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetOrderDTOsHistorical: " + e.Message );
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
 **poolId** | **string**|  | [optional] 

### Return type

[**List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetOrdersHistorical

> List&lt;CowOrderDTO&gt; CowGetOrdersHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

Orders (historical)

Gets orders.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetOrdersHistoricalExample
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
                // Orders (historical)
                List<CowOrderDTO> result = apiInstance.CowGetOrdersHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetOrdersHistorical: " + e.Message );
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

[**List&lt;CowOrderDTO&gt;**](CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetSettlementDTOsHistorical

> List&lt;CowSettlementDTO&gt; CowGetSettlementDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

SettlementDTOs (historical) 🔥

Gets SettlementDTOs.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetSettlementDTOsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                // SettlementDTOs (historical) 🔥
                List<CowSettlementDTO> result = apiInstance.CowGetSettlementDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetSettlementDTOsHistorical: " + e.Message );
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
 **poolId** | **string**|  | [optional] 

### Return type

[**List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetSettlementsHistorical

> List&lt;CowSettlementDTO&gt; CowGetSettlementsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

Settlements (historical)

Gets settlements.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetSettlementsHistoricalExample
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
                // Settlements (historical)
                List<CowSettlementDTO> result = apiInstance.CowGetSettlementsHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetSettlementsHistorical: " + e.Message );
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

[**List&lt;CowSettlementDTO&gt;**](CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetTokenDTOsHistorical

> List&lt;CowTokenDTO&gt; CowGetTokenDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetTokenDTOsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                // TokenDTOs (historical) 🔥
                List<CowTokenDTO> result = apiInstance.CowGetTokenDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetTokenDTOsHistorical: " + e.Message );
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
 **poolId** | **string**|  | [optional] 

### Return type

[**List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetTokensHistorical

> List&lt;CowTokenDTO&gt; CowGetTokensHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string tokenId = null)

Tokens (historical) 🔥

Gets tokens.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetTokensHistoricalExample
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
                // Tokens (historical) 🔥
                List<CowTokenDTO> result = apiInstance.CowGetTokensHistorical(startBlock, endBlock, startDate, endDate, tokenId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetTokensHistorical: " + e.Message );
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

[**List&lt;CowTokenDTO&gt;**](CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetTradeDTOsHistorical

> List&lt;CowTradeDTO&gt; CowGetTradeDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetTradeDTOsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                // TradeDTOs (historical) 🔥
                List<CowTradeDTO> result = apiInstance.CowGetTradeDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetTradeDTOsHistorical: " + e.Message );
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
 **poolId** | **string**|  | [optional] 

### Return type

[**List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetTradesHistorical

> List&lt;CowTradeDTO&gt; CowGetTradesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

Trades (historical) 🔥

Gets trades.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetTradesHistoricalExample
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
                // Trades (historical) 🔥
                List<CowTradeDTO> result = apiInstance.CowGetTradesHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetTradesHistorical: " + e.Message );
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

[**List&lt;CowTradeDTO&gt;**](CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetUserDTOsHistorical

> List&lt;CowUserDTO&gt; CowGetUserDTOsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetUserDTOsHistoricalExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new CowApi(Configuration.Default);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                // UserDTOs (historical) 🔥
                List<CowUserDTO> result = apiInstance.CowGetUserDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetUserDTOsHistorical: " + e.Message );
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
 **poolId** | **string**|  | [optional] 

### Return type

[**List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CowGetUsersHistorical

> List&lt;CowUserDTO&gt; CowGetUsersHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)

Users (historical)

Gets users.

### Example

```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class CowGetUsersHistoricalExample
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
                // Users (historical)
                List<CowUserDTO> result = apiInstance.CowGetUsersHistorical(startBlock, endBlock, startDate, endDate);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling CowApi.CowGetUsersHistorical: " + e.Message );
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

[**List&lt;CowUserDTO&gt;**](CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

