# CoinAPI.EMS.REST.V1.Api.UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**ChainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3bundlecurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles |
| [**ChainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3burnscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns |
| [**ChainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3factorycurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory |
| [**ChainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3mintscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints |
| [**ChainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools |
| [**ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3poolsdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData |
| [**ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3poolshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData |
| [**ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3positionsnapshotscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot |
| [**ChainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3positionscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions |
| [**ChainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps |
| [**ChainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tickscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks |
| [**ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3ticksdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData |
| [**ChainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens |
| [**ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tokensdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData |
| [**ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tokenshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData |
| [**ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3uniswapdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData |

<a name="chainschainiddappsuniswapv3bundlecurrentget"></a>
# **ChainsChainIdDappsUniswapv3BundleCurrentGet**
> List&lt;BundleV3DTO&gt; ChainsChainIdDappsUniswapv3BundleCurrentGet (string chainId)

GetBundles

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3BundleCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id

            try
            {
                // GetBundles
                List<BundleV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3BundleCurrentGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3BundleCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3BundleCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetBundles
    ApiResponse<List<BundleV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3BundleCurrentGetWithHttpInfo(chainId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3BundleCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |

### Return type

[**List&lt;BundleV3DTO&gt;**](BundleV3DTO.md)

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

<a name="chainschainiddappsuniswapv3burnscurrentget"></a>
# **ChainsChainIdDappsUniswapv3BurnsCurrentGet**
> List&lt;BurnV3DTO&gt; ChainsChainIdDappsUniswapv3BurnsCurrentGet (string chainId, string filterPoolId = null)

GetBurns

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3BurnsCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetBurns
                List<BurnV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3BurnsCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3BurnsCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetBurns
    ApiResponse<List<BurnV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3BurnsCurrentGetWithHttpInfo(chainId, filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3BurnsCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;BurnV3DTO&gt;**](BurnV3DTO.md)

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

<a name="chainschainiddappsuniswapv3factorycurrentget"></a>
# **ChainsChainIdDappsUniswapv3FactoryCurrentGet**
> List&lt;FactoryV3DTO&gt; ChainsChainIdDappsUniswapv3FactoryCurrentGet (string chainId)

GetFactory

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3FactoryCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id

            try
            {
                // GetFactory
                List<FactoryV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3FactoryCurrentGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3FactoryCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3FactoryCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetFactory
    ApiResponse<List<FactoryV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3FactoryCurrentGetWithHttpInfo(chainId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3FactoryCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |

### Return type

[**List&lt;FactoryV3DTO&gt;**](FactoryV3DTO.md)

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

<a name="chainschainiddappsuniswapv3mintscurrentget"></a>
# **ChainsChainIdDappsUniswapv3MintsCurrentGet**
> List&lt;MintV3DTO&gt; ChainsChainIdDappsUniswapv3MintsCurrentGet (string chainId, string filterPoolId = null)

GetMints

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3MintsCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetMints
                List<MintV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3MintsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3MintsCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3MintsCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetMints
    ApiResponse<List<MintV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3MintsCurrentGetWithHttpInfo(chainId, filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3MintsCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;MintV3DTO&gt;**](MintV3DTO.md)

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

<a name="chainschainiddappsuniswapv3poolscurrentget"></a>
# **ChainsChainIdDappsUniswapv3PoolsCurrentGet**
> List&lt;PoolV3DTO&gt; ChainsChainIdDappsUniswapv3PoolsCurrentGet (string chainId, string filterPoolId = null)

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
    public class ChainsChainIdDappsUniswapv3PoolsCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPools
                List<PoolV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3PoolsCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetPools
    ApiResponse<List<PoolV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3PoolsCurrentGetWithHttpInfo(chainId, filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;PoolV3DTO&gt;**](PoolV3DTO.md)

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

<a name="chainschainiddappsuniswapv3poolsdaydatacurrentget"></a>
# **ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**
> List&lt;PoolDayDataV3DTO&gt; ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet (string chainId, string filterPoolId = null)

GetPoolsDayData

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPoolsDayData
                List<PoolDayDataV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetPoolsDayData
    ApiResponse<List<PoolDayDataV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGetWithHttpInfo(chainId, filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;PoolDayDataV3DTO&gt;**](PoolDayDataV3DTO.md)

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

<a name="chainschainiddappsuniswapv3poolshourdatacurrentget"></a>
# **ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**
> List&lt;PoolHourDataV3DTO&gt; ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet (string chainId, string filterPoolId = null)

GetPoolsHourData

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPoolsHourData
                List<PoolHourDataV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetPoolsHourData
    ApiResponse<List<PoolHourDataV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGetWithHttpInfo(chainId, filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;PoolHourDataV3DTO&gt;**](PoolHourDataV3DTO.md)

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

<a name="chainschainiddappsuniswapv3positionsnapshotscurrentget"></a>
# **ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**
> List&lt;PositionSnapshotV3DTO&gt; ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet (string chainId, string filterPoolId = null)

GetPositionSnapshot

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPositionSnapshot
                List<PositionSnapshotV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetPositionSnapshot
    ApiResponse<List<PositionSnapshotV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetWithHttpInfo(chainId, filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;PositionSnapshotV3DTO&gt;**](PositionSnapshotV3DTO.md)

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

<a name="chainschainiddappsuniswapv3positionscurrentget"></a>
# **ChainsChainIdDappsUniswapv3PositionsCurrentGet**
> List&lt;PositionV3DTO&gt; ChainsChainIdDappsUniswapv3PositionsCurrentGet (string chainId, string filterPoolId = null)

GetPositions

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3PositionsCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPositions
                List<PositionV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PositionsCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3PositionsCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetPositions
    ApiResponse<List<PositionV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3PositionsCurrentGetWithHttpInfo(chainId, filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PositionsCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;PositionV3DTO&gt;**](PositionV3DTO.md)

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

<a name="chainschainiddappsuniswapv3swapscurrentget"></a>
# **ChainsChainIdDappsUniswapv3SwapsCurrentGet**
> List&lt;SwapV3DTO&gt; ChainsChainIdDappsUniswapv3SwapsCurrentGet (string chainId, string filterPoolId = null)

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
    public class ChainsChainIdDappsUniswapv3SwapsCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetSwaps
                List<SwapV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3SwapsCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3SwapsCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetSwaps
    ApiResponse<List<SwapV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3SwapsCurrentGetWithHttpInfo(chainId, filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3SwapsCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;SwapV3DTO&gt;**](SwapV3DTO.md)

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

<a name="chainschainiddappsuniswapv3tickscurrentget"></a>
# **ChainsChainIdDappsUniswapv3TicksCurrentGet**
> List&lt;TickV3DTO&gt; ChainsChainIdDappsUniswapv3TicksCurrentGet (string chainId, string filterPoolId = null)

GetTicks

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3TicksCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetTicks
                List<TickV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3TicksCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TicksCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3TicksCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetTicks
    ApiResponse<List<TickV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3TicksCurrentGetWithHttpInfo(chainId, filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TicksCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;TickV3DTO&gt;**](TickV3DTO.md)

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

<a name="chainschainiddappsuniswapv3ticksdaydatacurrentget"></a>
# **ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet**
> List&lt;TickDayDataV3DTO&gt; ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet (string chainId, string filterPoolId = null)

GetTicksDayData

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3TicksDayDataCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetTicksDayData
                List<TickDayDataV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3TicksDayDataCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetTicksDayData
    ApiResponse<List<TickDayDataV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3TicksDayDataCurrentGetWithHttpInfo(chainId, filterPoolId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TicksDayDataCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterPoolId** | **string** | Filter pool id | [optional]  |

### Return type

[**List&lt;TickDayDataV3DTO&gt;**](TickDayDataV3DTO.md)

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

<a name="chainschainiddappsuniswapv3tokenscurrentget"></a>
# **ChainsChainIdDappsUniswapv3TokensCurrentGet**
> List&lt;TokenV3DTO&gt; ChainsChainIdDappsUniswapv3TokensCurrentGet (string chainId, string filterTokenId = null)

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
    public class ChainsChainIdDappsUniswapv3TokensCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterTokenId = "filterTokenId_example";  // string |  (optional) 

            try
            {
                // GetTokens
                List<TokenV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3TokensCurrentGet(chainId, filterTokenId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TokensCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3TokensCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetTokens
    ApiResponse<List<TokenV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3TokensCurrentGetWithHttpInfo(chainId, filterTokenId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TokensCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterTokenId** | **string** |  | [optional]  |

### Return type

[**List&lt;TokenV3DTO&gt;**](TokenV3DTO.md)

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

<a name="chainschainiddappsuniswapv3tokensdaydatacurrentget"></a>
# **ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet**
> List&lt;TokenV3DayDataDTO&gt; ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet (string chainId, string filterTokenId = null)

GetTokensDayData

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3TokensDayDataCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterTokenId = "filterTokenId_example";  // string |  (optional) 

            try
            {
                // GetTokensDayData
                List<TokenV3DayDataDTO> result = apiInstance.ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, filterTokenId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3TokensDayDataCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetTokensDayData
    ApiResponse<List<TokenV3DayDataDTO>> response = apiInstance.ChainsChainIdDappsUniswapv3TokensDayDataCurrentGetWithHttpInfo(chainId, filterTokenId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TokensDayDataCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterTokenId** | **string** |  | [optional]  |

### Return type

[**List&lt;TokenV3DayDataDTO&gt;**](TokenV3DayDataDTO.md)

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

<a name="chainschainiddappsuniswapv3tokenshourdatacurrentget"></a>
# **ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet**
> List&lt;TokenHourDataV3DTO&gt; ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet (string chainId, string filterTokenId = null)

GetTokensHourData

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3TokensHourDataCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id
            var filterTokenId = "filterTokenId_example";  // string |  (optional) 

            try
            {
                // GetTokensHourData
                List<TokenHourDataV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, filterTokenId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3TokensHourDataCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetTokensHourData
    ApiResponse<List<TokenHourDataV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3TokensHourDataCurrentGetWithHttpInfo(chainId, filterTokenId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TokensHourDataCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |
| **filterTokenId** | **string** |  | [optional]  |

### Return type

[**List&lt;TokenHourDataV3DTO&gt;**](TokenHourDataV3DTO.md)

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

<a name="chainschainiddappsuniswapv3uniswapdaydatacurrentget"></a>
# **ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**
> List&lt;UniswapDayDataV3DTO&gt; ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet (string chainId)

GetUniswapDayData

### Example
```csharp
using System.Collections.Generic;
using System.Diagnostics;
using CoinAPI.EMS.REST.V1.Api;
using CoinAPI.EMS.REST.V1.Client;
using CoinAPI.EMS.REST.V1.Model;

namespace Example
{
    public class ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGetExample
    {
        public static void Main()
        {
            Configuration config = new Configuration();
            config.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(config);
            var chainId = "chainId_example";  // string | Chain id

            try
            {
                // GetUniswapDayData
                List<UniswapDayDataV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException  e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet: " + e.Message);
                Debug.Print("Status Code: " + e.ErrorCode);
                Debug.Print(e.StackTrace);
            }
        }
    }
}
```

#### Using the ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGetWithHttpInfo variant
This returns an ApiResponse object which contains the response data, status code and headers.

```csharp
try
{
    // GetUniswapDayData
    ApiResponse<List<UniswapDayDataV3DTO>> response = apiInstance.ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGetWithHttpInfo(chainId);
    Debug.Write("Status Code: " + response.StatusCode);
    Debug.Write("Response Headers: " + response.Headers);
    Debug.Write("Response Body: " + response.Data);
}
catch (ApiException e)
{
    Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGetWithHttpInfo: " + e.Message);
    Debug.Print("Status Code: " + e.ErrorCode);
    Debug.Print(e.StackTrace);
}
```

### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **chainId** | **string** | Chain id |  |

### Return type

[**List&lt;UniswapDayDataV3DTO&gt;**](UniswapDayDataV3DTO.md)

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

