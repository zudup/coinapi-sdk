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
OASSushiswapApi api = new OASSushiswapApi();

try {
    // cross your fingers
    List<OASCurveExchangeDTO> result = api.curveGetExchangesCurrent();
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASSushiswapApi* | [**curveGetExchangesCurrent**](OASSushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*OASSushiswapApi* | [**dexGetTradesCurrent**](OASSushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*OASSushiswapApi* | [**sushiswapGetPoolsCurrent**](OASSushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*OASSushiswapApi* | [**sushiswapGetSwapsCurrent**](OASSushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*OASSushiswapApi* | [**sushiswapGetTokensCurrent**](OASSushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPoolsCurrent**](OASUniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetSwapsCurrent**](OASUniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokensCurrent**](OASUniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetBundlesCurrent**](OASUniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*OASUniswapV3Api* | [**uniswapV3GetBurnsCurrent**](OASUniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*OASUniswapV3Api* | [**uniswapV3GetDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*OASUniswapV3Api* | [**uniswapV3GetFactoryCurrent**](OASUniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*OASUniswapV3Api* | [**uniswapV3GetMintsCurrent**](OASUniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*OASUniswapV3Api* | [**uniswapV3GetPoolsCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*OASUniswapV3Api* | [**uniswapV3GetPositionsCurrent**](OASUniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*OASUniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](OASUniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*OASUniswapV3Api* | [**uniswapV3GetSwapsCurrent**](OASUniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTicksCurrent**](OASUniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*OASUniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetTokensCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)


## Documentation for Models

 - [OASCurveExchangeDTO](OASCurveExchangeDTO.md)
 - [OASDexTradeDTO](OASDexTradeDTO.md)
 - [OASNumericsBigInteger](OASNumericsBigInteger.md)
 - [OASSushiswapPairDTO](OASSushiswapPairDTO.md)
 - [OASSushiswapSwapDTO](OASSushiswapSwapDTO.md)
 - [OASSushiswapTokenDTO](OASSushiswapTokenDTO.md)
 - [OASTransactionsETradeAggressiveSide](OASTransactionsETradeAggressiveSide.md)
 - [OASUniswapV2PairV2DTO](OASUniswapV2PairV2DTO.md)
 - [OASUniswapV2SwapV2DTO](OASUniswapV2SwapV2DTO.md)
 - [OASUniswapV2TokenV2DTO](OASUniswapV2TokenV2DTO.md)
 - [OASUniswapV3BundleV3DTO](OASUniswapV3BundleV3DTO.md)
 - [OASUniswapV3BurnV3DTO](OASUniswapV3BurnV3DTO.md)
 - [OASUniswapV3FactoryV3DTO](OASUniswapV3FactoryV3DTO.md)
 - [OASUniswapV3MintV3DTO](OASUniswapV3MintV3DTO.md)
 - [OASUniswapV3PoolDayDataV3DTO](OASUniswapV3PoolDayDataV3DTO.md)
 - [OASUniswapV3PoolHourDataV3DTO](OASUniswapV3PoolHourDataV3DTO.md)
 - [OASUniswapV3PoolV3DTO](OASUniswapV3PoolV3DTO.md)
 - [OASUniswapV3PositionSnapshotV3DTO](OASUniswapV3PositionSnapshotV3DTO.md)
 - [OASUniswapV3PositionV3DTO](OASUniswapV3PositionV3DTO.md)
 - [OASUniswapV3SwapV3DTO](OASUniswapV3SwapV3DTO.md)
 - [OASUniswapV3TickDayDataV3DTO](OASUniswapV3TickDayDataV3DTO.md)
 - [OASUniswapV3TickV3DTO](OASUniswapV3TickV3DTO.md)
 - [OASUniswapV3TokenHourDataV3DTO](OASUniswapV3TokenHourDataV3DTO.md)
 - [OASUniswapV3TokenV3DTO](OASUniswapV3TokenV3DTO.md)
 - [OASUniswapV3TokenV3DayDataDTO](OASUniswapV3TokenV3DayDataDTO.md)
 - [OASUniswapV3UniswapDayDataV3DTO](OASUniswapV3UniswapDayDataV3DTO.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Author

support@coinapi.io

