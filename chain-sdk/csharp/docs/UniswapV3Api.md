# CoinAPI.EMS.REST.V1.Api.UniswapV3Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3bundlecurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**ChainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3burnscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**ChainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3factorycurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**ChainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3mintscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**ChainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3poolsdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3poolshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3positionsnapshotscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**ChainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3positionscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**ChainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**ChainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tickscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3ticksdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**ChainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tokensdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3tokenshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#chainschainiddappsuniswapv3uniswapdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData



## ChainsChainIdDappsUniswapv3BundleCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id

            try
            {
                // GetBundles
                List<BundleV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3BundleCurrentGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3BundleCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3BurnsCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetBurns
                List<BurnV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3BurnsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3BurnsCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterPoolId** | **string**| Filter pool id | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3FactoryCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id

            try
            {
                // GetFactory
                List<FactoryV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3FactoryCurrentGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3FactoryCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3MintsCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetMints
                List<MintV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3MintsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3MintsCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterPoolId** | **string**| Filter pool id | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3PoolsCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPools
                List<PoolV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3PoolsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterPoolId** | **string**| Filter pool id | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPoolsDayData
                List<PoolDayDataV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsDayDataCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterPoolId** | **string**| Filter pool id | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPoolsHourData
                List<PoolHourDataV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PoolsHourDataCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterPoolId** | **string**| Filter pool id | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPositionSnapshot
                List<PositionSnapshotV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterPoolId** | **string**| Filter pool id | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3PositionsCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetPositions
                List<PositionV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3PositionsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3PositionsCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterPoolId** | **string**| Filter pool id | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3SwapsCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetSwaps
                List<SwapV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3SwapsCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3SwapsCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterPoolId** | **string**| Filter pool id | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3TicksCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetTicks
                List<TickV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3TicksCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TicksCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterPoolId** | **string**| Filter pool id | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterPoolId = "filterPoolId_example";  // string | Filter pool id (optional) 

            try
            {
                // GetTicksDayData
                List<TickDayDataV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet(chainId, filterPoolId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TicksDayDataCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterPoolId** | **string**| Filter pool id | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3TokensCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterTokenId = "filterTokenId_example";  // string |  (optional) 

            try
            {
                // GetTokens
                List<TokenV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3TokensCurrentGet(chainId, filterTokenId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TokensCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterTokenId** | **string**|  | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterTokenId = "filterTokenId_example";  // string |  (optional) 

            try
            {
                // GetTokensDayData
                List<TokenV3DayDataDTO> result = apiInstance.ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet(chainId, filterTokenId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TokensDayDataCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterTokenId** | **string**|  | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id
            var filterTokenId = "filterTokenId_example";  // string |  (optional) 

            try
            {
                // GetTokensHourData
                List<TokenHourDataV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet(chainId, filterTokenId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3TokensHourDataCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 
 **filterTokenId** | **string**|  | [optional] 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet

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
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV3Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id

            try
            {
                // GetUniswapDayData
                List<UniswapDayDataV3DTO> result = apiInstance.ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV3Api.ChainsChainIdDappsUniswapv3UniswapDayDataCurrentGet: " + e.Message );
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
 **chainId** | **string**| Chain id | 

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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

