# WWW::OpenAPIClient::UniswapV2Api

## Load the API package
```perl
use WWW::OpenAPIClient::Object::UniswapV2Api;
```

All URIs are relative to *https://onchain.coinapi.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**uniswap_v2_get_bundle_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_bundle_v2s__historical) | **GET** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥
[**uniswap_v2_get_burn_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_burn_v2s__historical) | **GET** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥
[**uniswap_v2_get_liquidity_position_snapshot_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_liquidity_position_snapshot_v2s__historical) | **GET** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥
[**uniswap_v2_get_liquidity_position_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_liquidity_position_v2s__historical) | **GET** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥
[**uniswap_v2_get_mint_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_mint_v2s__historical) | **GET** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥
[**uniswap_v2_get_pair_day_data_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_pair_day_data_v2s__historical) | **GET** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥
[**uniswap_v2_get_pair_hour_data_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_pair_hour_data_v2s__historical) | **GET** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥
[**uniswap_v2_get_pair_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_pair_v2s__historical) | **GET** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥
[**uniswap_v2_get_pools__current**](UniswapV2Api.md#uniswap_v2_get_pools__current) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
[**uniswap_v2_get_swap_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_swap_v2s__historical) | **GET** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥
[**uniswap_v2_get_swaps__current**](UniswapV2Api.md#uniswap_v2_get_swaps__current) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
[**uniswap_v2_get_token_day_data_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_token_day_data_v2s__historical) | **GET** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥
[**uniswap_v2_get_token_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_token_v2s__historical) | **GET** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥
[**uniswap_v2_get_tokens__current**](UniswapV2Api.md#uniswap_v2_get_tokens__current) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
[**uniswap_v2_get_transaction_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_transaction_v2s__historical) | **GET** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥
[**uniswap_v2_get_uniswap_day_data_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_uniswap_day_data_v2s__historical) | **GET** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥
[**uniswap_v2_get_uniswap_factory_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_uniswap_factory_v2s__historical) | **GET** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥
[**uniswap_v2_get_user_v2s__historical**](UniswapV2Api.md#uniswap_v2_get_user_v2s__historical) | **GET** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥


# **uniswap_v2_get_bundle_v2s__historical**
> ARRAY[UniswapV2BundleV2DTO] uniswap_v2_get_bundle_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

BundleV2s (historical) 🔥

Gets bundlev2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Constant 1.

eval {
    my $result = $api_instance->uniswap_v2_get_bundle_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_bundle_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Constant 1. | [optional] 

### Return type

[**ARRAY[UniswapV2BundleV2DTO]**](UniswapV2BundleV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_burn_v2s__historical**
> ARRAY[UniswapV2BurnV2DTO] uniswap_v2_get_burn_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

BurnV2s (historical) 🔥

Gets burnv2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash plus index in the transaction burn array
my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->uniswap_v2_get_burn_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_burn_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Transaction hash plus index in the transaction burn array | [optional] 
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[UniswapV2BurnV2DTO]**](UniswapV2BurnV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_liquidity_position_snapshot_v2s__historical**
> ARRAY[UniswapV2LiquidityPositionSnapshotV2DTO] uniswap_v2_get_liquidity_position_snapshot_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair)

LiquidityPositionSnapshotV2s (historical) 🔥

Gets liquiditypositionsnapshotv2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | 
my $end_block = 789; # int | 
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | 
my $id = "id_example"; # string | 
my $user = "user_example"; # string | 
my $pair = "pair_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_liquidity_position_snapshot_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_liquidity_position_snapshot_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**|  | [optional] 
 **end_block** | **int**|  | [optional] 
 **start_date** | **DATE_TIME**|  | [optional] 
 **end_date** | **DATE_TIME**|  | [optional] 
 **id** | **string**|  | [optional] 
 **user** | **string**|  | [optional] 
 **pair** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2LiquidityPositionSnapshotV2DTO]**](UniswapV2LiquidityPositionSnapshotV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_liquidity_position_v2s__historical**
> ARRAY[UniswapV2LiquidityPositionV2DTO] uniswap_v2_get_liquidity_position_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair)

LiquidityPositionV2s (historical) 🔥

Gets liquiditypositionv2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | User address and pair address concatenated with a dash.
my $user = "user_example"; # string | Reference to user.
my $pair = "pair_example"; # string | Reference to the pair liquidity is being provided on.

eval {
    my $result = $api_instance->uniswap_v2_get_liquidity_position_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, user => $user, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_liquidity_position_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| User address and pair address concatenated with a dash. | [optional] 
 **user** | **string**| Reference to user. | [optional] 
 **pair** | **string**| Reference to the pair liquidity is being provided on. | [optional] 

### Return type

[**ARRAY[UniswapV2LiquidityPositionV2DTO]**](UniswapV2LiquidityPositionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_mint_v2s__historical**
> ARRAY[UniswapV2MintV2DTO] uniswap_v2_get_mint_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

MintV2s (historical) 🔥

Gets mintv2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash plus index in the transaction mint array.
my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->uniswap_v2_get_mint_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_mint_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Transaction hash plus index in the transaction mint array. | [optional] 
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[UniswapV2MintV2DTO]**](UniswapV2MintV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pair_day_data_v2s__historical**
> ARRAY[UniswapV2PairDayDataV2DTO] uniswap_v2_get_pair_day_data_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, token_0 => $token_0, token_1 => $token_1)

PairDayDataV2s (historical) 🔥

Gets pairdaydatav2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $token_0 = "token_0_example"; # string | Reference to token0.
my $token_1 = "token_1_example"; # string | Reference to token1.

eval {
    my $result = $api_instance->uniswap_v2_get_pair_day_data_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pair_day_data_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **token_0** | **string**| Reference to token0. | [optional] 
 **token_1** | **string**| Reference to token1. | [optional] 

### Return type

[**ARRAY[UniswapV2PairDayDataV2DTO]**](UniswapV2PairDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pair_hour_data_v2s__historical**
> ARRAY[UniswapV2PairHourDataV2DTO] uniswap_v2_get_pair_hour_data_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

PairHourDataV2s (historical) 🔥

Gets pairhourdatav2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | 
my $pair = "pair_example"; # string | Address for pair contract.

eval {
    my $result = $api_instance->uniswap_v2_get_pair_hour_data_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pair_hour_data_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**|  | [optional] 
 **pair** | **string**| Address for pair contract. | [optional] 

### Return type

[**ARRAY[UniswapV2PairHourDataV2DTO]**](UniswapV2PairHourDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pair_v2s__historical**
> ARRAY[UniswapV2PairV2DTO] uniswap_v2_get_pair_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, token_0 => $token_0, token_1 => $token_1)

PairV2s (historical) 🔥

Gets pairv2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Pair contract address.
my $token_0 = "token_0_example"; # string | Reference to token0 as stored in pair contract.
my $token_1 = "token_1_example"; # string | Reference to token1 as stored in pair contract.

eval {
    my $result = $api_instance->uniswap_v2_get_pair_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, token_0 => $token_0, token_1 => $token_1);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pair_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Pair contract address. | [optional] 
 **token_0** | **string**| Reference to token0 as stored in pair contract. | [optional] 
 **token_1** | **string**| Reference to token1 as stored in pair contract. | [optional] 

### Return type

[**ARRAY[UniswapV2PairV2DTO]**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_pools__current**
> ARRAY[UniswapV2PairV2DTO] uniswap_v2_get_pools__current(filter_pool_id => $filter_pool_id)

Pools (current) 🔥

Gets pools.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $filter_pool_id = "filter_pool_id_example"; # string | 

eval {
    my $result = $api_instance->uniswap_v2_get_pools__current(filter_pool_id => $filter_pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_pools__current: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter_pool_id** | **string**|  | [optional] 

### Return type

[**ARRAY[UniswapV2PairV2DTO]**](UniswapV2PairV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_swap_v2s__historical**
> ARRAY[UniswapV2SwapV2DTO] uniswap_v2_get_swap_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair)

SwapV2s (historical) 🔥

Gets swapv2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Transaction hash plus index in Transaction swap array.
my $pair = "pair_example"; # string | Reference to pair.

eval {
    my $result = $api_instance->uniswap_v2_get_swap_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, pair => $pair);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_swap_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Transaction hash plus index in Transaction swap array. | [optional] 
 **pair** | **string**| Reference to pair. | [optional] 

### Return type

[**ARRAY[UniswapV2SwapV2DTO]**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_swaps__current**
> ARRAY[UniswapV2SwapV2DTO] uniswap_v2_get_swaps__current()

Swaps (current) 🔥

Gets swaps.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_get_swaps__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_swaps__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2SwapV2DTO]**](UniswapV2SwapV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_token_day_data_v2s__historical**
> ARRAY[UniswapV2TokenDayDataV2DTO] uniswap_v2_get_token_day_data_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

TokenDayDataV2s (historical) 🔥

Gets tokendaydatav2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.

eval {
    my $result = $api_instance->uniswap_v2_get_token_day_data_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_token_day_data_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Token address and day id (day start timestamp in unix / 86400) concatenated with a dash. | [optional] 

### Return type

[**ARRAY[UniswapV2TokenDayDataV2DTO]**](UniswapV2TokenDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_token_v2s__historical**
> ARRAY[UniswapV2TokenV2DTO] uniswap_v2_get_token_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, symbol => $symbol, name => $name)

TokenV2s (historical) 🔥

Gets tokenv2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Token address.
my $symbol = "symbol_example"; # string | Token symbol.
my $name = "name_example"; # string | Token name.

eval {
    my $result = $api_instance->uniswap_v2_get_token_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id, symbol => $symbol, name => $name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_token_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Token address. | [optional] 
 **symbol** | **string**| Token symbol. | [optional] 
 **name** | **string**| Token name. | [optional] 

### Return type

[**ARRAY[UniswapV2TokenV2DTO]**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_tokens__current**
> ARRAY[UniswapV2TokenV2DTO] uniswap_v2_get_tokens__current()

Tokens (current) 🔥

Gets tokens.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);


eval {
    my $result = $api_instance->uniswap_v2_get_tokens__current();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_tokens__current: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ARRAY[UniswapV2TokenV2DTO]**](UniswapV2TokenV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_transaction_v2s__historical**
> ARRAY[UniswapV2TransactionV2DTO] uniswap_v2_get_transaction_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

TransactionV2s (historical) 🔥

Gets transactionv2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Ethereum transaction hash.

eval {
    my $result = $api_instance->uniswap_v2_get_transaction_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_transaction_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Ethereum transaction hash. | [optional] 

### Return type

[**ARRAY[UniswapV2TransactionV2DTO]**](UniswapV2TransactionV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_uniswap_day_data_v2s__historical**
> ARRAY[UniswapV2UniswapDayDataV2DTO] uniswap_v2_get_uniswap_day_data_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

UniswapDayDataV2s (historical) 🔥

Gets uniswapdaydatav2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Unix timestamp for start of day / 86400 giving a unique day index.

eval {
    my $result = $api_instance->uniswap_v2_get_uniswap_day_data_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_uniswap_day_data_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Unix timestamp for start of day / 86400 giving a unique day index. | [optional] 

### Return type

[**ARRAY[UniswapV2UniswapDayDataV2DTO]**](UniswapV2UniswapDayDataV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_uniswap_factory_v2s__historical**
> ARRAY[UniswapV2UniswapFactoryV2DTO] uniswap_v2_get_uniswap_factory_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

UniswapFactoryV2s (historical) 🔥

Gets uniswapfactoryv2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | Factory address.

eval {
    my $result = $api_instance->uniswap_v2_get_uniswap_factory_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_uniswap_factory_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| Factory address. | [optional] 

### Return type

[**ARRAY[UniswapV2UniswapFactoryV2DTO]**](UniswapV2UniswapFactoryV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uniswap_v2_get_user_v2s__historical**
> ARRAY[UniswapV2UserV2DTO] uniswap_v2_get_user_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id)

UserV2s (historical) 🔥

Gets userv2s.

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::UniswapV2Api;
my $api_instance = WWW::OpenAPIClient::UniswapV2Api->new(
);

my $start_block = 789; # int | The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.
my $end_block = 789; # int | The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).
my $start_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.
my $end_date = DateTime->from_epoch(epoch => str2time('null')); # DATE_TIME | The end date of timeframe.
my $id = "id_example"; # string | User address.

eval {
    my $result = $api_instance->uniswap_v2_get_user_v2s__historical(start_block => $start_block, end_block => $end_block, start_date => $start_date, end_date => $end_date, id => $id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UniswapV2Api->uniswap_v2_get_user_v2s__historical: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_block** | **int**| The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock. | [optional] 
 **end_block** | **int**| The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock). | [optional] 
 **start_date** | **DATE_TIME**| The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included. | [optional] 
 **end_date** | **DATE_TIME**| The end date of timeframe. | [optional] 
 **id** | **string**| User address. | [optional] 

### Return type

[**ARRAY[UniswapV2UserV2DTO]**](UniswapV2UserV2DTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

