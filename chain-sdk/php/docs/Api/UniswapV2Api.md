# OpenAPI\Client\UniswapV2Api

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**chainsChainIdDappsUniswapv2PoolsCurrentGet()**](UniswapV2Api.md#chainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools |
| [**chainsChainIdDappsUniswapv2SwapsCurrentGet()**](UniswapV2Api.md#chainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps |
| [**chainsChainIdDappsUniswapv2TokensCurrentGet()**](UniswapV2Api.md#chainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens |


## `chainsChainIdDappsUniswapv2PoolsCurrentGet()`

```php
chainsChainIdDappsUniswapv2PoolsCurrentGet($chain_id): \OpenAPI\Client\Model\PairV2DTO[]
```

GetPools

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv2PoolsCurrentGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->chainsChainIdDappsUniswapv2PoolsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |

### Return type

[**\OpenAPI\Client\Model\PairV2DTO[]**](../Model/PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv2SwapsCurrentGet()`

```php
chainsChainIdDappsUniswapv2SwapsCurrentGet($chain_id): \OpenAPI\Client\Model\SwapV2DTO[]
```

GetSwaps

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv2SwapsCurrentGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->chainsChainIdDappsUniswapv2SwapsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |

### Return type

[**\OpenAPI\Client\Model\SwapV2DTO[]**](../Model/SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsUniswapv2TokensCurrentGet()`

```php
chainsChainIdDappsUniswapv2TokensCurrentGet($chain_id): \OpenAPI\Client\Model\TokenV2DTO[]
```

GetTokens

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\UniswapV2Api(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id

try {
    $result = $apiInstance->chainsChainIdDappsUniswapv2TokensCurrentGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling UniswapV2Api->chainsChainIdDappsUniswapv2TokensCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |

### Return type

[**\OpenAPI\Client\Model\TokenV2DTO[]**](../Model/TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
