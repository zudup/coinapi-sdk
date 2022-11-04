# CoinAPI.EMS.REST.V1.Api.SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DappsSushiswapBundlesHistoricalGet**](SushiswapApi.md#dappssushiswapbundleshistoricalget) | **GET** /dapps/sushiswap/bundles/historical |  |
| [**DappsSushiswapBurnsHistoricalGet**](SushiswapApi.md#dappssushiswapburnshistoricalget) | **GET** /dapps/sushiswap/burns/historical |  |
| [**DappsSushiswapDayDataHistoricalGet**](SushiswapApi.md#dappssushiswapdaydatahistoricalget) | **GET** /dapps/sushiswap/dayData/historical |  |
| [**DappsSushiswapFactoryHistoricalGet**](SushiswapApi.md#dappssushiswapfactoryhistoricalget) | **GET** /dapps/sushiswap/factory/historical |  |
| [**DappsSushiswapHourDataHistoricalGet**](SushiswapApi.md#dappssushiswaphourdatahistoricalget) | **GET** /dapps/sushiswap/hourData/historical |  |
| [**DappsSushiswapLiquidityPositionHistoricalGet**](SushiswapApi.md#dappssushiswapliquiditypositionhistoricalget) | **GET** /dapps/sushiswap/liquidityPosition/historical |  |
| [**DappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](SushiswapApi.md#dappssushiswapliquiditypositionsnapshotshistoricalget) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical |  |
| [**DappsSushiswapMintsHistoricalGet**](SushiswapApi.md#dappssushiswapmintshistoricalget) | **GET** /dapps/sushiswap/mints/historical |  |
| [**DappsSushiswapPoolDayDataHistoricalGet**](SushiswapApi.md#dappssushiswappooldaydatahistoricalget) | **GET** /dapps/sushiswap/poolDayData/historical |  |
| [**DappsSushiswapPoolHourDataHistoricalGet**](SushiswapApi.md#dappssushiswappoolhourdatahistoricalget) | **GET** /dapps/sushiswap/poolHourData/historical |  |
| [**DappsSushiswapPoolsCurrentGet**](SushiswapApi.md#dappssushiswappoolscurrentget) | **GET** /dapps/sushiswap/pools/current | GetPools |
| [**DappsSushiswapPoolsHistoricalGet**](SushiswapApi.md#dappssushiswappoolshistoricalget) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical) |
| [**DappsSushiswapSwapsCurrentGet**](SushiswapApi.md#dappssushiswapswapscurrentget) | **GET** /dapps/sushiswap/swaps/current | GetSwaps |
| [**DappsSushiswapSwapsHistoricalGet**](SushiswapApi.md#dappssushiswapswapshistoricalget) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical) |
| [**DappsSushiswapTokenDayDataHistoricalGet**](SushiswapApi.md#dappssushiswaptokendaydatahistoricalget) | **GET** /dapps/sushiswap/tokenDayData/historical |  |
| [**DappsSushiswapTokensCurrentGet**](SushiswapApi.md#dappssushiswaptokenscurrentget) | **GET** /dapps/sushiswap/tokens/current | GetTokens |
| [**DappsSushiswapTokensHistoricalGet**](SushiswapApi.md#dappssushiswaptokenshistoricalget) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical) |
| [**DappsSushiswapTransactionsHistoricalGet**](SushiswapApi.md#dappssushiswaptransactionshistoricalget) | **GET** /dapps/sushiswap/transactions/historical |  |
| [**DappsSushiswapUsersHistoricalGet**](SushiswapApi.md#dappssushiswapusershistoricalget) | **GET** /dapps/sushiswap/users/historical |  |

<a name="dappssushiswapbundleshistoricalget"></a>
# **DappsSushiswapBundlesHistoricalGet**
> void DappsSushiswapBundlesHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapBundlesHistoricalGetExample
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

            try
            {
                apiInstance.DappsSushiswapBundlesHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapBundlesHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapBundlesHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapBundlesHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapBundlesHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswapburnshistoricalget"></a>
# **DappsSushiswapBurnsHistoricalGet**
> void DappsSushiswapBurnsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapBurnsHistoricalGetExample
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
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsSushiswapBurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapBurnsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapBurnsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapBurnsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapBurnsHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswapdaydatahistoricalget"></a>
# **DappsSushiswapDayDataHistoricalGet**
> void DappsSushiswapDayDataHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapDayDataHistoricalGetExample
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

            try
            {
                apiInstance.DappsSushiswapDayDataHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapDayDataHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapDayDataHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapDayDataHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapDayDataHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswapfactoryhistoricalget"></a>
# **DappsSushiswapFactoryHistoricalGet**
> void DappsSushiswapFactoryHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapFactoryHistoricalGetExample
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

            try
            {
                apiInstance.DappsSushiswapFactoryHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapFactoryHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapFactoryHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapFactoryHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapFactoryHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswaphourdatahistoricalget"></a>
# **DappsSushiswapHourDataHistoricalGet**
> void DappsSushiswapHourDataHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapHourDataHistoricalGetExample
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

            try
            {
                apiInstance.DappsSushiswapHourDataHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapHourDataHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapHourDataHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapHourDataHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapHourDataHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswapliquiditypositionhistoricalget"></a>
# **DappsSushiswapLiquidityPositionHistoricalGet**
> void DappsSushiswapLiquidityPositionHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapLiquidityPositionHistoricalGetExample
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
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsSushiswapLiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapLiquidityPositionHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapLiquidityPositionHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapLiquidityPositionHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapLiquidityPositionHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswapliquiditypositionsnapshotshistoricalget"></a>
# **DappsSushiswapLiquidityPositionSnapshotsHistoricalGet**
> void DappsSushiswapLiquidityPositionSnapshotsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapLiquidityPositionSnapshotsHistoricalGetExample
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
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsSushiswapLiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapLiquidityPositionSnapshotsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapLiquidityPositionSnapshotsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapLiquidityPositionSnapshotsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapLiquidityPositionSnapshotsHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswapmintshistoricalget"></a>
# **DappsSushiswapMintsHistoricalGet**
> void DappsSushiswapMintsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapMintsHistoricalGetExample
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
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsSushiswapMintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapMintsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapMintsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapMintsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapMintsHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswappooldaydatahistoricalget"></a>
# **DappsSushiswapPoolDayDataHistoricalGet**
> void DappsSushiswapPoolDayDataHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapPoolDayDataHistoricalGetExample
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
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsSushiswapPoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapPoolDayDataHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapPoolDayDataHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapPoolDayDataHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapPoolDayDataHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswappoolhourdatahistoricalget"></a>
# **DappsSushiswapPoolHourDataHistoricalGet**
> void DappsSushiswapPoolHourDataHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapPoolHourDataHistoricalGetExample
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
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsSushiswapPoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapPoolHourDataHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapPoolHourDataHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapPoolHourDataHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapPoolHourDataHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswappoolscurrentget"></a>
# **DappsSushiswapPoolsCurrentGet**
> List&lt;PairDTO&gt; DappsSushiswapPoolsCurrentGet ()

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapPoolsCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // GetPools
                List<PairDTO> result = apiInstance.DappsSushiswapPoolsCurrentGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapPoolsCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapPoolsCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetPools
    ApiResponse<List<PairDTO>> response = apiInstance.DappsSushiswapPoolsCurrentGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapPoolsCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;PairDTO&gt;**](PairDTO.md)

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

<a name="dappssushiswappoolshistoricalget"></a>
# **DappsSushiswapPoolsHistoricalGet**
> List&lt;PairDTO&gt; DappsSushiswapPoolsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GetPools (historical)

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapPoolsHistoricalGetExample
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
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                // GetPools (historical)
                List<PairDTO> result = apiInstance.DappsSushiswapPoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapPoolsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapPoolsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetPools (historical)
    ApiResponse<List<PairDTO>> response = apiInstance.DappsSushiswapPoolsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapPoolsHistoricalGetWithHttpInfo: " + e.Message);
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
| **poolId** | **string** |  | [optional]  |

### Return type

[**List&lt;PairDTO&gt;**](PairDTO.md)

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

<a name="dappssushiswapswapscurrentget"></a>
# **DappsSushiswapSwapsCurrentGet**
> List&lt;SwapDTO&gt; DappsSushiswapSwapsCurrentGet ()

GetSwaps

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapSwapsCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // GetSwaps
                List<SwapDTO> result = apiInstance.DappsSushiswapSwapsCurrentGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapSwapsCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapSwapsCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetSwaps
    ApiResponse<List<SwapDTO>> response = apiInstance.DappsSushiswapSwapsCurrentGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapSwapsCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SwapDTO&gt;**](SwapDTO.md)

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

<a name="dappssushiswapswapshistoricalget"></a>
# **DappsSushiswapSwapsHistoricalGet**
> List&lt;SwapDTO&gt; DappsSushiswapSwapsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)

GetSwaps (historical)

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapSwapsHistoricalGetExample
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
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                // GetSwaps (historical)
                List<SwapDTO> result = apiInstance.DappsSushiswapSwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapSwapsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapSwapsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetSwaps (historical)
    ApiResponse<List<SwapDTO>> response = apiInstance.DappsSushiswapSwapsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapSwapsHistoricalGetWithHttpInfo: " + e.Message);
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
| **poolId** | **string** |  | [optional]  |

### Return type

[**List&lt;SwapDTO&gt;**](SwapDTO.md)

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

<a name="dappssushiswaptokendaydatahistoricalget"></a>
# **DappsSushiswapTokenDayDataHistoricalGet**
> void DappsSushiswapTokenDayDataHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string tokenId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapTokenDayDataHistoricalGetExample
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
            var tokenId = "tokenId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsSushiswapTokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapTokenDayDataHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapTokenDayDataHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapTokenDayDataHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, tokenId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapTokenDayDataHistoricalGetWithHttpInfo: " + e.Message);
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
| **tokenId** | **string** |  | [optional]  |

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

<a name="dappssushiswaptokenscurrentget"></a>
# **DappsSushiswapTokensCurrentGet**
> List&lt;TokenDTO&gt; DappsSushiswapTokensCurrentGet ()

GetTokens

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapTokensCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new SushiswapApi(config);

            try
            {
                // GetTokens
                List<TokenDTO> result = apiInstance.DappsSushiswapTokensCurrentGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapTokensCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapTokensCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetTokens
    ApiResponse<List<TokenDTO>> response = apiInstance.DappsSushiswapTokensCurrentGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapTokensCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;TokenDTO&gt;**](TokenDTO.md)

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

<a name="dappssushiswaptokenshistoricalget"></a>
# **DappsSushiswapTokensHistoricalGet**
> List&lt;TokenDTO&gt; DappsSushiswapTokensHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string tokenId = null)

GetTokens (historical)

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapTokensHistoricalGetExample
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
            var tokenId = "tokenId_example";  // string |  (optional) 

            try
            {
                // GetTokens (historical)
                List<TokenDTO> result = apiInstance.DappsSushiswapTokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapTokensHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapTokensHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetTokens (historical)
    ApiResponse<List<TokenDTO>> response = apiInstance.DappsSushiswapTokensHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, tokenId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapTokensHistoricalGetWithHttpInfo: " + e.Message);
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
| **tokenId** | **string** |  | [optional]  |

### Return type

[**List&lt;TokenDTO&gt;**](TokenDTO.md)

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

<a name="dappssushiswaptransactionshistoricalget"></a>
# **DappsSushiswapTransactionsHistoricalGet**
> void DappsSushiswapTransactionsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapTransactionsHistoricalGetExample
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

            try
            {
                apiInstance.DappsSushiswapTransactionsHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapTransactionsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapTransactionsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapTransactionsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapTransactionsHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappssushiswapusershistoricalget"></a>
# **DappsSushiswapUsersHistoricalGet**
> void DappsSushiswapUsersHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsSushiswapUsersHistoricalGetExample
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

            try
            {
                apiInstance.DappsSushiswapUsersHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling SushiswapApi.DappsSushiswapUsersHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsSushiswapUsersHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsSushiswapUsersHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling SushiswapApi.DappsSushiswapUsersHistoricalGetWithHttpInfo: " + e.Message);
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

