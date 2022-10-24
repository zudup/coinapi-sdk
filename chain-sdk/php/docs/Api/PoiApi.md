# OpenAPI\Client\PoiApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**chainsChainIdDappsSushiswapPoiHistoricalGet()**](PoiApi.md#chainsChainIdDappsSushiswapPoiHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/poi/historical |  |
| [**chainsChainIdDappsUniswapv2PoiHistoricalGet()**](PoiApi.md#chainsChainIdDappsUniswapv2PoiHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/poi/historical |  |
| [**chainsChainIdDappsUniswapv3PoiHistoricalGet()**](PoiApi.md#chainsChainIdDappsUniswapv3PoiHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poi/historical |  |


## `chainsChainIdDappsSushiswapPoiHistoricalGet()`

```php
chainsChainIdDappsSushiswapPoiHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\PoiApi(
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
    $apiInstance->chainsChainIdDappsSushiswapPoiHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling PoiApi->chainsChainIdDappsSushiswapPoiHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

## `chainsChainIdDappsUniswapv2PoiHistoricalGet()`

```php
chainsChainIdDappsUniswapv2PoiHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\PoiApi(
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
    $apiInstance->chainsChainIdDappsUniswapv2PoiHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling PoiApi->chainsChainIdDappsUniswapv2PoiHistoricalGet: ', $e->getMessage(), PHP_EOL;
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

## `chainsChainIdDappsUniswapv3PoiHistoricalGet()`

```php
chainsChainIdDappsUniswapv3PoiHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\PoiApi(
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
    $apiInstance->chainsChainIdDappsUniswapv3PoiHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date);
} catch (Exception $e) {
    echo 'Exception when calling PoiApi->chainsChainIdDappsUniswapv3PoiHistoricalGet: ', $e->getMessage(), PHP_EOL;
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
