# OpenAPI\Client\SushiswapApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**chainsChainIdDappsSushiswapPoolsCurrentGet()**](SushiswapApi.md#chainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools |
| [**chainsChainIdDappsSushiswapSwapsCurrentGet()**](SushiswapApi.md#chainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps |
| [**chainsChainIdDappsSushiswapTokensCurrentGet()**](SushiswapApi.md#chainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens |


## `chainsChainIdDappsSushiswapPoolsCurrentGet()`

```php
chainsChainIdDappsSushiswapPoolsCurrentGet($chain_id): \OpenAPI\Client\Model\PairDTO[]
```

GetPools

Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id

try {
    $result = $apiInstance->chainsChainIdDappsSushiswapPoolsCurrentGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->chainsChainIdDappsSushiswapPoolsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |

### Return type

[**\OpenAPI\Client\Model\PairDTO[]**](../Model/PairDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsSushiswapSwapsCurrentGet()`

```php
chainsChainIdDappsSushiswapSwapsCurrentGet($chain_id): \OpenAPI\Client\Model\SwapDTO[]
```

GetSwaps

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id

try {
    $result = $apiInstance->chainsChainIdDappsSushiswapSwapsCurrentGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->chainsChainIdDappsSushiswapSwapsCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |

### Return type

[**\OpenAPI\Client\Model\SwapDTO[]**](../Model/SwapDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `chainsChainIdDappsSushiswapTokensCurrentGet()`

```php
chainsChainIdDappsSushiswapTokensCurrentGet($chain_id): \OpenAPI\Client\Model\TokenDTO[]
```

GetTokens

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\SushiswapApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$chain_id = 'chain_id_example'; // string | Chain id

try {
    $result = $apiInstance->chainsChainIdDappsSushiswapTokensCurrentGet($chain_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling SushiswapApi->chainsChainIdDappsSushiswapTokensCurrentGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **chain_id** | **string**| Chain id | |

### Return type

[**\OpenAPI\Client\Model\TokenDTO[]**](../Model/TokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
