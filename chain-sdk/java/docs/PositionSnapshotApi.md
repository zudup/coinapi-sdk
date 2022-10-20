# PositionSnapshotApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet**](PositionSnapshotApi.md#chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshot/historical |  |


<a name="chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet"></a>
# **chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet**
> chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.PositionSnapshotApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    PositionSnapshotApi apiInstance = new PositionSnapshotApi(defaultClient);
    String chainId = "chainId_example"; // String | 
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String poolId = "poolId_example"; // String | 
    try {
      apiInstance.chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
    } catch (ApiException e) {
      System.err.println("Exception when calling PositionSnapshotApi#chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet");
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

