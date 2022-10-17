# openapi (EXPERIMENTAL)

This section will provide necessary information about the `OnChain API` protocol. 
<br/><br/>
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.        
                    

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen
For more information, please visit [https://www.coinapi.io](https://www.coinapi.io)

## Requirements

* Dart 2.12.0 or later OR Flutter 1.26.0 or later
* Dio 4.0.0+

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  openapi: 1.0.0
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  openapi:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  openapi:
    path: /path/to/openapi
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/openapi.dart';


final api = Openapi().getPoolsApi();
final String chainId = chainId_example; // String | 
final int startBlock = 789; // int | 
final int endBlock = 789; // int | 
final DateTime startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final DateTime endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
final String poolId = poolId_example; // String | 

try {
    api.chainsChainIdDappsCurvePoolsHistoricalGet(chainId, startBlock, endBlock, startDate, endDate, poolId);
} catch on DioError (e) {
    print("Exception when calling PoolsApi->chainsChainIdDappsCurvePoolsHistoricalGet: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*PoolsApi*](doc/PoolsApi.md) | [**chainsChainIdDappsCurvePoolsHistoricalGet**](doc/PoolsApi.md#chainschainiddappscurvepoolshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/pools/historical | 
[*PoolsApi*](doc/PoolsApi.md) | [**chainsChainIdDappsSushiswapPoolsHistoricalGet**](doc/PoolsApi.md#chainschainiddappssushiswappoolshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/historical | 
[*PoolsApi*](doc/PoolsApi.md) | [**chainsChainIdDappsUniswapv2PoolsHistoricalGet**](doc/PoolsApi.md#chainschainiddappsuniswapv2poolshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/historical | 
[*PoolsApi*](doc/PoolsApi.md) | [**chainsChainIdDappsUniswapv3PoolsHistoricalGet**](doc/PoolsApi.md#chainschainiddappsuniswapv3poolshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/historical | 
[*SushiswapApi*](doc/SushiswapApi.md) | [**chainsChainIdDappsSushiswapPoolsCurrentGet**](doc/SushiswapApi.md#chainschainiddappssushiswappoolscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
[*SushiswapApi*](doc/SushiswapApi.md) | [**chainsChainIdDappsSushiswapSwapsCurrentGet**](doc/SushiswapApi.md#chainschainiddappssushiswapswapscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
[*SushiswapApi*](doc/SushiswapApi.md) | [**chainsChainIdDappsSushiswapTokensCurrentGet**](doc/SushiswapApi.md#chainschainiddappssushiswaptokenscurrentget) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens
[*SwapsApi*](doc/SwapsApi.md) | [**chainsChainIdDappsCurveSwapsHistoricalGet**](doc/SwapsApi.md#chainschainiddappscurveswapshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/swaps/historical | 
[*SwapsApi*](doc/SwapsApi.md) | [**chainsChainIdDappsSushiswapSwapsHistoricalGet**](doc/SwapsApi.md#chainschainiddappssushiswapswapshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/historical | 
[*SwapsApi*](doc/SwapsApi.md) | [**chainsChainIdDappsUniswapv2SwapsHistoricalGet**](doc/SwapsApi.md#chainschainiddappsuniswapv2swapshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/historical | 
[*SwapsApi*](doc/SwapsApi.md) | [**chainsChainIdDappsUniswapv3SwapsHistoricalGet**](doc/SwapsApi.md#chainschainiddappsuniswapv3swapshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/historical | 
[*TokensApi*](doc/TokensApi.md) | [**chainsChainIdDappsCowTokensHistoricalGet**](doc/TokensApi.md#chainschainiddappscowtokenshistoricalget) | **GET** /chains/{chain_id}/dapps/cow/tokens/historical | 
[*TokensApi*](doc/TokensApi.md) | [**chainsChainIdDappsCurveTokensHistoricalGet**](doc/TokensApi.md#chainschainiddappscurvetokenshistoricalget) | **GET** /chains/{chain_id}/dapps/curve/tokens/historical | 
[*TokensApi*](doc/TokensApi.md) | [**chainsChainIdDappsDexTokensHistoricalGet**](doc/TokensApi.md#chainschainiddappsdextokenshistoricalget) | **GET** /chains/{chain_id}/dapps/dex/tokens/historical | 
[*TokensApi*](doc/TokensApi.md) | [**chainsChainIdDappsSushiswapTokensHistoricalGet**](doc/TokensApi.md#chainschainiddappssushiswaptokenshistoricalget) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/historical | 
[*TokensApi*](doc/TokensApi.md) | [**chainsChainIdDappsUniswapv2TokensHistoricalGet**](doc/TokensApi.md#chainschainiddappsuniswapv2tokenshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/historical | 
[*TokensApi*](doc/TokensApi.md) | [**chainsChainIdDappsUniswapv3TokensHistoricalGet**](doc/TokensApi.md#chainschainiddappsuniswapv3tokenshistoricalget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/historical | 
[*TradesApi*](doc/TradesApi.md) | [**chainsChainIdDappsCowTradesHistoricalGet**](doc/TradesApi.md#chainschainiddappscowtradeshistoricalget) | **GET** /chains/{chain_id}/dapps/cow/trades/historical | 
[*TradesApi*](doc/TradesApi.md) | [**chainsChainIdDappsDexTradesHistoricalGet**](doc/TradesApi.md#chainschainiddappsdextradeshistoricalget) | **GET** /chains/{chain_id}/dapps/dex/trades/historical | 
[*UniswapV2Api*](doc/UniswapV2Api.md) | [**chainsChainIdDappsUniswapv2PoolsCurrentGet**](doc/UniswapV2Api.md#chainschainiddappsuniswapv2poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
[*UniswapV2Api*](doc/UniswapV2Api.md) | [**chainsChainIdDappsUniswapv2SwapsCurrentGet**](doc/UniswapV2Api.md#chainschainiddappsuniswapv2swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
[*UniswapV2Api*](doc/UniswapV2Api.md) | [**chainsChainIdDappsUniswapv2TokensCurrentGet**](doc/UniswapV2Api.md#chainschainiddappsuniswapv2tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3BundleCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3bundlecurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3BurnsCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3burnscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3FactoryCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3factorycurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3MintsCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3mintscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3PoolsCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3poolscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3poolsdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3poolshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3positionsnapshotscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3PositionsCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3positionscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3SwapsCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3swapscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3TicksCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3tickscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3ticksdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3TokensCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3tokenscurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3tokensdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3tokenshourdatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
[*UniswapV3Api*](doc/UniswapV3Api.md) | [**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](doc/UniswapV3Api.md#chainschainiddappsuniswapv3uniswapdaydatacurrentget) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


## Documentation For Models

 - [BigInteger](doc/BigInteger.md)
 - [BundleV3DTO](doc/BundleV3DTO.md)
 - [BurnV3DTO](doc/BurnV3DTO.md)
 - [ETradeAggressiveSide](doc/ETradeAggressiveSide.md)
 - [FactoryV3DTO](doc/FactoryV3DTO.md)
 - [MintV3DTO](doc/MintV3DTO.md)
 - [PairDTO](doc/PairDTO.md)
 - [PairV2DTO](doc/PairV2DTO.md)
 - [PoolDayDataV3DTO](doc/PoolDayDataV3DTO.md)
 - [PoolHourDataV3DTO](doc/PoolHourDataV3DTO.md)
 - [PoolV3DTO](doc/PoolV3DTO.md)
 - [PositionSnapshotV3DTO](doc/PositionSnapshotV3DTO.md)
 - [PositionV3DTO](doc/PositionV3DTO.md)
 - [SwapDTO](doc/SwapDTO.md)
 - [SwapV2DTO](doc/SwapV2DTO.md)
 - [SwapV3DTO](doc/SwapV3DTO.md)
 - [TickDayDataV3DTO](doc/TickDayDataV3DTO.md)
 - [TickV3DTO](doc/TickV3DTO.md)
 - [TokenDTO](doc/TokenDTO.md)
 - [TokenHourDataV3DTO](doc/TokenHourDataV3DTO.md)
 - [TokenV2DTO](doc/TokenV2DTO.md)
 - [TokenV3DTO](doc/TokenV3DTO.md)
 - [TokenV3DayDataDTO](doc/TokenV3DayDataDTO.md)
 - [UniswapDayDataV3DTO](doc/UniswapDayDataV3DTO.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

support@coinapi.io
