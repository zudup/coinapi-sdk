# OpenAPI\Client\BurnsApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**chainsChainIdDappsSushiswapBurnsHistoricalGet()**](BurnsApi.md#chainsChainIdDappsSushiswapBurnsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/burns/historical |  |
| [**chainsChainIdDappsUniswapv2BurnsHistoricalGet()**](BurnsApi.md#chainsChainIdDappsUniswapv2BurnsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/burns/historical |  |
| [**chainsChainIdDappsUniswapv3BurnsHistoricalGet()**](BurnsApi.md#chainsChainIdDappsUniswapv3BurnsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/historical |  |


## `chainsChainIdDappsSushiswapBurnsHistoricalGet()`

```php
chainsChainIdDappsSushiswapBurnsHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date, $pool_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\BurnsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $apiInstance->chainsChainIdDappsSushiswapBurnsHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date, $pool_id);
} catch (Exception $e) {
    echo 'Exception when calling BurnsApi->chainsChainIdDappsSushiswapBurnsHistoricalGet: ', $e->getMessage(), PHP_EOL;
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
| **pool_id** | **string**|  | [optional] |

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

## `chainsChainIdDappsUniswapv2BurnsHistoricalGet()`

```php
chainsChainIdDappsUniswapv2BurnsHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date, $pool_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\BurnsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $apiInstance->chainsChainIdDappsUniswapv2BurnsHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date, $pool_id);
} catch (Exception $e) {
    echo 'Exception when calling BurnsApi->chainsChainIdDappsUniswapv2BurnsHistoricalGet: ', $e->getMessage(), PHP_EOL;
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
| **pool_id** | **string**|  | [optional] |

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

## `chainsChainIdDappsUniswapv3BurnsHistoricalGet()`

```php
chainsChainIdDappsUniswapv3BurnsHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date, $pool_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\BurnsApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$pool_id = 'pool_id_example'; // string

try {
    $apiInstance->chainsChainIdDappsUniswapv3BurnsHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date, $pool_id);
} catch (Exception $e) {
    echo 'Exception when calling BurnsApi->chainsChainIdDappsUniswapv3BurnsHistoricalGet: ', $e->getMessage(), PHP_EOL;
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
| **pool_id** | **string**|  | [optional] |

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
