# LiquidityPositionSnapshotsApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet**](LiquidityPositionSnapshotsApi.md#chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical |  |
| [**chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](LiquidityPositionSnapshotsApi.md#chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical |  |


<a name="chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet"></a>
# **chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet**
> chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.LiquidityPositionSnapshotsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    LiquidityPositionSnapshotsApi apiInstance = new LiquidityPositionSnapshotsApi(defaultClient);
    String chainId = "chainId_example"; // String | 
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      apiInstance.chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
    } catch (ApiException e) {
      System.err.println("Exception when calling LiquidityPositionSnapshotsApi#chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet");
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

<a name="chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet"></a>
# **chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**
> chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.LiquidityPositionSnapshotsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    LiquidityPositionSnapshotsApi apiInstance = new LiquidityPositionSnapshotsApi(defaultClient);
    String chainId = "chainId_example"; // String | 
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      apiInstance.chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
    } catch (ApiException e) {
      System.err.println("Exception when calling LiquidityPositionSnapshotsApi#chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet");
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

