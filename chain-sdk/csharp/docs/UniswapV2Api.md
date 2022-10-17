# CoinAPI.EMS.REST.V1.Api.UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#chainschainiddappsuniswapv2poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[**ChainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#chainschainiddappsuniswapv2swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[**ChainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#chainschainiddappsuniswapv2tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens



## ChainsChainIdDappsUniswapv2PoolsCurrentGet

> List&lt;PairV2DTO&gt; ChainsChainIdDappsUniswapv2PoolsCurrentGet (string chainId)

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
    public class ChainsChainIdDappsUniswapv2PoolsCurrentGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id

            try
            {
                // GetPools
                List<PairV2DTO> result = apiInstance.ChainsChainIdDappsUniswapv2PoolsCurrentGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV2Api.ChainsChainIdDappsUniswapv2PoolsCurrentGet: " + e.Message );
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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv2SwapsCurrentGet

> List&lt;SwapV2DTO&gt; ChainsChainIdDappsUniswapv2SwapsCurrentGet (string chainId)

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
    public class ChainsChainIdDappsUniswapv2SwapsCurrentGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id

            try
            {
                // GetSwaps
                List<SwapV2DTO> result = apiInstance.ChainsChainIdDappsUniswapv2SwapsCurrentGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV2Api.ChainsChainIdDappsUniswapv2SwapsCurrentGet: " + e.Message );
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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ChainsChainIdDappsUniswapv2TokensCurrentGet

> List&lt;TokenV2DTO&gt; ChainsChainIdDappsUniswapv2TokensCurrentGet (string chainId)

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
    public class ChainsChainIdDappsUniswapv2TokensCurrentGetExample
    {
        public static void Main()
        {
            Configuration.Default.BasePath = "https://onchain.coinapi.io";
            var apiInstance = new UniswapV2Api(Configuration.Default);
            var chainId = "chainId_example";  // string | Chain id

            try
            {
                // GetTokens
                List<TokenV2DTO> result = apiInstance.ChainsChainIdDappsUniswapv2TokensCurrentGet(chainId);
                Debug.WriteLine(result);
            }
            catch (ApiException e)
            {
                Debug.Print("Exception when calling UniswapV2Api.ChainsChainIdDappsUniswapv2TokensCurrentGet: " + e.Message );
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

[[Back to top]](#)
[[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

