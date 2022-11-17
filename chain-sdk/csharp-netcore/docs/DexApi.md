# CoinAPI.EMS.REST.V1.Api.DexApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DexBatchsCurrent**](DexApi.md#dexbatchscurrent) | **GET** /dapps/dex/batchs/current | Batchs (current) |
| [**DexDepositsCurrent**](DexApi.md#dexdepositscurrent) | **GET** /dapps/dex/deposits/current | Deposits (current) |
| [**DexGetBatchsHistorical**](DexApi.md#dexgetbatchshistorical) | **GET** /dapps/dex/batchs/historical | Batchs (historical) 🔥 |
| [**DexGetDepositsHistorical**](DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) 🔥 |
| [**DexGetOrdersHistorical**](DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) 🔥 |
| [**DexGetPricesHistorical**](DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) 🔥 |
| [**DexGetSolutionsHistorical**](DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) 🔥 |
| [**DexGetStatssHistorical**](DexApi.md#dexgetstatsshistorical) | **GET** /dapps/dex/statss/historical | Statss (historical) 🔥 |
| [**DexGetTokensHistorical**](DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥 |
| [**DexGetTradesHistorical**](DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥 |
| [**DexGetUsersHistorical**](DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical | Users (historical) 🔥 |
| [**DexGetWithdrawRequestsHistorical**](DexApi.md#dexgetwithdrawrequestshistorical) | **GET** /dapps/dex/withdrawRequests/historical | WithdrawRequests (historical) 🔥 |
| [**DexGetWithdrawsHistorical**](DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) 🔥 |
| [**DexOrdersCurrent**](DexApi.md#dexorderscurrent) | **GET** /dapps/dex/orders/current | Orders (current) |
| [**DexPricesCurrent**](DexApi.md#dexpricescurrent) | **GET** /dapps/dex/prices/current | Prices (current) |
| [**DexSolutionsCurrent**](DexApi.md#dexsolutionscurrent) | **GET** /dapps/dex/solutions/current | Solutions (current) |
| [**DexStatssCurrent**](DexApi.md#dexstatsscurrent) | **GET** /dapps/dex/statss/current | Statss (current) |
| [**DexTokensCurrent**](DexApi.md#dextokenscurrent) | **GET** /dapps/dex/tokens/current | Tokens (current) |
| [**DexTradesCurrent**](DexApi.md#dextradescurrent) | **GET** /dapps/dex/trades/current | Trades (current) |
| [**DexUsersCurrent**](DexApi.md#dexuserscurrent) | **GET** /dapps/dex/users/current | Users (current) |
| [**DexWithdrawRequestsCurrent**](DexApi.md#dexwithdrawrequestscurrent) | **GET** /dapps/dex/withdrawRequests/current | WithdrawRequests (current) |
| [**DexWithdrawsCurrent**](DexApi.md#dexwithdrawscurrent) | **GET** /dapps/dex/withdraws/current | Withdraws (current) |

<a name="dexbatchscurrent"></a>
# **DexBatchsCurrent**
> List&lt;DexBatchDTO&gt; DexBatchsCurrent ()

Batchs (current)

Gets batchs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexBatchsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // Batchs (current)
                List<DexBatchDTO> result = apiInstance.DexBatchsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexBatchsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexBatchsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Batchs (current)
    ApiResponse<List<DexBatchDTO>> response = apiInstance.DexBatchsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexBatchsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexdepositscurrent"></a>
# **DexDepositsCurrent**
> List&lt;DexDepositDTO&gt; DexDepositsCurrent ()

Deposits (current)

Gets deposits.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexDepositsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // Deposits (current)
                List<DexDepositDTO> result = apiInstance.DexDepositsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexDepositsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexDepositsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Deposits (current)
    ApiResponse<List<DexDepositDTO>> response = apiInstance.DexDepositsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexDepositsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgetbatchshistorical"></a>
# **DexGetBatchsHistorical**
> List&lt;DexBatchDTO&gt; DexGetBatchsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Batchs (historical) 🔥

Gets batchs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetBatchsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Identifier. (optional) 

            try
            {
                // Batchs (historical) 🔥
                List<DexBatchDTO> result = apiInstance.DexGetBatchsHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetBatchsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetBatchsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Batchs (historical) 🔥
    ApiResponse<List<DexBatchDTO>> response = apiInstance.DexGetBatchsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetBatchsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** | Identifier. | [optional]  |

### Return type

[**List&lt;DexBatchDTO&gt;**](DexBatchDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgetdepositshistorical"></a>
# **DexGetDepositsHistorical**
> List&lt;DexDepositDTO&gt; DexGetDepositsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string user = null)

Deposits (historical) 🔥

Gets deposits.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetDepositsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var user = "user_example";  // string |  (optional) 

            try
            {
                // Deposits (historical) 🔥
                List<DexDepositDTO> result = apiInstance.DexGetDepositsHistorical(startBlock, endBlock, startDate, endDate, id, user);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetDepositsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetDepositsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Deposits (historical) 🔥
    ApiResponse<List<DexDepositDTO>> response = apiInstance.DexGetDepositsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, user);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetDepositsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **user** | **string** |  | [optional]  |

### Return type

[**List&lt;DexDepositDTO&gt;**](DexDepositDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgetordershistorical"></a>
# **DexGetOrdersHistorical**
> List&lt;DexOrderDTO&gt; DexGetOrdersHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string buyToken = null, string sellToken = null)

Orders (historical) 🔥

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
    public class DexGetOrdersHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var buyToken = "buyToken_example";  // string |  (optional) 
            var sellToken = "sellToken_example";  // string |  (optional) 

            try
            {
                // Orders (historical) 🔥
                List<DexOrderDTO> result = apiInstance.DexGetOrdersHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetOrdersHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetOrdersHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Orders (historical) 🔥
    ApiResponse<List<DexOrderDTO>> response = apiInstance.DexGetOrdersHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetOrdersHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **buyToken** | **string** |  | [optional]  |
| **sellToken** | **string** |  | [optional]  |

### Return type

[**List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgetpriceshistorical"></a>
# **DexGetPricesHistorical**
> List&lt;DexPriceDTO&gt; DexGetPricesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Prices (historical) 🔥

Gets prices.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetPricesHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 

            try
            {
                // Prices (historical) 🔥
                List<DexPriceDTO> result = apiInstance.DexGetPricesHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetPricesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetPricesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Prices (historical) 🔥
    ApiResponse<List<DexPriceDTO>> response = apiInstance.DexGetPricesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetPricesHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |

### Return type

[**List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgetsolutionshistorical"></a>
# **DexGetSolutionsHistorical**
> List&lt;DexSolutionDTO&gt; DexGetSolutionsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Solutions (historical) 🔥

Gets solutions.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetSolutionsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string |  (optional) 

            try
            {
                // Solutions (historical) 🔥
                List<DexSolutionDTO> result = apiInstance.DexGetSolutionsHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetSolutionsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetSolutionsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Solutions (historical) 🔥
    ApiResponse<List<DexSolutionDTO>> response = apiInstance.DexGetSolutionsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetSolutionsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** |  | [optional]  |

### Return type

[**List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgetstatsshistorical"></a>
# **DexGetStatssHistorical**
> List&lt;DexStatsDTO&gt; DexGetStatssHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Statss (historical) 🔥

Gets statss.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetStatssHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string |  (optional) 

            try
            {
                // Statss (historical) 🔥
                List<DexStatsDTO> result = apiInstance.DexGetStatssHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetStatssHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetStatssHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Statss (historical) 🔥
    ApiResponse<List<DexStatsDTO>> response = apiInstance.DexGetStatssHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetStatssHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** |  | [optional]  |

### Return type

[**List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgettokenshistorical"></a>
# **DexGetTokensHistorical**
> List&lt;DexTokenDTO&gt; DexGetTokensHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string address = null, string symbol = null, string name = null)

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
    public class DexGetTokensHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string |  (optional) 
            var address = "address_example";  // string |  (optional) 
            var symbol = "symbol_example";  // string |  (optional) 
            var name = "name_example";  // string |  (optional) 

            try
            {
                // Tokens (historical) 🔥
                List<DexTokenDTO> result = apiInstance.DexGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, address, symbol, name);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetTokensHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetTokensHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Tokens (historical) 🔥
    ApiResponse<List<DexTokenDTO>> response = apiInstance.DexGetTokensHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, address, symbol, name);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetTokensHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** |  | [optional]  |
| **address** | **string** |  | [optional]  |
| **symbol** | **string** |  | [optional]  |
| **name** | **string** |  | [optional]  |

### Return type

[**List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgettradeshistorical"></a>
# **DexGetTradesHistorical**
> List&lt;DexTradeDTO&gt; DexGetTradesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string buyToken = null, string sellToken = null)

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
    public class DexGetTradesHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string |  (optional) 
            var buyToken = "buyToken_example";  // string |  (optional) 
            var sellToken = "sellToken_example";  // string |  (optional) 

            try
            {
                // Trades (historical) 🔥
                List<DexTradeDTO> result = apiInstance.DexGetTradesHistorical(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetTradesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetTradesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Trades (historical) 🔥
    ApiResponse<List<DexTradeDTO>> response = apiInstance.DexGetTradesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, buyToken, sellToken);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetTradesHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** |  | [optional]  |
| **buyToken** | **string** |  | [optional]  |
| **sellToken** | **string** |  | [optional]  |

### Return type

[**List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgetusershistorical"></a>
# **DexGetUsersHistorical**
> List&lt;DexUserDTO&gt; DexGetUsersHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Users (historical) 🔥

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
    public class DexGetUsersHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string |  (optional) 

            try
            {
                // Users (historical) 🔥
                List<DexUserDTO> result = apiInstance.DexGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetUsersHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetUsersHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Users (historical) 🔥
    ApiResponse<List<DexUserDTO>> response = apiInstance.DexGetUsersHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetUsersHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional]  |
| **endBlock** | **long?** | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional]  |
| **startDate** | **DateTime?** | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional]  |
| **endDate** | **DateTime?** | The end date of timeframe. | [optional]  |
| **id** | **string** |  | [optional]  |

### Return type

[**List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgetwithdrawrequestshistorical"></a>
# **DexGetWithdrawRequestsHistorical**
> List&lt;DexWithdrawRequestDTO&gt; DexGetWithdrawRequestsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string user = null)

WithdrawRequests (historical) 🔥

Gets withdrawRequests.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetWithdrawRequestsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var user = "user_example";  // string |  (optional) 

            try
            {
                // WithdrawRequests (historical) 🔥
                List<DexWithdrawRequestDTO> result = apiInstance.DexGetWithdrawRequestsHistorical(startBlock, endBlock, startDate, endDate, id, user);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetWithdrawRequestsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetWithdrawRequestsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // WithdrawRequests (historical) 🔥
    ApiResponse<List<DexWithdrawRequestDTO>> response = apiInstance.DexGetWithdrawRequestsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, user);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetWithdrawRequestsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **user** | **string** |  | [optional]  |

### Return type

[**List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexgetwithdrawshistorical"></a>
# **DexGetWithdrawsHistorical**
> List&lt;DexWithdrawDTO&gt; DexGetWithdrawsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string user = null)

Withdraws (historical) 🔥

Gets withdraws.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexGetWithdrawsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var user = "user_example";  // string |  (optional) 

            try
            {
                // Withdraws (historical) 🔥
                List<DexWithdrawDTO> result = apiInstance.DexGetWithdrawsHistorical(startBlock, endBlock, startDate, endDate, id, user);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexGetWithdrawsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexGetWithdrawsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Withdraws (historical) 🔥
    ApiResponse<List<DexWithdrawDTO>> response = apiInstance.DexGetWithdrawsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, user);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexGetWithdrawsHistoricalWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **startBlock** | **long?** |  | [optional]  |
| **endBlock** | **long?** |  | [optional]  |
| **startDate** | **DateTime?** |  | [optional]  |
| **endDate** | **DateTime?** |  | [optional]  |
| **id** | **string** |  | [optional]  |
| **user** | **string** |  | [optional]  |

### Return type

[**List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexorderscurrent"></a>
# **DexOrdersCurrent**
> List&lt;DexOrderDTO&gt; DexOrdersCurrent ()

Orders (current)

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
    public class DexOrdersCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // Orders (current)
                List<DexOrderDTO> result = apiInstance.DexOrdersCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexOrdersCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexOrdersCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Orders (current)
    ApiResponse<List<DexOrderDTO>> response = apiInstance.DexOrdersCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexOrdersCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexOrderDTO&gt;**](DexOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexpricescurrent"></a>
# **DexPricesCurrent**
> List&lt;DexPriceDTO&gt; DexPricesCurrent ()

Prices (current)

Gets prices.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexPricesCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // Prices (current)
                List<DexPriceDTO> result = apiInstance.DexPricesCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexPricesCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexPricesCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Prices (current)
    ApiResponse<List<DexPriceDTO>> response = apiInstance.DexPricesCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexPricesCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexPriceDTO&gt;**](DexPriceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexsolutionscurrent"></a>
# **DexSolutionsCurrent**
> List&lt;DexSolutionDTO&gt; DexSolutionsCurrent ()

Solutions (current)

Gets solutions.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexSolutionsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // Solutions (current)
                List<DexSolutionDTO> result = apiInstance.DexSolutionsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexSolutionsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexSolutionsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Solutions (current)
    ApiResponse<List<DexSolutionDTO>> response = apiInstance.DexSolutionsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexSolutionsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexSolutionDTO&gt;**](DexSolutionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexstatsscurrent"></a>
# **DexStatssCurrent**
> List&lt;DexStatsDTO&gt; DexStatssCurrent ()

Statss (current)

Gets statss.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexStatssCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // Statss (current)
                List<DexStatsDTO> result = apiInstance.DexStatssCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexStatssCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexStatssCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Statss (current)
    ApiResponse<List<DexStatsDTO>> response = apiInstance.DexStatssCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexStatssCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexStatsDTO&gt;**](DexStatsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dextokenscurrent"></a>
# **DexTokensCurrent**
> List&lt;DexTokenDTO&gt; DexTokensCurrent ()

Tokens (current)

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
    public class DexTokensCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // Tokens (current)
                List<DexTokenDTO> result = apiInstance.DexTokensCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexTokensCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexTokensCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Tokens (current)
    ApiResponse<List<DexTokenDTO>> response = apiInstance.DexTokensCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexTokensCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexTokenDTO&gt;**](DexTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dextradescurrent"></a>
# **DexTradesCurrent**
> List&lt;DexTradeDTO&gt; DexTradesCurrent ()

Trades (current)

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
    public class DexTradesCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // Trades (current)
                List<DexTradeDTO> result = apiInstance.DexTradesCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexTradesCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexTradesCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Trades (current)
    ApiResponse<List<DexTradeDTO>> response = apiInstance.DexTradesCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexTradesCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexTradeDTO&gt;**](DexTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexuserscurrent"></a>
# **DexUsersCurrent**
> List&lt;DexUserDTO&gt; DexUsersCurrent ()

Users (current)

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
    public class DexUsersCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // Users (current)
                List<DexUserDTO> result = apiInstance.DexUsersCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexUsersCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexUsersCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Users (current)
    ApiResponse<List<DexUserDTO>> response = apiInstance.DexUsersCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexUsersCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexUserDTO&gt;**](DexUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexwithdrawrequestscurrent"></a>
# **DexWithdrawRequestsCurrent**
> List&lt;DexWithdrawRequestDTO&gt; DexWithdrawRequestsCurrent ()

WithdrawRequests (current)

Gets withdrawRequests.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexWithdrawRequestsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // WithdrawRequests (current)
                List<DexWithdrawRequestDTO> result = apiInstance.DexWithdrawRequestsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexWithdrawRequestsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexWithdrawRequestsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // WithdrawRequests (current)
    ApiResponse<List<DexWithdrawRequestDTO>> response = apiInstance.DexWithdrawRequestsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexWithdrawRequestsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexWithdrawRequestDTO&gt;**](DexWithdrawRequestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="dexwithdrawscurrent"></a>
# **DexWithdrawsCurrent**
> List&lt;DexWithdrawDTO&gt; DexWithdrawsCurrent ()

Withdraws (current)

Gets withdraws.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DexWithdrawsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new DexApi(config);

            try
            {
                // Withdraws (current)
                List<DexWithdrawDTO> result = apiInstance.DexWithdrawsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling DexApi.DexWithdrawsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DexWithdrawsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Withdraws (current)
    ApiResponse<List<DexWithdrawDTO>> response = apiInstance.DexWithdrawsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling DexApi.DexWithdrawsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;DexWithdrawDTO&gt;**](DexWithdrawDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | successful operation |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

