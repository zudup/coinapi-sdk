# CoinAPI.EMS.REST.V1.Api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**SushiswapBundlesCurrent**](SushiswapApi.md#sushiswapbundlescurrent) | **GET** /dapps/sushiswap/bundles/current | Bundles (current) |
| [**SushiswapBurnsCurrent**](SushiswapApi.md#sushiswapburnscurrent) | **GET** /dapps/sushiswap/burns/current | Burns (current) |
| [**SushiswapDayDatasCurrent**](SushiswapApi.md#sushiswapdaydatascurrent) | **GET** /dapps/sushiswap/dayDatas/current | DayDatas (current) |
| [**SushiswapFactorysCurrent**](SushiswapApi.md#sushiswapfactoryscurrent) | **GET** /dapps/sushiswap/factorys/current | Factorys (current) |
| [**SushiswapGetBundlesHistorical**](SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥 |
| [**SushiswapGetBurnsHistorical**](SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) 🔥 |
| [**SushiswapGetDayDatasHistorical**](SushiswapApi.md#sushiswapgetdaydatashistorical) | **GET** /dapps/sushiswap/dayDatas/historical | DayDatas (historical) 🔥 |
| [**SushiswapGetFactorysHistorical**](SushiswapApi.md#sushiswapgetfactoryshistorical) | **GET** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥 |
| [**SushiswapGetHourDatasHistorical**](SushiswapApi.md#sushiswapgethourdatashistorical) | **GET** /dapps/sushiswap/hourDatas/historical | HourDatas (historical) 🔥 |
| [**SushiswapGetLiquidityPositionSnapshotsHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionsnapshotshistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshots (historical) 🔥 |
| [**SushiswapGetLiquidityPositionsHistorical**](SushiswapApi.md#sushiswapgetliquiditypositionshistorical) | **GET** /dapps/sushiswap/liquidityPositions/historical | LiquidityPositions (historical) 🔥 |
| [**SushiswapGetMintsHistorical**](SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) 🔥 |
| [**SushiswapGetPairDayDatasHistorical**](SushiswapApi.md#sushiswapgetpairdaydatashistorical) | **GET** /dapps/sushiswap/pairDayDatas/historical | PairDayDatas (historical) 🔥 |
| [**SushiswapGetPairHourDatasHistorical**](SushiswapApi.md#sushiswapgetpairhourdatashistorical) | **GET** /dapps/sushiswap/pairHourDatas/historical | PairHourDatas (historical) 🔥 |
| [**SushiswapGetPairsHistorical**](SushiswapApi.md#sushiswapgetpairshistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥 |
| [**SushiswapGetSwapsHistorical**](SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥 |
| [**SushiswapGetTokenDayDatasHistorical**](SushiswapApi.md#sushiswapgettokendaydatashistorical) | **GET** /dapps/sushiswap/tokenDayDatas/historical | TokenDayDatas (historical) 🔥 |
| [**SushiswapGetTokensHistorical**](SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥 |
| [**SushiswapGetTransactionsHistorical**](SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥 |
| [**SushiswapGetUsersHistorical**](SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) 🔥 |
| [**SushiswapHourDatasCurrent**](SushiswapApi.md#sushiswaphourdatascurrent) | **GET** /dapps/sushiswap/hourDatas/current | HourDatas (current) |
| [**SushiswapLiquidityPositionSnapshotsCurrent**](SushiswapApi.md#sushiswapliquiditypositionsnapshotscurrent) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/current | LiquidityPositionSnapshots (current) |
| [**SushiswapLiquidityPositionsCurrent**](SushiswapApi.md#sushiswapliquiditypositionscurrent) | **GET** /dapps/sushiswap/liquidityPositions/current | LiquidityPositions (current) |
| [**SushiswapMintsCurrent**](SushiswapApi.md#sushiswapmintscurrent) | **GET** /dapps/sushiswap/mints/current | Mints (current) |
| [**SushiswapPairDayDatasCurrent**](SushiswapApi.md#sushiswappairdaydatascurrent) | **GET** /dapps/sushiswap/pairDayDatas/current | PairDayDatas (current) |
| [**SushiswapPairHourDatasCurrent**](SushiswapApi.md#sushiswappairhourdatascurrent) | **GET** /dapps/sushiswap/pairHourDatas/current | PairHourDatas (current) |
| [**SushiswapPairsCurrent**](SushiswapApi.md#sushiswappairscurrent) | **GET** /dapps/sushiswap/pairs/current | Pairs (current) |
| [**SushiswapSwapsCurrent**](SushiswapApi.md#sushiswapswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) |
| [**SushiswapTokenDayDatasCurrent**](SushiswapApi.md#sushiswaptokendaydatascurrent) | **GET** /dapps/sushiswap/tokenDayDatas/current | TokenDayDatas (current) |
| [**SushiswapTokensCurrent**](SushiswapApi.md#sushiswaptokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) |
| [**SushiswapTransactionsCurrent**](SushiswapApi.md#sushiswaptransactionscurrent) | **GET** /dapps/sushiswap/transactions/current | Transactions (current) |
| [**SushiswapUsersCurrent**](SushiswapApi.md#sushiswapuserscurrent) | **GET** /dapps/sushiswap/users/current | Users (current) |

<a name="sushiswapbundlescurrent"></a>
# **SushiswapBundlesCurrent**
> List&lt;SushiswapBundleDTO&gt; SushiswapBundlesCurrent ()

Bundles (current)

Gets bundles.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapBundlesCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Bundles (current)
                List<SushiswapBundleDTO> result = apiInstance.SushiswapBundlesCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapBundlesCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapBundlesCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Bundles (current)
    ApiResponse<List<SushiswapBundleDTO>> response = apiInstance.SushiswapBundlesCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapBundlesCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

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

<a name="sushiswapburnscurrent"></a>
# **SushiswapBurnsCurrent**
> List&lt;SushiswapBurnDTO&gt; SushiswapBurnsCurrent ()

Burns (current)

Gets burns.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapBurnsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Burns (current)
                List<SushiswapBurnDTO> result = apiInstance.SushiswapBurnsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapBurnsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapBurnsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Burns (current)
    ApiResponse<List<SushiswapBurnDTO>> response = apiInstance.SushiswapBurnsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapBurnsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

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

<a name="sushiswapdaydatascurrent"></a>
# **SushiswapDayDatasCurrent**
> List&lt;SushiswapDayDataDTO&gt; SushiswapDayDatasCurrent ()

DayDatas (current)

Gets dayDatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapDayDatasCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // DayDatas (current)
                List<SushiswapDayDataDTO> result = apiInstance.SushiswapDayDatasCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapDayDatasCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapDayDatasCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // DayDatas (current)
    ApiResponse<List<SushiswapDayDataDTO>> response = apiInstance.SushiswapDayDatasCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapDayDatasCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

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

<a name="sushiswapfactoryscurrent"></a>
# **SushiswapFactorysCurrent**
> List&lt;SushiswapFactoryDTO&gt; SushiswapFactorysCurrent ()

Factorys (current)

Gets factorys.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapFactorysCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Factorys (current)
                List<SushiswapFactoryDTO> result = apiInstance.SushiswapFactorysCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapFactorysCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapFactorysCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Factorys (current)
    ApiResponse<List<SushiswapFactoryDTO>> response = apiInstance.SushiswapFactorysCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapFactorysCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

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

<a name="sushiswapgetbundleshistorical"></a>
# **SushiswapGetBundlesHistorical**
> List&lt;SushiswapBundleDTO&gt; SushiswapGetBundlesHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Bundles (historical) 🔥

Gets bundles.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetBundlesHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Hardcoded to '1'. (optional) 

            try
            {
                // Bundles (historical) 🔥
                List<SushiswapBundleDTO> result = apiInstance.SushiswapGetBundlesHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetBundlesHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetBundlesHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Bundles (historical) 🔥
    ApiResponse<List<SushiswapBundleDTO>> response = apiInstance.SushiswapGetBundlesHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetBundlesHistoricalWithHttpInfo: " + e.Message);
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
| **id** | **string** | Hardcoded to &#39;1&#39;. | [optional]  |

### Return type

[**List&lt;SushiswapBundleDTO&gt;**](SushiswapBundleDTO.md)

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

<a name="sushiswapgetburnshistorical"></a>
# **SushiswapGetBurnsHistorical**
> List&lt;SushiswapBurnDTO&gt; SushiswapGetBurnsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string pair = null)

Burns (historical) 🔥

Gets burns.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetBurnsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 

            try
            {
                // Burns (historical) 🔥
                List<SushiswapBurnDTO> result = apiInstance.SushiswapGetBurnsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetBurnsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetBurnsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Burns (historical) 🔥
    ApiResponse<List<SushiswapBurnDTO>> response = apiInstance.SushiswapGetBurnsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetBurnsHistoricalWithHttpInfo: " + e.Message);
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
| **pair** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapBurnDTO&gt;**](SushiswapBurnDTO.md)

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

<a name="sushiswapgetdaydatashistorical"></a>
# **SushiswapGetDayDatasHistorical**
> List&lt;SushiswapDayDataDTO&gt; SushiswapGetDayDatasHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

DayDatas (historical) 🔥

Gets dayDatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetDayDatasHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Unix timestamp for start of day / 86400 giving a unique day index. (optional) 

            try
            {
                // DayDatas (historical) 🔥
                List<SushiswapDayDataDTO> result = apiInstance.SushiswapGetDayDatasHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetDayDatasHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetDayDatasHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // DayDatas (historical) 🔥
    ApiResponse<List<SushiswapDayDataDTO>> response = apiInstance.SushiswapGetDayDatasHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetDayDatasHistoricalWithHttpInfo: " + e.Message);
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
| **id** | **string** | Unix timestamp for start of day / 86400 giving a unique day index. | [optional]  |

### Return type

[**List&lt;SushiswapDayDataDTO&gt;**](SushiswapDayDataDTO.md)

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

<a name="sushiswapgetfactoryshistorical"></a>
# **SushiswapGetFactorysHistorical**
> List&lt;SushiswapFactoryDTO&gt; SushiswapGetFactorysHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Factorys (historical) 🔥

Gets factorys.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetFactorysHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Factory address. (optional) 

            try
            {
                // Factorys (historical) 🔥
                List<SushiswapFactoryDTO> result = apiInstance.SushiswapGetFactorysHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetFactorysHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetFactorysHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Factorys (historical) 🔥
    ApiResponse<List<SushiswapFactoryDTO>> response = apiInstance.SushiswapGetFactorysHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetFactorysHistoricalWithHttpInfo: " + e.Message);
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
| **id** | **string** | Factory address. | [optional]  |

### Return type

[**List&lt;SushiswapFactoryDTO&gt;**](SushiswapFactoryDTO.md)

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

<a name="sushiswapgethourdatashistorical"></a>
# **SushiswapGetHourDatasHistorical**
> List&lt;SushiswapHourDataDTO&gt; SushiswapGetHourDatasHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

HourDatas (historical) 🔥

Gets hourDatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetHourDatasHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Start of hour timestamp. (optional) 

            try
            {
                // HourDatas (historical) 🔥
                List<SushiswapHourDataDTO> result = apiInstance.SushiswapGetHourDatasHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetHourDatasHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetHourDatasHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // HourDatas (historical) 🔥
    ApiResponse<List<SushiswapHourDataDTO>> response = apiInstance.SushiswapGetHourDatasHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetHourDatasHistoricalWithHttpInfo: " + e.Message);
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
| **id** | **string** | Start of hour timestamp. | [optional]  |

### Return type

[**List&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

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

<a name="sushiswapgetliquiditypositionsnapshotshistorical"></a>
# **SushiswapGetLiquidityPositionSnapshotsHistorical**
> List&lt;SushiswapLiquidityPositionSnapshotDTO&gt; SushiswapGetLiquidityPositionSnapshotsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string user = null, string pair = null)

LiquidityPositionSnapshots (historical) 🔥

Gets liquidityPositionSnapshots.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetLiquidityPositionSnapshotsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var user = "user_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 

            try
            {
                // LiquidityPositionSnapshots (historical) 🔥
                List<SushiswapLiquidityPositionSnapshotDTO> result = apiInstance.SushiswapGetLiquidityPositionSnapshotsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetLiquidityPositionSnapshotsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetLiquidityPositionSnapshotsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // LiquidityPositionSnapshots (historical) 🔥
    ApiResponse<List<SushiswapLiquidityPositionSnapshotDTO>> response = apiInstance.SushiswapGetLiquidityPositionSnapshotsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, user, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetLiquidityPositionSnapshotsHistoricalWithHttpInfo: " + e.Message);
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
| **pair** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

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

<a name="sushiswapgetliquiditypositionshistorical"></a>
# **SushiswapGetLiquidityPositionsHistorical**
> List&lt;SushiswapLiquidityPositionDTO&gt; SushiswapGetLiquidityPositionsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string user = null, string pair = null)

LiquidityPositions (historical) 🔥

Gets liquidityPositions.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetLiquidityPositionsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var user = "user_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 

            try
            {
                // LiquidityPositions (historical) 🔥
                List<SushiswapLiquidityPositionDTO> result = apiInstance.SushiswapGetLiquidityPositionsHistorical(startBlock, endBlock, startDate, endDate, id, user, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetLiquidityPositionsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetLiquidityPositionsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // LiquidityPositions (historical) 🔥
    ApiResponse<List<SushiswapLiquidityPositionDTO>> response = apiInstance.SushiswapGetLiquidityPositionsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, user, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetLiquidityPositionsHistoricalWithHttpInfo: " + e.Message);
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
| **pair** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

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

<a name="sushiswapgetmintshistorical"></a>
# **SushiswapGetMintsHistorical**
> List&lt;SushiswapMintDTO&gt; SushiswapGetMintsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string pair = null)

Mints (historical) 🔥

Gets mints.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetMintsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 

            try
            {
                // Mints (historical) 🔥
                List<SushiswapMintDTO> result = apiInstance.SushiswapGetMintsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetMintsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetMintsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Mints (historical) 🔥
    ApiResponse<List<SushiswapMintDTO>> response = apiInstance.SushiswapGetMintsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetMintsHistoricalWithHttpInfo: " + e.Message);
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
| **pair** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

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

<a name="sushiswapgetpairdaydatashistorical"></a>
# **SushiswapGetPairDayDatasHistorical**
> List&lt;SushiswapPairDayDataDTO&gt; SushiswapGetPairDayDatasHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string pair = null, string token0 = null, string token1 = null)

PairDayDatas (historical) 🔥

Gets pairDayDatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetPairDayDatasHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 
            var token0 = "token0_example";  // string |  (optional) 
            var token1 = "token1_example";  // string |  (optional) 

            try
            {
                // PairDayDatas (historical) 🔥
                List<SushiswapPairDayDataDTO> result = apiInstance.SushiswapGetPairDayDatasHistorical(startBlock, endBlock, startDate, endDate, id, pair, token0, token1);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairDayDatasHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetPairDayDatasHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // PairDayDatas (historical) 🔥
    ApiResponse<List<SushiswapPairDayDataDTO>> response = apiInstance.SushiswapGetPairDayDatasHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, pair, token0, token1);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairDayDatasHistoricalWithHttpInfo: " + e.Message);
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
| **pair** | **string** |  | [optional]  |
| **token0** | **string** |  | [optional]  |
| **token1** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

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

<a name="sushiswapgetpairhourdatashistorical"></a>
# **SushiswapGetPairHourDatasHistorical**
> List&lt;SushiswapPairHourDataDTO&gt; SushiswapGetPairHourDatasHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string pair = null)

PairHourDatas (historical) 🔥

Gets pairHourDatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetPairHourDatasHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var pair = "pair_example";  // string |  (optional) 

            try
            {
                // PairHourDatas (historical) 🔥
                List<SushiswapPairHourDataDTO> result = apiInstance.SushiswapGetPairHourDatasHistorical(startBlock, endBlock, startDate, endDate, id, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairHourDatasHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetPairHourDatasHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // PairHourDatas (historical) 🔥
    ApiResponse<List<SushiswapPairHourDataDTO>> response = apiInstance.SushiswapGetPairHourDatasHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairHourDatasHistoricalWithHttpInfo: " + e.Message);
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
| **pair** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

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

<a name="sushiswapgetpairshistorical"></a>
# **SushiswapGetPairsHistorical**
> List&lt;SushiswapPairDTO&gt; SushiswapGetPairsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string name = null, string token0 = null, string token1 = null)

Pairs (historical) 🔥

Gets pairs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetPairsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var id = "id_example";  // string |  (optional) 
            var name = "name_example";  // string |  (optional) 
            var token0 = "token0_example";  // string |  (optional) 
            var token1 = "token1_example";  // string |  (optional) 

            try
            {
                // Pairs (historical) 🔥
                List<SushiswapPairDTO> result = apiInstance.SushiswapGetPairsHistorical(startBlock, endBlock, startDate, endDate, id, name, token0, token1);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetPairsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Pairs (historical) 🔥
    ApiResponse<List<SushiswapPairDTO>> response = apiInstance.SushiswapGetPairsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, name, token0, token1);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetPairsHistoricalWithHttpInfo: " + e.Message);
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
| **name** | **string** |  | [optional]  |
| **token0** | **string** |  | [optional]  |
| **token1** | **string** |  | [optional]  |

### Return type

[**List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

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

<a name="sushiswapgetswapshistorical"></a>
# **SushiswapGetSwapsHistorical**
> List&lt;SushiswapSwapDTO&gt; SushiswapGetSwapsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string pair = null)

Swaps (historical) 🔥

Gets swaps.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetSwapsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Transaction hash plus index in Transaction swap array. (optional) 
            var pair = "pair_example";  // string | Reference to pair. (optional) 

            try
            {
                // Swaps (historical) 🔥
                List<SushiswapSwapDTO> result = apiInstance.SushiswapGetSwapsHistorical(startBlock, endBlock, startDate, endDate, id, pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetSwapsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetSwapsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Swaps (historical) 🔥
    ApiResponse<List<SushiswapSwapDTO>> response = apiInstance.SushiswapGetSwapsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetSwapsHistoricalWithHttpInfo: " + e.Message);
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
| **id** | **string** | Transaction hash plus index in Transaction swap array. | [optional]  |
| **pair** | **string** | Reference to pair. | [optional]  |

### Return type

[**List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

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

<a name="sushiswapgettokendaydatashistorical"></a>
# **SushiswapGetTokenDayDatasHistorical**
> List&lt;SushiswapTokenDayDataDTO&gt; SushiswapGetTokenDayDatasHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

TokenDayDatas (historical) 🔥

Gets tokenDayDatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetTokenDayDatasHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Identifier, day start timestamp in unix / 86400. (optional) 

            try
            {
                // TokenDayDatas (historical) 🔥
                List<SushiswapTokenDayDataDTO> result = apiInstance.SushiswapGetTokenDayDatasHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetTokenDayDatasHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetTokenDayDatasHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // TokenDayDatas (historical) 🔥
    ApiResponse<List<SushiswapTokenDayDataDTO>> response = apiInstance.SushiswapGetTokenDayDatasHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetTokenDayDatasHistoricalWithHttpInfo: " + e.Message);
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
| **id** | **string** | Identifier, day start timestamp in unix / 86400. | [optional]  |

### Return type

[**List&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

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

<a name="sushiswapgettokenshistorical"></a>
# **SushiswapGetTokensHistorical**
> List&lt;SushiswapTokenDTO&gt; SushiswapGetTokensHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null, string symbol = null, string name = null)

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
    public class SushiswapGetTokensHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Token address. (optional) 
            var symbol = "symbol_example";  // string | Token symbol. (optional) 
            var name = "name_example";  // string | Token name. (optional) 

            try
            {
                // Tokens (historical) 🔥
                List<SushiswapTokenDTO> result = apiInstance.SushiswapGetTokensHistorical(startBlock, endBlock, startDate, endDate, id, symbol, name);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetTokensHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetTokensHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Tokens (historical) 🔥
    ApiResponse<List<SushiswapTokenDTO>> response = apiInstance.SushiswapGetTokensHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id, symbol, name);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetTokensHistoricalWithHttpInfo: " + e.Message);
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
| **id** | **string** | Token address. | [optional]  |
| **symbol** | **string** | Token symbol. | [optional]  |
| **name** | **string** | Token name. | [optional]  |

### Return type

[**List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

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

<a name="sushiswapgettransactionshistorical"></a>
# **SushiswapGetTransactionsHistorical**
> List&lt;SushiswapTransactionDTO&gt; SushiswapGetTransactionsHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

Transactions (historical) 🔥

Gets transactions.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapGetTransactionsHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | Ethereum transaction hash. (optional) 

            try
            {
                // Transactions (historical) 🔥
                List<SushiswapTransactionDTO> result = apiInstance.SushiswapGetTransactionsHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetTransactionsHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetTransactionsHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Transactions (historical) 🔥
    ApiResponse<List<SushiswapTransactionDTO>> response = apiInstance.SushiswapGetTransactionsHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetTransactionsHistoricalWithHttpInfo: " + e.Message);
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
| **id** | **string** | Ethereum transaction hash. | [optional]  |

### Return type

[**List&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

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

<a name="sushiswapgetusershistorical"></a>
# **SushiswapGetUsersHistorical**
> List&lt;SushiswapUserDTO&gt; SushiswapGetUsersHistorical (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string id = null)

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
    public class SushiswapGetUsersHistoricalExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var startBlock = 789L;  // long? | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. (optional) 
            var endBlock = 789L;  // long? | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? | The end date of timeframe. (optional) 
            var id = "id_example";  // string | User address. (optional) 

            try
            {
                // Users (historical) 🔥
                List<SushiswapUserDTO> result = apiInstance.SushiswapGetUsersHistorical(startBlock, endBlock, startDate, endDate, id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapGetUsersHistorical: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapGetUsersHistoricalWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Users (historical) 🔥
    ApiResponse<List<SushiswapUserDTO>> response = apiInstance.SushiswapGetUsersHistoricalWithHttpInfo(startBlock, endBlock, startDate, endDate, id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapGetUsersHistoricalWithHttpInfo: " + e.Message);
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
| **id** | **string** | User address. | [optional]  |

### Return type

[**List&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

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

<a name="sushiswaphourdatascurrent"></a>
# **SushiswapHourDatasCurrent**
> List&lt;SushiswapHourDataDTO&gt; SushiswapHourDatasCurrent ()

HourDatas (current)

Gets hourDatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapHourDatasCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // HourDatas (current)
                List<SushiswapHourDataDTO> result = apiInstance.SushiswapHourDatasCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapHourDatasCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapHourDatasCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // HourDatas (current)
    ApiResponse<List<SushiswapHourDataDTO>> response = apiInstance.SushiswapHourDatasCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapHourDatasCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapHourDataDTO&gt;**](SushiswapHourDataDTO.md)

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

<a name="sushiswapliquiditypositionsnapshotscurrent"></a>
# **SushiswapLiquidityPositionSnapshotsCurrent**
> List&lt;SushiswapLiquidityPositionSnapshotDTO&gt; SushiswapLiquidityPositionSnapshotsCurrent ()

LiquidityPositionSnapshots (current)

Gets liquidityPositionSnapshots.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapLiquidityPositionSnapshotsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // LiquidityPositionSnapshots (current)
                List<SushiswapLiquidityPositionSnapshotDTO> result = apiInstance.SushiswapLiquidityPositionSnapshotsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapLiquidityPositionSnapshotsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapLiquidityPositionSnapshotsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // LiquidityPositionSnapshots (current)
    ApiResponse<List<SushiswapLiquidityPositionSnapshotDTO>> response = apiInstance.SushiswapLiquidityPositionSnapshotsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapLiquidityPositionSnapshotsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapLiquidityPositionSnapshotDTO&gt;**](SushiswapLiquidityPositionSnapshotDTO.md)

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

<a name="sushiswapliquiditypositionscurrent"></a>
# **SushiswapLiquidityPositionsCurrent**
> List&lt;SushiswapLiquidityPositionDTO&gt; SushiswapLiquidityPositionsCurrent ()

LiquidityPositions (current)

Gets liquidityPositions.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapLiquidityPositionsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // LiquidityPositions (current)
                List<SushiswapLiquidityPositionDTO> result = apiInstance.SushiswapLiquidityPositionsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapLiquidityPositionsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapLiquidityPositionsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // LiquidityPositions (current)
    ApiResponse<List<SushiswapLiquidityPositionDTO>> response = apiInstance.SushiswapLiquidityPositionsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapLiquidityPositionsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapLiquidityPositionDTO&gt;**](SushiswapLiquidityPositionDTO.md)

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

<a name="sushiswapmintscurrent"></a>
# **SushiswapMintsCurrent**
> List&lt;SushiswapMintDTO&gt; SushiswapMintsCurrent ()

Mints (current)

Gets mints.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapMintsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Mints (current)
                List<SushiswapMintDTO> result = apiInstance.SushiswapMintsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapMintsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapMintsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Mints (current)
    ApiResponse<List<SushiswapMintDTO>> response = apiInstance.SushiswapMintsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapMintsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapMintDTO&gt;**](SushiswapMintDTO.md)

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

<a name="sushiswappairdaydatascurrent"></a>
# **SushiswapPairDayDatasCurrent**
> List&lt;SushiswapPairDayDataDTO&gt; SushiswapPairDayDatasCurrent ()

PairDayDatas (current)

Gets pairDayDatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapPairDayDatasCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // PairDayDatas (current)
                List<SushiswapPairDayDataDTO> result = apiInstance.SushiswapPairDayDatasCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapPairDayDatasCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapPairDayDatasCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // PairDayDatas (current)
    ApiResponse<List<SushiswapPairDayDataDTO>> response = apiInstance.SushiswapPairDayDatasCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapPairDayDatasCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapPairDayDataDTO&gt;**](SushiswapPairDayDataDTO.md)

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

<a name="sushiswappairhourdatascurrent"></a>
# **SushiswapPairHourDatasCurrent**
> List&lt;SushiswapPairHourDataDTO&gt; SushiswapPairHourDatasCurrent ()

PairHourDatas (current)

Gets pairHourDatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapPairHourDatasCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // PairHourDatas (current)
                List<SushiswapPairHourDataDTO> result = apiInstance.SushiswapPairHourDatasCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapPairHourDatasCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapPairHourDatasCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // PairHourDatas (current)
    ApiResponse<List<SushiswapPairHourDataDTO>> response = apiInstance.SushiswapPairHourDatasCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapPairHourDatasCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapPairHourDataDTO&gt;**](SushiswapPairHourDataDTO.md)

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

<a name="sushiswappairscurrent"></a>
# **SushiswapPairsCurrent**
> List&lt;SushiswapPairDTO&gt; SushiswapPairsCurrent (string id = null)

Pairs (current)

Gets pairs.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapPairsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var id = "id_example";  // string | Pair contract address. (optional) 

            try
            {
                // Pairs (current)
                List<SushiswapPairDTO> result = apiInstance.SushiswapPairsCurrent(id);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapPairsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapPairsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Pairs (current)
    ApiResponse<List<SushiswapPairDTO>> response = apiInstance.SushiswapPairsCurrentWithHttpInfo(id);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapPairsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **id** | **string** | Pair contract address. | [optional]  |

### Return type

[**List&lt;SushiswapPairDTO&gt;**](SushiswapPairDTO.md)

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

<a name="sushiswapswapscurrent"></a>
# **SushiswapSwapsCurrent**
> List&lt;SushiswapSwapDTO&gt; SushiswapSwapsCurrent (string pair = null)

Swaps (current)

Gets swaps.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapSwapsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);
            var pair = "pair_example";  // string | Reference to pair. (optional) 

            try
            {
                // Swaps (current)
                List<SushiswapSwapDTO> result = apiInstance.SushiswapSwapsCurrent(pair);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapSwapsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapSwapsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Swaps (current)
    ApiResponse<List<SushiswapSwapDTO>> response = apiInstance.SushiswapSwapsCurrentWithHttpInfo(pair);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapSwapsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **pair** | **string** | Reference to pair. | [optional]  |

### Return type

[**List&lt;SushiswapSwapDTO&gt;**](SushiswapSwapDTO.md)

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

<a name="sushiswaptokendaydatascurrent"></a>
# **SushiswapTokenDayDatasCurrent**
> List&lt;SushiswapTokenDayDataDTO&gt; SushiswapTokenDayDatasCurrent ()

TokenDayDatas (current)

Gets tokenDayDatas.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapTokenDayDatasCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // TokenDayDatas (current)
                List<SushiswapTokenDayDataDTO> result = apiInstance.SushiswapTokenDayDatasCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapTokenDayDatasCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapTokenDayDatasCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // TokenDayDatas (current)
    ApiResponse<List<SushiswapTokenDayDataDTO>> response = apiInstance.SushiswapTokenDayDatasCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapTokenDayDatasCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapTokenDayDataDTO&gt;**](SushiswapTokenDayDataDTO.md)

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

<a name="sushiswaptokenscurrent"></a>
# **SushiswapTokensCurrent**
> List&lt;SushiswapTokenDTO&gt; SushiswapTokensCurrent ()

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
    public class SushiswapTokensCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Tokens (current)
                List<SushiswapTokenDTO> result = apiInstance.SushiswapTokensCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapTokensCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapTokensCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Tokens (current)
    ApiResponse<List<SushiswapTokenDTO>> response = apiInstance.SushiswapTokensCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapTokensCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapTokenDTO&gt;**](SushiswapTokenDTO.md)

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

<a name="sushiswaptransactionscurrent"></a>
# **SushiswapTransactionsCurrent**
> List&lt;SushiswapTransactionDTO&gt; SushiswapTransactionsCurrent ()

Transactions (current)

Gets transactions.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class SushiswapTransactionsCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Transactions (current)
                List<SushiswapTransactionDTO> result = apiInstance.SushiswapTransactionsCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapTransactionsCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapTransactionsCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Transactions (current)
    ApiResponse<List<SushiswapTransactionDTO>> response = apiInstance.SushiswapTransactionsCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapTransactionsCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapTransactionDTO&gt;**](SushiswapTransactionDTO.md)

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

<a name="sushiswapuserscurrent"></a>
# **SushiswapUsersCurrent**
> List&lt;SushiswapUserDTO&gt; SushiswapUsersCurrent ()

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
    public class SushiswapUsersCurrentExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // Users (current)
                List<SushiswapUserDTO> result = apiInstance.SushiswapUsersCurrent();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.SushiswapUsersCurrent: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the SushiswapUsersCurrentWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // Users (current)
    ApiResponse<List<SushiswapUserDTO>> response = apiInstance.SushiswapUsersCurrentWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.SushiswapUsersCurrentWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SushiswapUserDTO&gt;**](SushiswapUserDTO.md)

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

