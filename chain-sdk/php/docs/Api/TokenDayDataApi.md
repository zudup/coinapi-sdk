# OpenAPI\Client\TokenDayDataApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet()**](TokenDayDataApi.md#chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical |  |
| [**chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet()**](TokenDayDataApi.md#chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical |  |


## `chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet()`

```php
chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date, $token_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\TokenDayDataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$token_id = 'token_id_example'; // string

try {
    $apiInstance->chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date, $token_id);
} catch (Exception $e) {
    echo 'Exception when calling TokenDayDataApi->chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet: ', $e->getMessage(), PHP_EOL;
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
| **token_id** | **string**|  | [optional] |

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

## `chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet()`

```php
chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date, $token_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\TokenDayDataApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string
$start_block = 56; // int
$end_block = 56; // int
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime
$token_id = 'token_id_example'; // string

try {
    $apiInstance->chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet($chain_id, $start_block, $end_block, $start_date, $end_date, $token_id);
} catch (Exception $e) {
    echo 'Exception when calling TokenDayDataApi->chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet: ', $e->getMessage(), PHP_EOL;
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
| **token_id** | **string**|  | [optional] |

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