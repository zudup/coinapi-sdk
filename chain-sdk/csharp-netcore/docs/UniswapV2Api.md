# CoinAPI.EMS.REST.V1.Api.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DappsUniswapv2BundlesHistoricalGet**](UniswapV2Api.md#dappsuniswapv2bundleshistoricalget) | **GET** /dapps/uniswapv2/bundles/historical |  |
| [**DappsUniswapv2BurnsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2burnshistoricalget) | **GET** /dapps/uniswapv2/burns/historical |  |
| [**DappsUniswapv2DayDataHistoricalGet**](UniswapV2Api.md#dappsuniswapv2daydatahistoricalget) | **GET** /dapps/uniswapv2/dayData/historical |  |
| [**DappsUniswapv2FactoryHistoricalGet**](UniswapV2Api.md#dappsuniswapv2factoryhistoricalget) | **GET** /dapps/uniswapv2/factory/historical |  |
| [**DappsUniswapv2LiquidityPositionHistoricalGet**](UniswapV2Api.md#dappsuniswapv2liquiditypositionhistoricalget) | **GET** /dapps/uniswapv2/liquidityPosition/historical |  |
| [**DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2liquiditypositionsnapshotshistoricalget) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical |  |
| [**DappsUniswapv2MintsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2mintshistoricalget) | **GET** /dapps/uniswapv2/mints/historical |  |
| [**DappsUniswapv2PoolDayDataHistoricalGet**](UniswapV2Api.md#dappsuniswapv2pooldaydatahistoricalget) | **GET** /dapps/uniswapv2/poolDayData/historical |  |
| [**DappsUniswapv2PoolHourDataHistoricalGet**](UniswapV2Api.md#dappsuniswapv2poolhourdatahistoricalget) | **GET** /dapps/uniswapv2/poolHourData/historical |  |
| [**DappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#dappsuniswapv2poolscurrentget) | **GET** /dapps/uniswapv2/pools/current | GetPools |
| [**DappsUniswapv2PoolsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2poolshistoricalget) | **GET** /dapps/uniswapv2/pools/historical |  |
| [**DappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#dappsuniswapv2swapscurrentget) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps |
| [**DappsUniswapv2SwapsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2swapshistoricalget) | **GET** /dapps/uniswapv2/swaps/historical |  |
| [**DappsUniswapv2TokenDayDataHistoricalGet**](UniswapV2Api.md#dappsuniswapv2tokendaydatahistoricalget) | **GET** /dapps/uniswapv2/tokenDayData/historical |  |
| [**DappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#dappsuniswapv2tokenscurrentget) | **GET** /dapps/uniswapv2/tokens/current | GetTokens |
| [**DappsUniswapv2TokensHistoricalGet**](UniswapV2Api.md#dappsuniswapv2tokenshistoricalget) | **GET** /dapps/uniswapv2/tokens/historical |  |
| [**DappsUniswapv2TransactionsHistoricalGet**](UniswapV2Api.md#dappsuniswapv2transactionshistoricalget) | **GET** /dapps/uniswapv2/transactions/historical |  |
| [**DappsUniswapv2UsersHistoricalGet**](UniswapV2Api.md#dappsuniswapv2usershistoricalget) | **GET** /dapps/uniswapv2/users/historical |  |

<a name="dappsuniswapv2bundleshistoricalget"></a>
# **DappsUniswapv2BundlesHistoricalGet**
> void DappsUniswapv2BundlesHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2BundlesHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2BundlesHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2BundlesHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2BundlesHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2BundlesHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2BundlesHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2burnshistoricalget"></a>
# **DappsUniswapv2BurnsHistoricalGet**
> void DappsUniswapv2BurnsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2BurnsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2BurnsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2BurnsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2BurnsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2BurnsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2BurnsHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2daydatahistoricalget"></a>
# **DappsUniswapv2DayDataHistoricalGet**
> void DappsUniswapv2DayDataHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2DayDataHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2DayDataHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2DayDataHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2DayDataHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2DayDataHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2DayDataHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2factoryhistoricalget"></a>
# **DappsUniswapv2FactoryHistoricalGet**
> void DappsUniswapv2FactoryHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2FactoryHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2FactoryHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2FactoryHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2FactoryHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2FactoryHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2FactoryHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2liquiditypositionhistoricalget"></a>
# **DappsUniswapv2LiquidityPositionHistoricalGet**
> void DappsUniswapv2LiquidityPositionHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2LiquidityPositionHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2LiquidityPositionHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2LiquidityPositionHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2LiquidityPositionHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2LiquidityPositionHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2LiquidityPositionHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2liquiditypositionsnapshotshistoricalget"></a>
# **DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**
> void DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2LiquidityPositionSnapshotsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2LiquidityPositionSnapshotsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2LiquidityPositionSnapshotsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2LiquidityPositionSnapshotsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2LiquidityPositionSnapshotsHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2mintshistoricalget"></a>
# **DappsUniswapv2MintsHistoricalGet**
> void DappsUniswapv2MintsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2MintsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2MintsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2MintsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2MintsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2MintsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2MintsHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2pooldaydatahistoricalget"></a>
# **DappsUniswapv2PoolDayDataHistoricalGet**
> void DappsUniswapv2PoolDayDataHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2PoolDayDataHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2PoolDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2PoolDayDataHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2PoolDayDataHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2PoolDayDataHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2PoolDayDataHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2poolhourdatahistoricalget"></a>
# **DappsUniswapv2PoolHourDataHistoricalGet**
> void DappsUniswapv2PoolHourDataHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2PoolHourDataHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2PoolHourDataHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2PoolHourDataHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2PoolHourDataHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2PoolHourDataHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2PoolHourDataHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2poolscurrentget"></a>
# **DappsUniswapv2PoolsCurrentGet**
> List&lt;PairV2DTO&gt; DappsUniswapv2PoolsCurrentGet (string filterPoolId = null)

GetPools

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2PoolsCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPools
                List<PairV2DTO> result = apiInstance.DappsUniswapv2PoolsCurrentGet(filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2PoolsCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2PoolsCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetPools
    ApiResponse<List<PairV2DTO>> response = apiInstance.DappsUniswapv2PoolsCurrentGetWithHttpInfo(filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2PoolsCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;PairV2DTO&gt;**](PairV2DTO.md)

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

<a name="dappsuniswapv2poolshistoricalget"></a>
# **DappsUniswapv2PoolsHistoricalGet**
> void DappsUniswapv2PoolsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2PoolsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2PoolsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2PoolsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2PoolsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2PoolsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2PoolsHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2swapscurrentget"></a>
# **DappsUniswapv2SwapsCurrentGet**
> List&lt;SwapV2DTO&gt; DappsUniswapv2SwapsCurrentGet ()

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
    public class DappsUniswapv2SwapsCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);

            try
            {
                // GetSwaps
                List<SwapV2DTO> result = apiInstance.DappsUniswapv2SwapsCurrentGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2SwapsCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2SwapsCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetSwaps
    ApiResponse<List<SwapV2DTO>> response = apiInstance.DappsUniswapv2SwapsCurrentGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2SwapsCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;SwapV2DTO&gt;**](SwapV2DTO.md)

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

<a name="dappsuniswapv2swapshistoricalget"></a>
# **DappsUniswapv2SwapsHistoricalGet**
> void DappsUniswapv2SwapsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string poolId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2SwapsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var poolId = "poolId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2SwapsHistoricalGet(startBlock, endBlock, startDate, endDate, poolId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2SwapsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2SwapsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2SwapsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, poolId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2SwapsHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2tokendaydatahistoricalget"></a>
# **DappsUniswapv2TokenDayDataHistoricalGet**
> void DappsUniswapv2TokenDayDataHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string tokenId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2TokenDayDataHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var tokenId = "tokenId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2TokenDayDataHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2TokenDayDataHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2TokenDayDataHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2TokenDayDataHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, tokenId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2TokenDayDataHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2tokenscurrentget"></a>
# **DappsUniswapv2TokensCurrentGet**
> List&lt;TokenV2DTO&gt; DappsUniswapv2TokensCurrentGet ()

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
    public class DappsUniswapv2TokensCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);

            try
            {
                // GetTokens
                List<TokenV2DTO> result = apiInstance.DappsUniswapv2TokensCurrentGet();
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2TokensCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2TokensCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetTokens
    ApiResponse<List<TokenV2DTO>> response = apiInstance.DappsUniswapv2TokensCurrentGetWithHttpInfo();
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2TokensCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;TokenV2DTO&gt;**](TokenV2DTO.md)

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

<a name="dappsuniswapv2tokenshistoricalget"></a>
# **DappsUniswapv2TokensHistoricalGet**
> void DappsUniswapv2TokensHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null, string tokenId = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2TokensHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var tokenId = "tokenId_example";  // string |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2TokensHistoricalGet(startBlock, endBlock, startDate, endDate, tokenId);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2TokensHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2TokensHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2TokensHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate, tokenId);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2TokensHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2transactionshistoricalget"></a>
# **DappsUniswapv2TransactionsHistoricalGet**
> void DappsUniswapv2TransactionsHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2TransactionsHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2TransactionsHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2TransactionsHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2TransactionsHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2TransactionsHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2TransactionsHistoricalGetWithHttpInfo: " + e.Message);
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

<a name="dappsuniswapv2usershistoricalget"></a>
# **DappsUniswapv2UsersHistoricalGet**
> void DappsUniswapv2UsersHistoricalGet (long? startBlock = null, long? endBlock = null, DateTime? startDate = null, DateTime? endDate = null)



### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class DappsUniswapv2UsersHistoricalGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(config);
            var startBlock = 789L;  // long? |  (optional) 
            var endBlock = 789L;  // long? |  (optional) 
            var startDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 
            var endDate = DateTime.Parse("2013-10-20T19:20:30+01:00");  // DateTime? |  (optional) 

            try
            {
                apiInstance.DappsUniswapv2UsersHistoricalGet(startBlock, endBlock, startDate, endDate);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2UsersHistoricalGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the DappsUniswapv2UsersHistoricalGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    apiInstance.DappsUniswapv2UsersHistoricalGetWithHttpInfo(startBlock, endBlock, startDate, endDate);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV2Api.DappsUniswapv2UsersHistoricalGetWithHttpInfo: " + e.Message);
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

