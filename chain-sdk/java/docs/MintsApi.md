# MintsApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**chainsChainIdDappsSushiswapMintsHistoricalGet**](MintsApi.md#chainsChainIdDappsSushiswapMintsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/mints/historical |  |
| [**chainsChainIdDappsUniswapv2MintsHistoricalGet**](MintsApi.md#chainsChainIdDappsUniswapv2MintsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/mints/historical |  |
| [**chainsChainIdDappsUniswapv3MintsHistoricalGet**](MintsApi.md#chainsChainIdDappsUniswapv3MintsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/historical |  |


<a name="chainsChainIdDappsSushiswapMintsHistoricalGet"></a>
# **chainsChainIdDappsSushiswapMintsHistoricalGet**
> chainsChainIdDappsSushiswapMintsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MintsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    MintsApi apiInstance = new MintsApi(defaultClient);
    String chainId = "chainId_example"; // String | 
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      apiInstance.chainsChainIdDappsSushiswapMintsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
    } catch (ApiException e) {
      System.err.println("Exception when calling MintsApi#chainsChainIdDappsSushiswapMintsHistoricalGet");
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
| **chainId** | **String**|  | |
| **startBlock** | **Long**|  | [optional] |
| **endBlock** | **Long**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **poolId** | **String**|  | [optional] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

<a name="chainsChainIdDappsUniswapv2MintsHistoricalGet"></a>
# **chainsChainIdDappsUniswapv2MintsHistoricalGet**
> chainsChainIdDappsUniswapv2MintsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MintsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    MintsApi apiInstance = new MintsApi(defaultClient);
    String chainId = "chainId_example"; // String | 
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      apiInstance.chainsChainIdDappsUniswapv2MintsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
    } catch (ApiException e) {
      System.err.println("Exception when calling MintsApi#chainsChainIdDappsUniswapv2MintsHistoricalGet");
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
| **chainId** | **String**|  | |
| **startBlock** | **Long**|  | [optional] |
| **endBlock** | **Long**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **poolId** | **String**|  | [optional] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

<a name="chainsChainIdDappsUniswapv3MintsHistoricalGet"></a>
# **chainsChainIdDappsUniswapv3MintsHistoricalGet**
> chainsChainIdDappsUniswapv3MintsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.MintsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    MintsApi apiInstance = new MintsApi(defaultClient);
    String chainId = "chainId_example"; // String | 
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      apiInstance.chainsChainIdDappsUniswapv3MintsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
    } catch (ApiException e) {
      System.err.println("Exception when calling MintsApi#chainsChainIdDappsUniswapv3MintsHistoricalGet");
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
| **chainId** | **String**|  | |
| **startBlock** | **Long**|  | [optional] |
| **endBlock** | **Long**|  | [optional] |
| **startDate** | **OffsetDateTime**|  | [optional] |
| **endDate** | **OffsetDateTime**|  | [optional] |
| **poolId** | **String**|  | [optional] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

