# UniswapV3Api

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswapV3GetBundlesCurrent**](UniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
[**uniswapV3GetBurnsCurrent**](UniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
[**uniswapV3GetDayDataCurrent**](UniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
[**uniswapV3GetFactoryCurrent**](UniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
[**uniswapV3GetMintsCurrent**](UniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
[**uniswapV3GetPoolsCurrent**](UniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
[**uniswapV3GetPoolsDayDataCurrent**](UniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
[**uniswapV3GetPoolsHourDataCurrent**](UniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
[**uniswapV3GetPositionsCurrent**](UniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
[**uniswapV3GetPositionsSnapshotsCurrent**](UniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
[**uniswapV3GetSwapsCurrent**](UniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
[**uniswapV3GetTicksCurrent**](UniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
[**uniswapV3GetTicksDayDataCurrent**](UniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
[**uniswapV3GetTokensCurrent**](UniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
[**uniswapV3GetTokensDayDataCurrent**](UniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
[**uniswapV3GetTokensHourDataCurrent**](UniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)



## uniswapV3GetBundlesCurrent

Bundles (current)

Gets bundles.

### Example

```bash
 uniswapV3GetBundlesCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[UniswapV3BundleV3DTO]**](UniswapV3BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetBurnsCurrent

Burns (current)

Gets burns.

### Example

```bash
 uniswapV3GetBurnsCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3BurnV3DTO]**](UniswapV3BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetDayDataCurrent

DayData (current)

Gets uniswapv3 day data.

### Example

```bash
 uniswapV3GetDayDataCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[UniswapV3UniswapDayDataV3DTO]**](UniswapV3UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetFactoryCurrent

Factory (current)

Gets factory.

### Example

```bash
 uniswapV3GetFactoryCurrent
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**array[UniswapV3FactoryV3DTO]**](UniswapV3FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetMintsCurrent

Mints (current)

Gets mints.

### Example

```bash
 uniswapV3GetMintsCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3MintV3DTO]**](UniswapV3MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetPoolsCurrent

Pools (current) 🔥

Gets pools.

### Example

```bash
 uniswapV3GetPoolsCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3PoolV3DTO]**](UniswapV3PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetPoolsDayDataCurrent

PoolsDayData (current)

Gets pools day data.

### Example

```bash
 uniswapV3GetPoolsDayDataCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3PoolDayDataV3DTO]**](UniswapV3PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetPoolsHourDataCurrent

PoolsHourData (current)

Gets pools hour data.

### Example

```bash
 uniswapV3GetPoolsHourDataCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3PoolHourDataV3DTO]**](UniswapV3PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetPositionsCurrent

Positions (current)

Gets positions.

### Example

```bash
 uniswapV3GetPositionsCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3PositionV3DTO]**](UniswapV3PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetPositionsSnapshotsCurrent

PositionsSnapshots (current)

Gets positions snapshots.

### Example

```bash
 uniswapV3GetPositionsSnapshotsCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3PositionSnapshotV3DTO]**](UniswapV3PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetSwapsCurrent

Swaps (current) 🔥

Gets swaps.

### Example

```bash
 uniswapV3GetSwapsCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3SwapV3DTO]**](UniswapV3SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetTicksCurrent

Ticks (current)

Gets ticks.

### Example

```bash
 uniswapV3GetTicksCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3TickV3DTO]**](UniswapV3TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetTicksDayDataCurrent

TicksDayData (current)

Gets ticks day data.

### Example

```bash
 uniswapV3GetTicksDayDataCurrent  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterPoolId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3TickDayDataV3DTO]**](UniswapV3TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetTokensCurrent

Tokens (current) 🔥

Gets tokens.

### Example

```bash
 uniswapV3GetTokensCurrent  filter_token_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3TokenV3DTO]**](UniswapV3TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetTokensDayDataCurrent

TokensDayData (current)

Gets tokens day data.

### Example

```bash
 uniswapV3GetTokensDayDataCurrent  filter_token_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3TokenV3DayDataDTO]**](UniswapV3TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## uniswapV3GetTokensHourDataCurrent

TokensHourData (current)

Gets tokens hour data.

### Example

```bash
 uniswapV3GetTokensHourDataCurrent  filter_token_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filterTokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[UniswapV3TokenHourDataV3DTO]**](UniswapV3TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

