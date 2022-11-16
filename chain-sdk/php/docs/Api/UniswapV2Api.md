# OpenAPI\Client\UniswapV2Api

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**uniswapV2GetPoolsCurrent()**](UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥 |
| [**uniswapV2GetSwapsCurrent()**](UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥 |
| [**uniswapV2GetTokensCurrent()**](UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥 |


## `uniswapV2GetPoolsCurrent()`

```php
uniswapV2GetPoolsCurrent($filter_pool_id): \OpenAPI\Client\Model\UniswapV2PairV2DTO[]
```

Pools (current) 🔥

Gets pools.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$filter_pool_id = 'filter_pool_id_example'; // string

try {
    $result = $apiInstance->uniswapV2GetPoolsCurrent($filter_pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetPoolsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **filter_pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\UniswapV2PairV2DTO[]**](../Model/UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetSwapsCurrent()`

```php
uniswapV2GetSwapsCurrent(): \OpenAPI\Client\Model\UniswapV2SwapV2DTO[]
```

Swaps (current) 🔥

Gets swaps.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2GetSwapsCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetSwapsCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2SwapV2DTO[]**](../Model/UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `uniswapV2GetTokensCurrent()`

```php
uniswapV2GetTokensCurrent(): \OpenAPI\Client\Model\UniswapV2TokenV2DTO[]
```

Tokens (current) 🔥

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);

try {
    $result = $apiInstance->uniswapV2GetTokensCurrent();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->uniswapV2GetTokensCurrent: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**\OpenAPI\Client\Model\UniswapV2TokenV2DTO[]**](../Model/UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
