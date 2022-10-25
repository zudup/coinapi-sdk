# WithdrawApi

All URIs are relative to *https://onchain.coinapi.io*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**chainsChainIdDappsDexWithdrawHistoricalGet**](WithdrawApi.md#chainsChainIdDappsDexWithdrawHistoricalGet) | **GET** /chains/{chain_id}/dapps/dex/withdraw/historical |  |


<a name="chainsChainIdDappsDexWithdrawHistoricalGet"></a>
# **chainsChainIdDappsDexWithdrawHistoricalGet**
> chainsChainIdDappsDexWithdrawHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId)



### Example
```java
// Import classes:
import org.openapitools.client.ApiClient;
import org.openapitools.client.ApiException;
import org.openapitools.client.Configuration;
import org.openapitools.client.models.*;
import org.openapitools.client.api.WithdrawApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://onchain.coinapi.io");

    WithdrawApi apiInstance = new WithdrawApi(defaultClient);
    String chainId = "chainId_example"; // String | 
    Long startBlock = 56L; // Long | 
    Long endBlock = 56L; // Long | 
    OffsetDateTime startDate = OffsetDateTime.now(); // OffsetDateTime | 
    OffsetDateTime endDate = OffsetDateTime.now(); // OffsetDateTime | 
    String tokenId = "tokenId_example"; // String | 
    try {
      apiInstance.chainsChainIdDappsDexWithdrawHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, tokenId);
    } catch (ApiException e) {
      System.err.println("Exception when calling WithdrawApi#chainsChainIdDappsDexWithdrawHistoricalGet");
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
| **tokenId** | **String**|  | [optional] |

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

