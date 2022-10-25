# OpenAPI\Client\GaugeTypeApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**chainsChainIdDappsCurveGaugeTypeHistoricalGet()**](GaugeTypeApi.md#chainsChainIdDappsCurveGaugeTypeHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/gaugeType/historical |  |


## `chainsChainIdDappsCurveGaugeTypeHistoricalGet()`

```php
chainsChainIdDappsCurveGaugeTypeHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\GaugeTypeApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $apiInstance->chainsChainIdDappsCurveGaugeTypeHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling GaugeTypeApi->chainsChainIdDappsCurveGaugeTypeHistoricalGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**|  | |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
