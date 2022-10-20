# BundlesApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv3BundlesHistoricalGet**](BundlesApi.md#chainsChainIdDappsUniswapv3BundlesHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundles/historical | 
[**chainsChainIdDappsUniswapv3BundlesHistoricalGetWithHttpInfo**](BundlesApi.md#chainsChainIdDappsUniswapv3BundlesHistoricalGetWithHttpInfo) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundles/historical | 



## chainsChainIdDappsUniswapv3BundlesHistoricalGet

> chainsChainIdDappsUniswapv3BundlesHistoricalGet(chainsChainIdDappsUniswapv3BundlesHistoricalGetRequest): ApiRequest[Unit]



### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = BundlesApi("https://onchain.coinapi.io")
    val chainId: String = chainId_example // String | 

    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 
    
    val request = apiInstance.chainsChainIdDappsUniswapv3BundlesHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BundlesApi#chainsChainIdDappsUniswapv3BundlesHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BundlesApi#chainsChainIdDappsUniswapv3BundlesHistoricalGet")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **String**|  |
 **startBlock** | **Long**|  | [optional]
 **endBlock** | **Long**|  | [optional]
 **startDate** | **OffsetDateTime**|  | [optional]
 **endDate** | **OffsetDateTime**|  | [optional]

### Return type


ApiRequest[Unit] (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

