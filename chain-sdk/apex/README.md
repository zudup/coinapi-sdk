# OnChain API API Client


\nThis section will provide necessary information about the `OnChain API` protocol. \n<br/><br/>\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.        \n                    

## Requirements

- [Salesforce DX](https://www.salesforce.com/products/platform/products/salesforce-dx/)

If everything is set correctly:

- Running `sfdx version` in a command prompt should output something like:

  ```bash
  sfdx-cli/5.7.5-05549de (darwin-amd64) go1.7.5 sfdxstable
  ```

## Installation

1. Copy the output into your Salesforce DX folder - or alternatively deploy the output directly into the workspace.
2. Deploy the code via Salesforce DX to your Scratch Org

   ```bash
      sfdx force:source:push
   ```

3. If the API needs authentication update the Named Credential in Setup.
4. Run your Apex tests using

   ```bash
       sfdx sfdx force:apex:test:run
   ```

5. Retrieve the job id from the console and check the test results.

  ```bash
  sfdx force:apex:test:report -i theJobId
  ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Apex code:

```java
OASPoolsApi api = new OASPoolsApi();

Map<String, Object> params = new Map<String, Object>{
    'chainId' => 'null',
    'startBlock' => 2147483648L,
    'endBlock' => 2147483648L,
    'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
    'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
    'poolId' => 'null'
};

try {
    // cross your fingers
    api.chainsChainIdDappsCurvePoolsHistoricalGet(params);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASPoolsApi* | [**chainsChainIdDappsCurvePoolsHistoricalGet**](OASPoolsApi.md#chainsChainIdDappsCurvePoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/pools/historical | 
*OASPoolsApi* | [**chainsChainIdDappsSushiswapPoolsHistoricalGet**](OASPoolsApi.md#chainsChainIdDappsSushiswapPoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/historical | 
*OASPoolsApi* | [**chainsChainIdDappsUniswapv2PoolsHistoricalGet**](OASPoolsApi.md#chainsChainIdDappsUniswapv2PoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/historical | 
*OASPoolsApi* | [**chainsChainIdDappsUniswapv3PoolsHistoricalGet**](OASPoolsApi.md#chainsChainIdDappsUniswapv3PoolsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/historical | 
*OASSushiswapApi* | [**chainsChainIdDappsSushiswapPoolsCurrentGet**](OASSushiswapApi.md#chainsChainIdDappsSushiswapPoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/pools/current | GetPools
*OASSushiswapApi* | [**chainsChainIdDappsSushiswapSwapsCurrentGet**](OASSushiswapApi.md#chainsChainIdDappsSushiswapSwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/current | GetSwaps
*OASSushiswapApi* | [**chainsChainIdDappsSushiswapTokensCurrentGet**](OASSushiswapApi.md#chainsChainIdDappsSushiswapTokensCurrentGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/current | GetTokens
*OASSwapsApi* | [**chainsChainIdDappsCurveSwapsHistoricalGet**](OASSwapsApi.md#chainsChainIdDappsCurveSwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/swaps/historical | 
*OASSwapsApi* | [**chainsChainIdDappsSushiswapSwapsHistoricalGet**](OASSwapsApi.md#chainsChainIdDappsSushiswapSwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/swaps/historical | 
*OASSwapsApi* | [**chainsChainIdDappsUniswapv2SwapsHistoricalGet**](OASSwapsApi.md#chainsChainIdDappsUniswapv2SwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/historical | 
*OASSwapsApi* | [**chainsChainIdDappsUniswapv3SwapsHistoricalGet**](OASSwapsApi.md#chainsChainIdDappsUniswapv3SwapsHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/historical | 
*OASTokensApi* | [**chainsChainIdDappsCowTokensHistoricalGet**](OASTokensApi.md#chainsChainIdDappsCowTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/tokens/historical | 
*OASTokensApi* | [**chainsChainIdDappsCurveTokensHistoricalGet**](OASTokensApi.md#chainsChainIdDappsCurveTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/curve/tokens/historical | 
*OASTokensApi* | [**chainsChainIdDappsDexTokensHistoricalGet**](OASTokensApi.md#chainsChainIdDappsDexTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/dex/tokens/historical | 
*OASTokensApi* | [**chainsChainIdDappsSushiswapTokensHistoricalGet**](OASTokensApi.md#chainsChainIdDappsSushiswapTokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/sushiswap/tokens/historical | 
*OASTokensApi* | [**chainsChainIdDappsUniswapv2TokensHistoricalGet**](OASTokensApi.md#chainsChainIdDappsUniswapv2TokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/historical | 
*OASTokensApi* | [**chainsChainIdDappsUniswapv3TokensHistoricalGet**](OASTokensApi.md#chainsChainIdDappsUniswapv3TokensHistoricalGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/historical | 
*OASTradesApi* | [**chainsChainIdDappsCowTradesHistoricalGet**](OASTradesApi.md#chainsChainIdDappsCowTradesHistoricalGet) | **GET** /chains/{chain_id}/dapps/cow/trades/historical | 
*OASTradesApi* | [**chainsChainIdDappsDexTradesHistoricalGet**](OASTradesApi.md#chainsChainIdDappsDexTradesHistoricalGet) | **GET** /chains/{chain_id}/dapps/dex/trades/historical | 
*OASUniswapV2Api* | [**chainsChainIdDappsUniswapv2PoolsCurrentGet**](OASUniswapV2Api.md#chainsChainIdDappsUniswapv2PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/pools/current | GetPools
*OASUniswapV2Api* | [**chainsChainIdDappsUniswapv2SwapsCurrentGet**](OASUniswapV2Api.md#chainsChainIdDappsUniswapv2SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/swaps/current | GetSwaps
*OASUniswapV2Api* | [**chainsChainIdDappsUniswapv2TokensCurrentGet**](OASUniswapV2Api.md#chainsChainIdDappsUniswapv2TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv2/tokens/current | GetTokens
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3BundleCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3BundleCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/bundle/current | GetBundles
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3BurnsCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3BurnsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/burns/current | GetBurns
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3FactoryCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3FactoryCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/factory/current | GetFactory
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3MintsCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3MintsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/mints/current | GetMints
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/pools/current | GetPools
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3PositionsCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3PositionsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/positions/current | GetPositions
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3SwapsCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3SwapsCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/swaps/current | GetSwaps
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3TicksCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3TicksCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticks/current | GetTicks
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3TicksDayDataCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3TicksDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/ticksDayData/current | GetTicksDayData
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3TokensCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokens/current | GetTokens
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensDayDataCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3TokensDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensDayData/current | GetTokensDayData
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3TokensHourDataCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3TokensHourDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/tokensHourData/current | GetTokensHourData
*OASUniswapV3Api* | [**chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet**](OASUniswapV3Api.md#chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet) | **GET** /chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


## Documentation for Models

 - [OASBigInteger](OASBigInteger.md)
 - [OASBundleV3DTO](OASBundleV3DTO.md)
 - [OASBurnV3DTO](OASBurnV3DTO.md)
 - [OASETradeAggressiveSide](OASETradeAggressiveSide.md)
 - [OASFactoryV3DTO](OASFactoryV3DTO.md)
 - [OASMintV3DTO](OASMintV3DTO.md)
 - [OASPairDTO](OASPairDTO.md)
 - [OASPairV2DTO](OASPairV2DTO.md)
 - [OASPoolDayDataV3DTO](OASPoolDayDataV3DTO.md)
 - [OASPoolHourDataV3DTO](OASPoolHourDataV3DTO.md)
 - [OASPoolV3DTO](OASPoolV3DTO.md)
 - [OASPositionSnapshotV3DTO](OASPositionSnapshotV3DTO.md)
 - [OASPositionV3DTO](OASPositionV3DTO.md)
 - [OASSwapDTO](OASSwapDTO.md)
 - [OASSwapV2DTO](OASSwapV2DTO.md)
 - [OASSwapV3DTO](OASSwapV3DTO.md)
 - [OASTickDayDataV3DTO](OASTickDayDataV3DTO.md)
 - [OASTickV3DTO](OASTickV3DTO.md)
 - [OASTokenDTO](OASTokenDTO.md)
 - [OASTokenHourDataV3DTO](OASTokenHourDataV3DTO.md)
 - [OASTokenV2DTO](OASTokenV2DTO.md)
 - [OASTokenV3DTO](OASTokenV3DTO.md)
 - [OASTokenV3DayDataDTO](OASTokenV3DayDataDTO.md)
 - [OASUniswapDayDataV3DTO](OASUniswapDayDataV3DTO.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Author

support@coinapi.io
