# GaugeWeightVoteApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet**](GaugeWeightVoteApi.md#chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/gaugeWeightVote/historical |  |


<a name="chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet"></a>
# **chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet**
> chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.GaugeWeightVoteApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    GaugeWeightVoteApi apiInstance = new GaugeWeightVoteApi(defaultClient);
    String chainId = "chainId_example"; // String | 
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    try {
      apiInstance.chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet(chainId, startBlock, endBlock, startDate, endDate);
    } catch (ApiException e) {
      System.err.println("Exception when calling GaugeWeightVoteApi#chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet");
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

