# UniswapV3Api

All URIs are relative to **

Method | HTTP request | Description
------------- | ------------- | -------------
[**chainsChainIdDappsUniswapv3BundleCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[**chainsChainIdDappsUniswapv3BurnsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[**chainsChainIdDappsUniswapv3FactoryCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[**chainsChainIdDappsUniswapv3MintsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[**chainsChainIdDappsUniswapv3PoolsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[**chainsChainIdDappsUniswapv3PositionsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[**chainsChainIdDappsUniswapv3SwapsCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[**chainsChainIdDappsUniswapv3TicksCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[**chainsChainIdDappsUniswapv3TokensCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](UniswapV3Api.md#chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData



## chainsChainIdDappsUniswapv3BundleCurrentGet

GetBundles

### Example

```bash
 chainsChainIdDappsUniswapv3BundleCurrentGet chain_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]

### Return type

[**array[BundleV3DTO]**](BundleV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3BurnsCurrentGet

GetBurns

### Example

```bash
 chainsChainIdDappsUniswapv3BurnsCurrentGet chain_id=value  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[BurnV3DTO]**](BurnV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3FactoryCurrentGet

GetFactory

### Example

```bash
 chainsChainIdDappsUniswapv3FactoryCurrentGet chain_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]

### Return type

[**array[FactoryV3DTO]**](FactoryV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3MintsCurrentGet

GetMints

### Example

```bash
 chainsChainIdDappsUniswapv3MintsCurrentGet chain_id=value  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[MintV3DTO]**](MintV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3PoolsCurrentGet

GetPools

### Example

```bash
 chainsChainIdDappsUniswapv3PoolsCurrentGet chain_id=value  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[PoolV3DTO]**](PoolV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet

GetPoolsDayData

### Example

```bash
 chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet chain_id=value  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[PoolDayDataV3DTO]**](PoolDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet

GetPoolsHourData

### Example

```bash
 chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet chain_id=value  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[PoolHourDataV3DTO]**](PoolHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet

GetPositionSnapshot

### Example

```bash
 chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet chain_id=value  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[PositionSnapshotV3DTO]**](PositionSnapshotV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3PositionsCurrentGet

GetPositions

### Example

```bash
 chainsChainIdDappsUniswapv3PositionsCurrentGet chain_id=value  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[PositionV3DTO]**](PositionV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3SwapsCurrentGet

GetSwaps

### Example

```bash
 chainsChainIdDappsUniswapv3SwapsCurrentGet chain_id=value  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[SwapV3DTO]**](SwapV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3TicksCurrentGet

GetTicks

### Example

```bash
 chainsChainIdDappsUniswapv3TicksCurrentGet chain_id=value  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[TickV3DTO]**](TickV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3TicksDayDataCurrentGet

GetTicksDayData

### Example

```bash
 chainsChainIdDappsUniswapv3TicksDayDataCurrentGet chain_id=value  filter_pool_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterPoolId** | **string** | Filter pool id | [optional] [default to null]

### Return type

[**array[TickDayDataV3DTO]**](TickDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3TokensCurrentGet

GetTokens

### Example

```bash
 chainsChainIdDappsUniswapv3TokensCurrentGet chain_id=value  filter_token_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterTokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[TokenV3DTO]**](TokenV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3TokensDayDataCurrentGet

GetTokensDayData

### Example

```bash
 chainsChainIdDappsUniswapv3TokensDayDataCurrentGet chain_id=value  filter_token_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterTokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[TokenV3DayDataDTO]**](TokenV3DayDataDTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3TokensHourDataCurrentGet

GetTokensHourData

### Example

```bash
 chainsChainIdDappsUniswapv3TokensHourDataCurrentGet chain_id=value  filter_token_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]
 **filterTokenId** | **string** |  | [optional] [default to null]

### Return type

[**array[TokenHourDataV3DTO]**](TokenHourDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet

GetUniswapDayData

### Example

```bash
 chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet chain_id=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **chainId** | **string** | Chain id | [default to null]

### Return type

[**array[UniswapDayDataV3DTO]**](UniswapDayDataV3DTO.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

