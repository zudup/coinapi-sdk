# UniswapDayDataApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**chainsChainIdDappsUniswapv2DayDataHistoricalGet**](UniswapDayDataApi.md#chainsChainIdDappsUniswapv2DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/dayData/historical |  |
| [**chainsChainIdDappsUniswapv3DayDataHistoricalGet**](UniswapDayDataApi.md#chainsChainIdDappsUniswapv3DayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/dayData/historical |  |


<a name="chainsChainIdDappsUniswapv2DayDataHistoricalGet"></a>
# **chainsChainIdDappsUniswapv2DayDataHistoricalGet**
> chainsChainIdDappsUniswapv2DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapDayDataApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapDayDataApi apiInstance = new UniswapDayDataApi(defaultClient);
    String chainId = "chainId_example"; // String | 
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    try {
      apiInstance.chainsChainIdDappsUniswapv2DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapDayDataApi#chainsChainIdDappsUniswapv2DayDataHistoricalGet");
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

<a name="chainsChainIdDappsUniswapv3DayDataHistoricalGet"></a>
# **chainsChainIdDappsUniswapv3DayDataHistoricalGet**
> chainsChainIdDappsUniswapv3DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.UniswapDayDataApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    UniswapDayDataApi apiInstance = new UniswapDayDataApi(defaultClient);
    String chainId = "chainId_example"; // String | 
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    try {
      apiInstance.chainsChainIdDappsUniswapv3DayDataHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
    } catch (ApiException e) {
      System.err.println("Exception when calling UniswapDayDataApi#chainsChainIdDappsUniswapv3DayDataHistoricalGet");
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

