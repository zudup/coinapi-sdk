# OpenAPI\Client\CowApi

All URIs are relative to https://onchain.coinapi.io, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**cowGetOrderDTOsHistorical()**](CowApi.md#cowGetOrderDTOsHistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥 |
| [**cowGetOrdersHistorical()**](CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical) |
| [**cowGetSettlementDTOsHistorical()**](CowApi.md#cowGetSettlementDTOsHistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥 |
| [**cowGetSettlementsHistorical()**](CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical) |
| [**cowGetTokenDTOsHistorical()**](CowApi.md#cowGetTokenDTOsHistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥 |
| [**cowGetTokensHistorical()**](CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥 |
| [**cowGetTradeDTOsHistorical()**](CowApi.md#cowGetTradeDTOsHistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥 |
| [**cowGetTradesHistorical()**](CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥 |
| [**cowGetUserDTOsHistorical()**](CowApi.md#cowGetUserDTOsHistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥 |
| [**cowGetUsersHistorical()**](CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical) |


## `cowGetOrderDTOsHistorical()`

```php
cowGetOrderDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CowOrderDTO[]
```

OrderDTOs (historical) 🔥

Gets OrderDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->cowGetOrderDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetOrderDTOsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowOrderDTO[]**](../Model/CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetOrdersHistorical()`

```php
cowGetOrdersHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CowOrderDTO[]
```

Orders (historical)

Gets orders.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $result = $apiInstance->cowGetOrdersHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetOrdersHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowOrderDTO[]**](../Model/CowOrderDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetSettlementDTOsHistorical()`

```php
cowGetSettlementDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CowSettlementDTO[]
```

SettlementDTOs (historical) 🔥

Gets SettlementDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->cowGetSettlementDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetSettlementDTOsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowSettlementDTO[]**](../Model/CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetSettlementsHistorical()`

```php
cowGetSettlementsHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CowSettlementDTO[]
```

Settlements (historical)

Gets settlements.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime

try {
    $result = $apiInstance->cowGetSettlementsHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetSettlementsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowSettlementDTO[]**](../Model/CowSettlementDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetTokenDTOsHistorical()`

```php
cowGetTokenDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CowTokenDTO[]
```

TokenDTOs (historical) 🔥

Gets TokenDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->cowGetTokenDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetTokenDTOsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowTokenDTO[]**](../Model/CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetTokensHistorical()`

```php
cowGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $token_id): \OpenAPI\Client\Model\CowTokenDTO[]
```

Tokens (historical) 🔥

Gets tokens.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$token_id = 'token_id_example'; // string | 

try {
    $result = $apiInstance->cowGetTokensHistorical($start_block, $end_block, $start_date, $end_date, $token_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetTokensHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **token_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowTokenDTO[]**](../Model/CowTokenDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetTradeDTOsHistorical()`

```php
cowGetTradeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CowTradeDTO[]
```

TradeDTOs (historical) 🔥

Gets TradeDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->cowGetTradeDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetTradeDTOsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowTradeDTO[]**](../Model/CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetTradesHistorical()`

```php
cowGetTradesHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CowTradeDTO[]
```

Trades (historical) 🔥

Gets trades.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->cowGetTradesHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetTradesHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowTradeDTO[]**](../Model/CowTradeDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetUserDTOsHistorical()`

```php
cowGetUserDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id): \OpenAPI\Client\Model\CowUserDTO[]
```

UserDTOs (historical) 🔥

Gets UserDTOs.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->cowGetUserDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetUserDTOsHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |
| **pool_id** | **string**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowUserDTO[]**](../Model/CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `cowGetUsersHistorical()`

```php
cowGetUsersHistorical($start_block, $end_block, $start_date, $end_date): \OpenAPI\Client\Model\CowUserDTO[]
```

Users (historical)

Gets users.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 

try {
    $result = $apiInstance->cowGetUsersHistorical($start_block, $end_block, $start_date, $end_date);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetUsersHistorical: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **start_block** | **int**|  | [optional] |
| **end_block** | **int**|  | [optional] |
| **start_date** | **\DateTime**|  | [optional] |
| **end_date** | **\DateTime**|  | [optional] |

### Return type

[**\OpenAPI\Client\Model\CowUserDTO[]**](../Model/CowUserDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`, `application/json`, `text/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
