# GaugeTypeWeightApi

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ChainsChainIdDappsCurveGaugeTypeWeightHistoricalGet**](GaugeTypeWeightApi.md#ChainsChainIdDappsCurveGaugeTypeWeightHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/gaugeTypeWeight/historical | 


# **ChainsChainIdDappsCurveGaugeTypeWeightHistoricalGet**
> ChainsChainIdDappsCurveGaugeTypeWeightHistoricalGet(chain_id, start_block = var.start_block, end_block = var.end_block, start_date = var.start_date, end_date = var.end_date)



### Example
```R
library(openapi)

# prepare function argument(s)
var_chain_id <- "chain_id_example" # character | 
var_start_block <- 56 # integer |  (Optional)
var_end_block <- 56 # integer |  (Optional)
var_start_date <- "start_date_example" # character |  (Optional)
var_end_date <- "end_date_example" # character |  (Optional)

api_instance <- GaugeTypeWeightApi$new()
api_instance$ChainsChainIdDappsCurveGaugeTypeWeightHistoricalGet(var_chain_id, start_block = var_start_block, end_block = var_end_block, start_date = var_start_date, end_date = var_end_date)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chain_id** | **character**|  | 
 **start_block** | **integer**|  | [optional] 
 **end_block** | **integer**|  | [optional] 
 **start_date** | **character**|  | [optional] 
 **end_date** | **character**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Success |  -  |

