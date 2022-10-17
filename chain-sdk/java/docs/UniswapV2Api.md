# UniswapV2Api

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**chainsChainIdDappsUniswapv2PoolsCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools |
| [**chainsChainIdDappsUniswapv2SwapsCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps |
| [**chainsChainIdDappsUniswapv2TokensCurrentGet**](UniswapV2Api.md#chainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens |


<a name="chainsChainIdDappsUniswapv2PoolsCurrentGet"></a>
# **chainsChainIdDappsUniswapv2PoolsCurrentGet**
> List&lt;PairV2DTO&gt; chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId)

GetPools

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    String chainId = "chainId_example"; // String | Chain id
    try {
      List<PairV2DTO> result = apiInstance.chainsChainIdDappsUniswapv2PoolsCurrentGet(chainId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2PoolsCurrentGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **chainId** | **String**| Chain id | |

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

<a name="chainsChainIdDappsUniswapv2SwapsCurrentGet"></a>
# **chainsChainIdDappsUniswapv2SwapsCurrentGet**
> List&lt;SwapV2DTO&gt; chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId)

GetSwaps

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    String chainId = "chainId_example"; // String | Chain id
    try {
      List<SwapV2DTO> result = apiInstance.chainsChainIdDappsUniswapv2SwapsCurrentGet(chainId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2SwapsCurrentGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **chainId** | **String**| Chain id | |

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

<a name="chainsChainIdDappsUniswapv2TokensCurrentGet"></a>
# **chainsChainIdDappsUniswapv2TokensCurrentGet**
> List&lt;TokenV2DTO&gt; chainsChainIdDappsUniswapv2TokensCurrentGet(chainId)

GetTokens

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapV2Api;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapV2Api apiInstance = new UniswapV2Api(defaultClient);
    String chainId = "chainId_example"; // String | Chain id
    try {
      List<TokenV2DTO> result = apiInstance.chainsChainIdDappsUniswapv2TokensCurrentGet(chainId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapV2Api#chainsChainIdDappsUniswapv2TokensCurrentGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **chainId** | **String**| Chain id | |

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

