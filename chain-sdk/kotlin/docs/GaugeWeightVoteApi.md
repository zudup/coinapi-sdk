# GaugeWeightVoteApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet**](GaugeWeightVoteApi.md#chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/gaugeWeightVote/historical | 


<a name="chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet"></a>
# **chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet**
> chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)



### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = GaugeWeightVoteApi()
val chainId : kotlin.String = chainId_example // kotlin.String | 
val startBlock : kotlin.Long = 789 // kotlin.Long | 
val endBlock : kotlin.Long = 789 // kotlin.Long | 
val startDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
val endDate : java.time.OffsetDateTime = 2013-10-20T19:20:30+01:00 // java.time.OffsetDateTime | 
try {
    apiInstance.chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet(chainId, startBlock, endBlock, startDate, endDate)
} catch (e: ClientException) {
    println("4xx response calling GaugeWeightVoteApi#chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling GaugeWeightVoteApi#chainsChainIdDappsCurveGaugeWeightVoteHistoricalGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **kotlin.String**|  |
 **startBlock** | **kotlin.Long**|  | [optional]
 **endBlock** | **kotlin.Long**|  | [optional]
 **startDate** | **java.time.OffsetDateTime**|  | [optional]
 **endDate** | **java.time.OffsetDateTime**|  | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

