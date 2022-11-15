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
OASCowApi api = new OASCowApi();

Map<String, Object> params = new Map<String, Object>{
    'startBlock' => 2147483648L,
    'endBlock' => 2147483648L,
    'startDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
    'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3)
};

try {
    // cross your fingers
    List<OASCowOrderDTO> result = api.cowGetOrdersHistorical(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASCowApi* | [**cowGetOrdersHistorical**](OASCowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical-manual | Orders (historical)
*OASCowApi* | [**cowGetSettlementsHistorical**](OASCowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical-manual | Settlements (historical)
*OASCowApi* | [**cowGetTokensHistorical**](OASCowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical-manual | Tokens (historical) 🔥
*OASCowApi* | [**cowGetTradesHistorical**](OASCowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical-manual | Trades (historical) 🔥
*OASCowApi* | [**cowGetUsersHistorical**](OASCowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical-manual | Users (historical)
*OASCurveApi* | [**curveGetAccountsHistorical**](OASCurveApi.md#curveGetAccountsHistorical) | **GET** /dapps/curve/accounts/historical-manual | Accounts (historical)
*OASCurveApi* | [**curveGetAddLiquidityEventsHistorical**](OASCurveApi.md#curveGetAddLiquidityEventsHistorical) | **GET** /dapps/curve/addLiquidityEvents/historical-manual | AddLiquidityEvents (historical)
*OASCurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](OASCurveApi.md#curveGetAdminFeeChangeLogsHistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical-manual | AdminFeeChangeLogs (historical)
*OASCurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](OASCurveApi.md#curveGetAmplificationCoeffChangeLogsHistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical-manual | AmplificationCoeffChangeLogs (historical)
*OASCurveApi* | [**curveGetCoinsHistorical**](OASCurveApi.md#curveGetCoinsHistorical) | **GET** /dapps/curve/coins/historical-manual | Coins (historical)
*OASCurveApi* | [**curveGetContractsHistorical**](OASCurveApi.md#curveGetContractsHistorical) | **GET** /dapps/curve/contracts/historical-manual | Contracts (historical)
*OASCurveApi* | [**curveGetContractsVersionsHistorical**](OASCurveApi.md#curveGetContractsVersionsHistorical) | **GET** /dapps/curve/contractsVersions/historical-manual | ContractsVersions (historical)
*OASCurveApi* | [**curveGetDailyVolumesHistorical**](OASCurveApi.md#curveGetDailyVolumesHistorical) | **GET** /dapps/curve/dailyVolumes/historical-manual | DailyVolumes (historical)
*OASCurveApi* | [**curveGetExchangesHistorical**](OASCurveApi.md#curveGetExchangesHistorical) | **GET** /dapps/curve/exchanges/historical-manual | Exchanges (historical) 🔥
*OASCurveApi* | [**curveGetFeeChangeLogsHistorical**](OASCurveApi.md#curveGetFeeChangeLogsHistorical) | **GET** /dapps/curve/feeChangeLogs/historical-manual | FeeChangeLogs (historical)
*OASCurveApi* | [**curveGetGaugesDepositsHistorical**](OASCurveApi.md#curveGetGaugesDepositsHistorical) | **GET** /dapps/curve/gaugesDeposits/historical-manual | GaugesDeposits (historical)
*OASCurveApi* | [**curveGetGaugesHistorical**](OASCurveApi.md#curveGetGaugesHistorical) | **GET** /dapps/curve/gauges/historical-manual | Gauges (historical)
*OASCurveApi* | [**curveGetGaugesLiquidityHistorical**](OASCurveApi.md#curveGetGaugesLiquidityHistorical) | **GET** /dapps/curve/gaugesLiquidity/historical-manual | GaugesLiquidity (historical)
*OASCurveApi* | [**curveGetGaugesTotalWeightsHistorical**](OASCurveApi.md#curveGetGaugesTotalWeightsHistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical-manual | GaugesTotalWeights (historical)
*OASCurveApi* | [**curveGetGaugesTypesHistorical**](OASCurveApi.md#curveGetGaugesTypesHistorical) | **GET** /dapps/curve/gaugesTypes/historical-manual | GaugesTypes (historical)
*OASCurveApi* | [**curveGetGaugesTypesWeightsHistorical**](OASCurveApi.md#curveGetGaugesTypesWeightsHistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical-manual | GaugesTypesWeights (historical)
*OASCurveApi* | [**curveGetGaugesWeightsHistorical**](OASCurveApi.md#curveGetGaugesWeightsHistorical) | **GET** /dapps/curve/gaugesWeights/historical-manual | GaugesWeights (historical)
*OASCurveApi* | [**curveGetGaugesWeightsVotesHistorical**](OASCurveApi.md#curveGetGaugesWeightsVotesHistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical-manual | GaugesWeightsVotes (historical)
*OASCurveApi* | [**curveGetGaugesWithdrawHistorical**](OASCurveApi.md#curveGetGaugesWithdrawHistorical) | **GET** /dapps/curve/gaugesWithdraws/historical-manual | GaugesWithdraw (historical)
*OASCurveApi* | [**curveGetHourlyVolumesHistorical**](OASCurveApi.md#curveGetHourlyVolumesHistorical) | **GET** /dapps/curve/hourlyVolumes/historical-manual | HourlyVolumes (historical)
*OASCurveApi* | [**curveGetLpTokensHistorical**](OASCurveApi.md#curveGetLpTokensHistorical) | **GET** /dapps/curve/lpTokens/historical-manual | LpTokens (historical)
*OASCurveApi* | [**curveGetPoolsHistorical**](OASCurveApi.md#curveGetPoolsHistorical) | **GET** /dapps/curve/pools/historical-manual | Pools (historical) 🔥
*OASCurveApi* | [**curveGetProposalsHistorical**](OASCurveApi.md#curveGetProposalsHistorical) | **GET** /dapps/curve/proposals/historical-manual | Proposals (historical)
*OASCurveApi* | [**curveGetProposalsVotesHistorical**](OASCurveApi.md#curveGetProposalsVotesHistorical) | **GET** /dapps/curve/proposalsVotes/historical-manual | ProposalsVotes (historical)
*OASCurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](OASCurveApi.md#curveGetRemoveLiquidityEventsHistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical-manual | RemoveLiquidityEvents (historical)
*OASCurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](OASCurveApi.md#curveGetRemoveLiquidityOneEventsHistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical-manual | RemoveLiquidityOneEvents (historical)
*OASCurveApi* | [**curveGetSystemStatesHistorical**](OASCurveApi.md#curveGetSystemStatesHistorical) | **GET** /dapps/curve/systemStates/historical-manual | SystemStates (historical)
*OASCurveApi* | [**curveGetTokensHistorical**](OASCurveApi.md#curveGetTokensHistorical) | **GET** /dapps/curve/tokens/historical-manual | Tokens (historical) 🔥
*OASCurveApi* | [**curveGetTransferOwnershipEventsHistorical**](OASCurveApi.md#curveGetTransferOwnershipEventsHistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical-manual | TransferOwnershipEvents (historical)
*OASCurveApi* | [**curveGetUnderlyingCoinsHistorical**](OASCurveApi.md#curveGetUnderlyingCoinsHistorical) | **GET** /dapps/curve/underlyingCoins/historical-manual | UnderlyingCoins (historical)
*OASCurveApi* | [**curveGetVotingAppsHistorical**](OASCurveApi.md#curveGetVotingAppsHistorical) | **GET** /dapps/curve/votingApps/historical-manual | VotingApps (historical)
*OASCurveApi* | [**curveGetWeeklyVolumesHistorical**](OASCurveApi.md#curveGetWeeklyVolumesHistorical) | **GET** /dapps/curve/weeklyVolumes/historical-manual | WeeklyVolumes (historical)
*OASDexApi* | [**dexGetBatchesHistorical**](OASDexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical-manual | Batches (historical)
*OASDexApi* | [**dexGetDepositsHistorical**](OASDexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical-manual | Deposits (historical)
*OASDexApi* | [**dexGetOrdersHistorical**](OASDexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical-manual | Orders (historical)
*OASDexApi* | [**dexGetPricesHistorical**](OASDexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical-manual | Prices (historical)
*OASDexApi* | [**dexGetSolutionsHistorical**](OASDexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical-manual | Solutions (historical)
*OASDexApi* | [**dexGetStatsHistorical**](OASDexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical-manual | Stats (historical)
*OASDexApi* | [**dexGetTokensHistorical**](OASDexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical-manual | Tokens (historical) 🔥
*OASDexApi* | [**dexGetTradesHistorical**](OASDexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical-manual | Trades (historical) 🔥
*OASDexApi* | [**dexGetUsersHistorical**](OASDexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical-manual | Users (historical)
*OASDexApi* | [**dexGetWithdrawsHistorical**](OASDexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical-manual | Withdraws (historical)
*OASDexApi* | [**dexGetWithdrawsRequestsHistorical**](OASDexApi.md#dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical-manual | WithdrawsRequests (historical)
*OASSushiswapApi* | [**curveGetExchangesCurrent**](OASSushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*OASSushiswapApi* | [**dexGetTradesCurrent**](OASSushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*OASSushiswapApi* | [**sushiswapGetBundlesHistorical**](OASSushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical-manual | Bundles (historical)
*OASSushiswapApi* | [**sushiswapGetBurnsHistorical**](OASSushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical-manual | Burns (historical)
*OASSushiswapApi* | [**sushiswapGetDayDataHistorical**](OASSushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical-manual | DayData (historical)
*OASSushiswapApi* | [**sushiswapGetFactoryHistorical**](OASSushiswapApi.md#sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical-manual | Factory (historical)
*OASSushiswapApi* | [**sushiswapGetHourDataHistorical**](OASSushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical-manual | HourData (historical)
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical-manual | LiquidityPosition (historical)
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical-manual | LiquidityPositionSnapshot (historical)
*OASSushiswapApi* | [**sushiswapGetMintsHistorical**](OASSushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical-manual | Mints (historical)
*OASSushiswapApi* | [**sushiswapGetPoolsCurrent**](OASSushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*OASSushiswapApi* | [**sushiswapGetPoolsDayDataHistorical**](OASSushiswapApi.md#sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical-manual | PoolsDayData (historical)
*OASSushiswapApi* | [**sushiswapGetPoolsHistorical**](OASSushiswapApi.md#sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical-manual | Pools (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetPoolsHourDataHistorical**](OASSushiswapApi.md#sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical-manual | PoolsHourData (historical)
*OASSushiswapApi* | [**sushiswapGetSwapsCurrent**](OASSushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*OASSushiswapApi* | [**sushiswapGetSwapsHistorical**](OASSushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical-manual | Swaps (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTokensCurrent**](OASSushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*OASSushiswapApi* | [**sushiswapGetTokensDayDataHistorical**](OASSushiswapApi.md#sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical-manual | TokensDayData (historical)
*OASSushiswapApi* | [**sushiswapGetTokensHistorical**](OASSushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical-manual | Tokens (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTransactionsHistorical**](OASSushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical-manual | Transactions (historical)
*OASSushiswapApi* | [**sushiswapGetUsersHistorical**](OASSushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical-manual | Users (historical)
*OASUniswapV2Api* | [**uniswapV2GetBundlesHistorical**](OASUniswapV2Api.md#uniswapV2GetBundlesHistorical) | **GET** /dapps/uniswapv2/bundles/historical-manual | Bundles (historical)
*OASUniswapV2Api* | [**uniswapV2GetBurnsHistorical**](OASUniswapV2Api.md#uniswapV2GetBurnsHistorical) | **GET** /dapps/uniswapv2/burns/historical-manual | Burns (historical)
*OASUniswapV2Api* | [**uniswapV2GetDayDataHistorical**](OASUniswapV2Api.md#uniswapV2GetDayDataHistorical) | **GET** /dapps/uniswapv2/dayData/historical-manual | DayData (historical)
*OASUniswapV2Api* | [**uniswapV2GetFactoryHistorical**](OASUniswapV2Api.md#uniswapV2GetFactoryHistorical) | **GET** /dapps/uniswapv2/factory/historical-manual | Factory (historical)
*OASUniswapV2Api* | [**uniswapV2GetLiquidityPositionsHistorical**](OASUniswapV2Api.md#uniswapV2GetLiquidityPositionsHistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical-manual | LiquidityPositions (historical)
*OASUniswapV2Api* | [**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](OASUniswapV2Api.md#uniswapV2GetLiquidityPositionsSnapshotsHistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical-manual | LiquidityPositionsSnapshots (historical)
*OASUniswapV2Api* | [**uniswapV2GetMintsHistorical**](OASUniswapV2Api.md#uniswapV2GetMintsHistorical) | **GET** /dapps/uniswapv2/mints/historical-manual | Mints (historical)
*OASUniswapV2Api* | [**uniswapV2GetPoolsCurrent**](OASUniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPoolsDayDataHistorical**](OASUniswapV2Api.md#uniswapV2GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical-manual | PoolsDayData (historical)
*OASUniswapV2Api* | [**uniswapV2GetPoolsHistorical**](OASUniswapV2Api.md#uniswapV2GetPoolsHistorical) | **GET** /dapps/uniswapv2/pools/historical-manual | Pools (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPoolsHourDataHistorical**](OASUniswapV2Api.md#uniswapV2GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical-manual | PoolsHourData (historical)
*OASUniswapV2Api* | [**uniswapV2GetSwapsCurrent**](OASUniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetSwapsHistorical**](OASUniswapV2Api.md#uniswapV2GetSwapsHistorical) | **GET** /dapps/uniswapv2/swaps/historical-manual | Swaps (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokensCurrent**](OASUniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokensDayDataHistorical**](OASUniswapV2Api.md#uniswapV2GetTokensDayDataHistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical-manual | TokensDayData (historical)
*OASUniswapV2Api* | [**uniswapV2GetTokensHistorical**](OASUniswapV2Api.md#uniswapV2GetTokensHistorical) | **GET** /dapps/uniswapv2/tokens/historical-manual | Tokens (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTransactionsHistorical**](OASUniswapV2Api.md#uniswapV2GetTransactionsHistorical) | **GET** /dapps/uniswapv2/transactions/historical-manual | Transactions (historical)
*OASUniswapV2Api* | [**uniswapV2GetUsersHistorical**](OASUniswapV2Api.md#uniswapV2GetUsersHistorical) | **GET** /dapps/uniswapv2/users/historical-manual | Users (historical)
*OASUniswapV3Api* | [**uniswapV3GetBundlesCurrent**](OASUniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*OASUniswapV3Api* | [**uniswapV3GetBundlesHistorical**](OASUniswapV3Api.md#uniswapV3GetBundlesHistorical) | **GET** /dapps/uniswapv3/bundles/historical-manual | Bundles (historical)
*OASUniswapV3Api* | [**uniswapV3GetBurnsCurrent**](OASUniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*OASUniswapV3Api* | [**uniswapV3GetBurnsHistorical**](OASUniswapV3Api.md#uniswapV3GetBurnsHistorical) | **GET** /dapps/uniswapv3/burns/historical-manual | Burns (historical)
*OASUniswapV3Api* | [**uniswapV3GetDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*OASUniswapV3Api* | [**uniswapV3GetDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetDayDataHistorical) | **GET** /dapps/uniswapv3/dayData/historical-manual | DayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetFactoryCurrent**](OASUniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*OASUniswapV3Api* | [**uniswapV3GetFactoryHistorical**](OASUniswapV3Api.md#uniswapV3GetFactoryHistorical) | **GET** /dapps/uniswapv3/factory/historical-manual | Factory (historical)
*OASUniswapV3Api* | [**uniswapV3GetMintsCurrent**](OASUniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*OASUniswapV3Api* | [**uniswapV3GetMintsHistorical**](OASUniswapV3Api.md#uniswapV3GetMintsHistorical) | **GET** /dapps/uniswapv3/mints/historical-manual | Mints (historical)
*OASUniswapV3Api* | [**uniswapV3GetPoolsCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetPoolsDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical-manual | PoolsDayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetPoolsHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolsHistorical) | **GET** /dapps/uniswapv3/pools/historical-manual | Pools (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*OASUniswapV3Api* | [**uniswapV3GetPoolsHourDataHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical-manual | PoolsHourData (historical)
*OASUniswapV3Api* | [**uniswapV3GetPositionsCurrent**](OASUniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*OASUniswapV3Api* | [**uniswapV3GetPositionsHistorical**](OASUniswapV3Api.md#uniswapV3GetPositionsHistorical) | **GET** /dapps/uniswapv3/positions/historical-manual | Positions (historical)
*OASUniswapV3Api* | [**uniswapV3GetPositionsSnaphotsHistorical**](OASUniswapV3Api.md#uniswapV3GetPositionsSnaphotsHistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical-manual | PositionsSnaphots (historical)
*OASUniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](OASUniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*OASUniswapV3Api* | [**uniswapV3GetSwapsCurrent**](OASUniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetSwapsHistorical**](OASUniswapV3Api.md#uniswapV3GetSwapsHistorical) | **GET** /dapps/uniswapv3/swaps/historical-manual | Swaps (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTicksCurrent**](OASUniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*OASUniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetTicksDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetTicksDayDataHistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical-manual | TicksDayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetTicksHistorical**](OASUniswapV3Api.md#uniswapV3GetTicksHistorical) | **GET** /dapps/uniswapv3/ticks/historical-manual | Ticks (historical)
*OASUniswapV3Api* | [**uniswapV3GetTokensCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetTokensDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetTokensDayDataHistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical-manual | TokensDayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetTokensHistorical**](OASUniswapV3Api.md#uniswapV3GetTokensHistorical) | **GET** /dapps/uniswapv3/tokens/historical-manual | Tokens (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
*OASUniswapV3Api* | [**uniswapV3GetTokensHourDataHistorical**](OASUniswapV3Api.md#uniswapV3GetTokensHourDataHistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical-manual | TokensHourData (historical)
*OASUniswapV3Api* | [**uniswapV3GetTransactionsHistorical**](OASUniswapV3Api.md#uniswapV3GetTransactionsHistorical) | **GET** /dapps/uniswapv3/transactions/historical-manual | Transactions (historical)


## Documentation for Models

 - [OASCowOrderDTO](OASCowOrderDTO.md)
 - [OASCowSettlementDTO](OASCowSettlementDTO.md)
 - [OASCowTokenDTO](OASCowTokenDTO.md)
 - [OASCowTradeDTO](OASCowTradeDTO.md)
 - [OASCowUserDTO](OASCowUserDTO.md)
 - [OASCurveAccountDTO](OASCurveAccountDTO.md)
 - [OASCurveAddLiquidityEventDTO](OASCurveAddLiquidityEventDTO.md)
 - [OASCurveAdminFeeChangeLogDTO](OASCurveAdminFeeChangeLogDTO.md)
 - [OASCurveAmplificationCoeffChangeLogD](OASCurveAmplificationCoeffChangeLogD.md)
 - [OASCurveCoinDTO](OASCurveCoinDTO.md)
 - [OASCurveContractDTO](OASCurveContractDTO.md)
 - [OASCurveContractVersionDTO](OASCurveContractVersionDTO.md)
 - [OASCurveDailyVolumeDTO](OASCurveDailyVolumeDTO.md)
 - [OASCurveExchangeDTO](OASCurveExchangeDTO.md)
 - [OASCurveFeeChangeLogDTO](OASCurveFeeChangeLogDTO.md)
 - [OASCurveGaugeDTO](OASCurveGaugeDTO.md)
 - [OASCurveGaugeDepositDTO](OASCurveGaugeDepositDTO.md)
 - [OASCurveGaugeLiquidityDTO](OASCurveGaugeLiquidityDTO.md)
 - [OASCurveGaugeTotalWeightDTO](OASCurveGaugeTotalWeightDTO.md)
 - [OASCurveGaugeTypeDTO](OASCurveGaugeTypeDTO.md)
 - [OASCurveGaugeTypeWeightDTO](OASCurveGaugeTypeWeightDTO.md)
 - [OASCurveGaugeWeightDTO](OASCurveGaugeWeightDTO.md)
 - [OASCurveGaugeWeightVoteDTO](OASCurveGaugeWeightVoteDTO.md)
 - [OASCurveGaugeWithdrawDTO](OASCurveGaugeWithdrawDTO.md)
 - [OASCurveHourlyVolumeDTO](OASCurveHourlyVolumeDTO.md)
 - [OASCurveLpTokenDTO](OASCurveLpTokenDTO.md)
 - [OASCurvePoolDTO](OASCurvePoolDTO.md)
 - [OASCurveProposalDTO](OASCurveProposalDTO.md)
 - [OASCurveProposalVoteDTO](OASCurveProposalVoteDTO.md)
 - [OASCurveRemoveLiquidityEventDTO](OASCurveRemoveLiquidityEventDTO.md)
 - [OASCurveRemoveLiquidityOneEventDTO](OASCurveRemoveLiquidityOneEventDTO.md)
 - [OASCurveSystemStateDTO](OASCurveSystemStateDTO.md)
 - [OASCurveTokenDTO](OASCurveTokenDTO.md)
 - [OASCurveTransferOwnershipEventDTO](OASCurveTransferOwnershipEventDTO.md)
 - [OASCurveUnderlyingCoinDTO](OASCurveUnderlyingCoinDTO.md)
 - [OASCurveVotingAppDTO](OASCurveVotingAppDTO.md)
 - [OASCurveWeeklyVolumeDTO](OASCurveWeeklyVolumeDTO.md)
 - [OASDexBatchDTO](OASDexBatchDTO.md)
 - [OASDexDepositDTO](OASDexDepositDTO.md)
 - [OASDexOrderDTO](OASDexOrderDTO.md)
 - [OASDexPriceDTO](OASDexPriceDTO.md)
 - [OASDexSolutionDTO](OASDexSolutionDTO.md)
 - [OASDexStatsDTO](OASDexStatsDTO.md)
 - [OASDexTokenDTO](OASDexTokenDTO.md)
 - [OASDexTradeDTO](OASDexTradeDTO.md)
 - [OASDexUserDTO](OASDexUserDTO.md)
 - [OASDexWithdrawDTO](OASDexWithdrawDTO.md)
 - [OASDexWithdrawRequestDTO](OASDexWithdrawRequestDTO.md)
 - [OASNumericsBigInteger](OASNumericsBigInteger.md)
 - [OASSushiswapBundleDTO](OASSushiswapBundleDTO.md)
 - [OASSushiswapBurnDTO](OASSushiswapBurnDTO.md)
 - [OASSushiswapDayDataDTO](OASSushiswapDayDataDTO.md)
 - [OASSushiswapFactoryDTO](OASSushiswapFactoryDTO.md)
 - [OASSushiswapHourDataDTO](OASSushiswapHourDataDTO.md)
 - [OASSushiswapLiquidityPositionDTO](OASSushiswapLiquidityPositionDTO.md)
 - [OASSushiswapLiquidityPositionSnapsho](OASSushiswapLiquidityPositionSnapsho.md)
 - [OASSushiswapMintDTO](OASSushiswapMintDTO.md)
 - [OASSushiswapPairDTO](OASSushiswapPairDTO.md)
 - [OASSushiswapPairDayDataDTO](OASSushiswapPairDayDataDTO.md)
 - [OASSushiswapPairHourDataDTO](OASSushiswapPairHourDataDTO.md)
 - [OASSushiswapSwapDTO](OASSushiswapSwapDTO.md)
 - [OASSushiswapTokenDTO](OASSushiswapTokenDTO.md)
 - [OASSushiswapTokenDayDataDTO](OASSushiswapTokenDayDataDTO.md)
 - [OASSushiswapTransactionDTO](OASSushiswapTransactionDTO.md)
 - [OASSushiswapUserDTO](OASSushiswapUserDTO.md)
 - [OASTransactionsETradeAggressiveSide](OASTransactionsETradeAggressiveSide.md)
 - [OASUniswapV2BundleV2DTO](OASUniswapV2BundleV2DTO.md)
 - [OASUniswapV2BurnV2DTO](OASUniswapV2BurnV2DTO.md)
 - [OASUniswapV2LiquidityPositionSnapsho](OASUniswapV2LiquidityPositionSnapsho.md)
 - [OASUniswapV2LiquidityPositionV2DTO](OASUniswapV2LiquidityPositionV2DTO.md)
 - [OASUniswapV2MintV2DTO](OASUniswapV2MintV2DTO.md)
 - [OASUniswapV2PairDayDataV2DTO](OASUniswapV2PairDayDataV2DTO.md)
 - [OASUniswapV2PairHourDataV2DTO](OASUniswapV2PairHourDataV2DTO.md)
 - [OASUniswapV2PairV2DTO](OASUniswapV2PairV2DTO.md)
 - [OASUniswapV2SwapV2DTO](OASUniswapV2SwapV2DTO.md)
 - [OASUniswapV2TokenDayDataV2DTO](OASUniswapV2TokenDayDataV2DTO.md)
 - [OASUniswapV2TokenV2DTO](OASUniswapV2TokenV2DTO.md)
 - [OASUniswapV2TransactionV2DTO](OASUniswapV2TransactionV2DTO.md)
 - [OASUniswapV2UniswapDayDataV2DTO](OASUniswapV2UniswapDayDataV2DTO.md)
 - [OASUniswapV2UniswapFactoryV2DTO](OASUniswapV2UniswapFactoryV2DTO.md)
 - [OASUniswapV2UserV2DTO](OASUniswapV2UserV2DTO.md)
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
 - [OASUniswapV3TransactionV3DTO](OASUniswapV3TransactionV3DTO.md)
 - [OASUniswapV3UniswapDayDataV3DTO](OASUniswapV3UniswapDayDataV3DTO.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Author

support@coinapi.io

