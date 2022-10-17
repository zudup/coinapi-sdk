# SushiswapApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**chainsChainIdDappsSushiswapPoolsCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools |
| [**chainsChainIdDappsSushiswapSwapsCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps |
| [**chainsChainIdDappsSushiswapTokensCurrentGet**](SushiswapApi.md#chainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens |


<a name="chainsChainIdDappsSushiswapPoolsCurrentGet"></a>
# **chainsChainIdDappsSushiswapPoolsCurrentGet**
> List&lt;PairDTO&gt; chainsChainIdDappsSushiswapPoolsCurrentGet(chainId)

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s.

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    String chainId = "chainId_example"; // String | Chain id
    try {
      List<PairDTO> result = apiInstance.chainsChainIdDappsSushiswapPoolsCurrentGet(chainId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#chainsChainIdDappsSushiswapPoolsCurrentGet");
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

<a name="chainsChainIdDappsSushiswapSwapsCurrentGet"></a>
# **chainsChainIdDappsSushiswapSwapsCurrentGet**
> List&lt;SwapDTO&gt; chainsChainIdDappsSushiswapSwapsCurrentGet(chainId)

GetSwaps

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    String chainId = "chainId_example"; // String | Chain id
    try {
      List<SwapDTO> result = apiInstance.chainsChainIdDappsSushiswapSwapsCurrentGet(chainId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#chainsChainIdDappsSushiswapSwapsCurrentGet");
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

<a name="chainsChainIdDappsSushiswapTokensCurrentGet"></a>
# **chainsChainIdDappsSushiswapTokensCurrentGet**
> List&lt;TokenDTO&gt; chainsChainIdDappsSushiswapTokensCurrentGet(chainId)

GetTokens

### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.SushiswapApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    SushiswapApi apiInstance = new SushiswapApi(defaultClient);
    String chainId = "chainId_example"; // String | Chain id
    try {
      List<TokenDTO> result = apiInstance.chainsChainIdDappsSushiswapTokensCurrentGet(chainId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling SushiswapApi#chainsChainIdDappsSushiswapTokensCurrentGet");
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

