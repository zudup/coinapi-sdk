# MintApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv2MintHistoricalGet**](MintApi.md#chainsChainIdDappsUniswapv2MintHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/mint/historical | 
[**chainsChainIdDappsUniswapv2MintHistoricalGetWithHttpInfo**](MintApi.md#chainsChainIdDappsUniswapv2MintHistoricalGetWithHttpInfo) | **GET** /chains/{chain_id}/dapps/uniswapv2/mint/historical | 



## chainsChainIdDappsUniswapv2MintHistoricalGet

> chainsChainIdDappsUniswapv2MintHistoricalGet(chainsChainIdDappsUniswapv2MintHistoricalGetRequest): ApiRequest[Unit]



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
    val apiInstance = MintApi("https://onchain.coinapi.io")
    val chainId: String = chainId_example // String | 

    val startBlock: Long = 789 // Long | 

    val endBlock: Long = 789 // Long | 

    val startDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val endDate: OffsetDateTime = 2013-10-20T19:20:30+01:00 // OffsetDateTime | 

    val poolId: String = poolId_example // String | 
    
    val request = apiInstance.chainsChainIdDappsUniswapv2MintHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling MintApi#chainsChainIdDappsUniswapv2MintHistoricalGet")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling MintApi#chainsChainIdDappsUniswapv2MintHistoricalGet")
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
 **poolId** | **String**|  | [optional]

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

