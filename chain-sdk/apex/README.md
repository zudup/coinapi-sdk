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
*OASCowApi* | [**cowGetOrdersHistorical**](OASCowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | GetOrders (historical)
*OASCowApi* | [**cowGetSettlementsHistorical**](OASCowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | GetSettlements (historical)
*OASCowApi* | [**cowGetTokensHistorical**](OASCowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | GetTokens (historical) 🔥
*OASCowApi* | [**cowGetTradesHistorical**](OASCowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | GetTrades (historical) 🔥
*OASCowApi* | [**cowGetUsersHistorical**](OASCowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | GetUsers (historical)
*OASCurveApi* | [**curveGetAccountsHistorical**](OASCurveApi.md#curveGetAccountsHistorical) | **GET** /dapps/curve/accounts/historical | GetAccounts (historical)
*OASCurveApi* | [**curveGetAddLiquidityEventsHistorical**](OASCurveApi.md#curveGetAddLiquidityEventsHistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | GetAddLiquidityEvents (historical)
*OASCurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](OASCurveApi.md#curveGetAdminFeeChangeLogsHistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | GetAdminFeeChangeLogs (historical)
*OASCurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](OASCurveApi.md#curveGetAmplificationCoeffChangeLogsHistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | GetAmplificationCoeffChangeLogs (historical)
*OASCurveApi* | [**curveGetCoinsHistorical**](OASCurveApi.md#curveGetCoinsHistorical) | **GET** /dapps/curve/coins/historical | GetCoins (historical)
*OASCurveApi* | [**curveGetContractsHistorical**](OASCurveApi.md#curveGetContractsHistorical) | **GET** /dapps/curve/contracts/historical | GetContracts (historical)
*OASCurveApi* | [**curveGetContractsVersionsHistorical**](OASCurveApi.md#curveGetContractsVersionsHistorical) | **GET** /dapps/curve/contractsVersions/historical | GetContractsVersions (historical)
*OASCurveApi* | [**curveGetDailyVolumesHistorical**](OASCurveApi.md#curveGetDailyVolumesHistorical) | **GET** /dapps/curve/dailyVolumes/historical | GetDailyVolumes (historical)
*OASCurveApi* | [**curveGetExchangesHistorical**](OASCurveApi.md#curveGetExchangesHistorical) | **GET** /dapps/curve/exchanges/historical | GetExchanges (historical) 🔥
*OASCurveApi* | [**curveGetFeeChangeLogsHistorical**](OASCurveApi.md#curveGetFeeChangeLogsHistorical) | **GET** /dapps/curve/feeChangeLogs/historical | GetFeeChangeLogs (historical)
*OASCurveApi* | [**curveGetGaugesDepositsHistorical**](OASCurveApi.md#curveGetGaugesDepositsHistorical) | **GET** /dapps/curve/gaugesDeposits/historical | GetGaugesDeposits (historical)
*OASCurveApi* | [**curveGetGaugesHistorical**](OASCurveApi.md#curveGetGaugesHistorical) | **GET** /dapps/curve/gauges/historical | GetGauges (historical)
*OASCurveApi* | [**curveGetGaugesLiquidityHistorical**](OASCurveApi.md#curveGetGaugesLiquidityHistorical) | **GET** /dapps/curve/gaugesLiquidity/historical | GetGaugesLiquidity (historical)
*OASCurveApi* | [**curveGetGaugesTotalWeightsHistorical**](OASCurveApi.md#curveGetGaugesTotalWeightsHistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical | GetGaugesTotalWeights (historical)
*OASCurveApi* | [**curveGetGaugesTypesHistorical**](OASCurveApi.md#curveGetGaugesTypesHistorical) | **GET** /dapps/curve/gaugesTypes/historical | GetGaugesTypes (historical)
*OASCurveApi* | [**curveGetGaugesTypesWeightsHistorical**](OASCurveApi.md#curveGetGaugesTypesWeightsHistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical | GetGaugesTypesWeights (historical)
*OASCurveApi* | [**curveGetGaugesWeightsHistorical**](OASCurveApi.md#curveGetGaugesWeightsHistorical) | **GET** /dapps/curve/gaugesWeights/historical | GetGaugesWeights (historical)
*OASCurveApi* | [**curveGetGaugesWeightsVotesHistorical**](OASCurveApi.md#curveGetGaugesWeightsVotesHistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical | GetGaugesWeightsVotes (historical)
*OASCurveApi* | [**curveGetGaugesWithdrawHistorical**](OASCurveApi.md#curveGetGaugesWithdrawHistorical) | **GET** /dapps/curve/gaugesWithdraws/historical | GetGaugesWithdraw (historical)
*OASCurveApi* | [**curveGetHourlyVolumesHistorical**](OASCurveApi.md#curveGetHourlyVolumesHistorical) | **GET** /dapps/curve/hourlyVolumes/historical | GetHourlyVolumes (historical)
*OASCurveApi* | [**curveGetLpTokensHistorical**](OASCurveApi.md#curveGetLpTokensHistorical) | **GET** /dapps/curve/lpTokens/historical | GetLpTokens (historical)
*OASCurveApi* | [**curveGetPoolsHistorical**](OASCurveApi.md#curveGetPoolsHistorical) | **GET** /dapps/curve/pools/historical | GetPools (historical) 🔥
*OASCurveApi* | [**curveGetProposalsHistorical**](OASCurveApi.md#curveGetProposalsHistorical) | **GET** /dapps/curve/proposals/historical | GetProposals (historical)
*OASCurveApi* | [**curveGetProposalsVotesHistorical**](OASCurveApi.md#curveGetProposalsVotesHistorical) | **GET** /dapps/curve/proposalsVotes/historical | GetProposalsVotes (historical)
*OASCurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](OASCurveApi.md#curveGetRemoveLiquidityEventsHistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | GetRemoveLiquidityEvents (historical)
*OASCurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](OASCurveApi.md#curveGetRemoveLiquidityOneEventsHistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | GetRemoveLiquidityOneEvents (historical)
*OASCurveApi* | [**curveGetSystemStatesHistorical**](OASCurveApi.md#curveGetSystemStatesHistorical) | **GET** /dapps/curve/systemStates/historical | GetSystemStates (historical)
*OASCurveApi* | [**curveGetTokensHistorical**](OASCurveApi.md#curveGetTokensHistorical) | **GET** /dapps/curve/tokens/historical | GetTokens (historical) 🔥
*OASCurveApi* | [**curveGetTransferOwnershipEventsHistorical**](OASCurveApi.md#curveGetTransferOwnershipEventsHistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | GetTransferOwnershipEvents (historical)
*OASCurveApi* | [**curveGetUnderlyingCoinsHistorical**](OASCurveApi.md#curveGetUnderlyingCoinsHistorical) | **GET** /dapps/curve/underlyingCoins/historical | GetUnderlyingCoins (historical)
*OASCurveApi* | [**curveGetVotingAppsHistorical**](OASCurveApi.md#curveGetVotingAppsHistorical) | **GET** /dapps/curve/votingApps/historical | GetVotingApps (historical)
*OASCurveApi* | [**curveGetWeeklyVolumesHistorical**](OASCurveApi.md#curveGetWeeklyVolumesHistorical) | **GET** /dapps/curve/weeklyVolumes/historical | GetWeeklyVolumes (historical)
*OASDexApi* | [**dexGetBatchesHistorical**](OASDexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | GetBatches (historical)
*OASDexApi* | [**dexGetDepositsHistorical**](OASDexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | GetDeposits (historical)
*OASDexApi* | [**dexGetOrdersHistorical**](OASDexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | GetOrders (historical)
*OASDexApi* | [**dexGetPricesHistorical**](OASDexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | GetPrices (historical)
*OASDexApi* | [**dexGetSolutionsHistorical**](OASDexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | GetSolutions (historical)
*OASDexApi* | [**dexGetStatsHistorical**](OASDexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | GetStats (historical)
*OASDexApi* | [**dexGetTokensHistorical**](OASDexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | GetTokens (historical) 🔥
*OASDexApi* | [**dexGetTradesHistorical**](OASDexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | GetTrades (historical) 🔥
*OASDexApi* | [**dexGetUsersHistorical**](OASDexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | GetUsers (historical)
*OASDexApi* | [**dexGetWithdrawsHistorical**](OASDexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | GetWithdraws (historical)
*OASDexApi* | [**dexGetWithdrawsRequestsHistorical**](OASDexApi.md#dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical | GetWithdrawsRequests (historical)
*OASSushiswapApi* | [**curveGetExchangesCurrent**](OASSushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | GetExchanges (current) 🔥
*OASSushiswapApi* | [**dexGetTradesCurrent**](OASSushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | GetTrades (current) 🔥
*OASSushiswapApi* | [**sushiswapGetBundlesHistorical**](OASSushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | GetBundles (historical)
*OASSushiswapApi* | [**sushiswapGetBurnsHistorical**](OASSushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | GetBurns (historical)
*OASSushiswapApi* | [**sushiswapGetDayDataHistorical**](OASSushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | GetDayData (historical)
*OASSushiswapApi* | [**sushiswapGetFactoryHistorical**](OASSushiswapApi.md#sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | GetFactory (historical)
*OASSushiswapApi* | [**sushiswapGetHourDataHistorical**](OASSushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | GetHourData (historical)
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
*OASSushiswapApi* | [**sushiswapGetMintsHistorical**](OASSushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | GetMints (historical)
*OASSushiswapApi* | [**sushiswapGetPoolsCurrent**](OASSushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | GetPools (current) 🔥
*OASSushiswapApi* | [**sushiswapGetPoolsDayDataHistorical**](OASSushiswapApi.md#sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
*OASSushiswapApi* | [**sushiswapGetPoolsHistorical**](OASSushiswapApi.md#sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetPoolsHourDataHistorical**](OASSushiswapApi.md#sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
*OASSushiswapApi* | [**sushiswapGetSwapsCurrent**](OASSushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | GetSwaps (current) 🔥
*OASSushiswapApi* | [**sushiswapGetSwapsHistorical**](OASSushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTokensCurrent**](OASSushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | GetTokens (current) 🔥
*OASSushiswapApi* | [**sushiswapGetTokensDayDataHistorical**](OASSushiswapApi.md#sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
*OASSushiswapApi* | [**sushiswapGetTokensHistorical**](OASSushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTransactionsHistorical**](OASSushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
*OASSushiswapApi* | [**sushiswapGetUsersHistorical**](OASSushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | GetUsers (historical)
*OASUniswapV2Api* | [**uniswapV2GetBundlesHistorical**](OASUniswapV2Api.md#uniswapV2GetBundlesHistorical) | **GET** /dapps/uniswapv2/bundles/historical | GetBundles (historical)
*OASUniswapV2Api* | [**uniswapV2GetBurnsHistorical**](OASUniswapV2Api.md#uniswapV2GetBurnsHistorical) | **GET** /dapps/uniswapv2/burns/historical | GetBurns (historical)
*OASUniswapV2Api* | [**uniswapV2GetDayDataHistorical**](OASUniswapV2Api.md#uniswapV2GetDayDataHistorical) | **GET** /dapps/uniswapv2/dayData/historical | GetDayData (historical)
*OASUniswapV2Api* | [**uniswapV2GetFactoryHistorical**](OASUniswapV2Api.md#uniswapV2GetFactoryHistorical) | **GET** /dapps/uniswapv2/factory/historical | GetFactory (historical)
*OASUniswapV2Api* | [**uniswapV2GetLiquidityPositionsHistorical**](OASUniswapV2Api.md#uniswapV2GetLiquidityPositionsHistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | GetLiquidityPositions (historical)
*OASUniswapV2Api* | [**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](OASUniswapV2Api.md#uniswapV2GetLiquidityPositionsSnapshotsHistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | GetLiquidityPositionsSnapshots (historical)
*OASUniswapV2Api* | [**uniswapV2GetMintsHistorical**](OASUniswapV2Api.md#uniswapV2GetMintsHistorical) | **GET** /dapps/uniswapv2/mints/historical | GetMints (historical)
*OASUniswapV2Api* | [**uniswapV2GetPoolsCurrent**](OASUniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | GetPools (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPoolsDayDataHistorical**](OASUniswapV2Api.md#uniswapV2GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical | GetPoolsDayData (historical)
*OASUniswapV2Api* | [**uniswapV2GetPoolsHistorical**](OASUniswapV2Api.md#uniswapV2GetPoolsHistorical) | **GET** /dapps/uniswapv2/pools/historical | GetPools (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPoolsHourDataHistorical**](OASUniswapV2Api.md#uniswapV2GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical | GetPoolsHourData (historical)
*OASUniswapV2Api* | [**uniswapV2GetSwapsCurrent**](OASUniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetSwapsHistorical**](OASUniswapV2Api.md#uniswapV2GetSwapsHistorical) | **GET** /dapps/uniswapv2/swaps/historical | GetSwaps (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokensCurrent**](OASUniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | GetTokens (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokensDayDataHistorical**](OASUniswapV2Api.md#uniswapV2GetTokensDayDataHistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical | GetTokensDayData (historical)
*OASUniswapV2Api* | [**uniswapV2GetTokensHistorical**](OASUniswapV2Api.md#uniswapV2GetTokensHistorical) | **GET** /dapps/uniswapv2/tokens/historical | GetTokens (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTransactionsHistorical**](OASUniswapV2Api.md#uniswapV2GetTransactionsHistorical) | **GET** /dapps/uniswapv2/transactions/historical | GetTransactions (historical)
*OASUniswapV2Api* | [**uniswapV2GetUsersHistorical**](OASUniswapV2Api.md#uniswapV2GetUsersHistorical) | **GET** /dapps/uniswapv2/users/historical | GetUsers (historical)
*OASUniswapV3Api* | [**uniswapV3GetBundlesCurrent**](OASUniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | GetBundles (current)
*OASUniswapV3Api* | [**uniswapV3GetBundlesHistorical**](OASUniswapV3Api.md#uniswapV3GetBundlesHistorical) | **GET** /dapps/uniswapv3/bundles/historical | GetBundles (historical)
*OASUniswapV3Api* | [**uniswapV3GetBurnsCurrent**](OASUniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | GetBurns (current)
*OASUniswapV3Api* | [**uniswapV3GetBurnsHistorical**](OASUniswapV3Api.md#uniswapV3GetBurnsHistorical) | **GET** /dapps/uniswapv3/burns/historical | GetBurns (historical)
*OASUniswapV3Api* | [**uniswapV3GetDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | GetDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetDayDataHistorical) | **GET** /dapps/uniswapv3/dayData/historical | GetDayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetFactoryCurrent**](OASUniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | GetFactory (current)
*OASUniswapV3Api* | [**uniswapV3GetFactoryHistorical**](OASUniswapV3Api.md#uniswapV3GetFactoryHistorical) | **GET** /dapps/uniswapv3/factory/historical | GetFactory (historical)
*OASUniswapV3Api* | [**uniswapV3GetMintsCurrent**](OASUniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | GetMints (current)
*OASUniswapV3Api* | [**uniswapV3GetMintsHistorical**](OASUniswapV3Api.md#uniswapV3GetMintsHistorical) | **GET** /dapps/uniswapv3/mints/historical | GetMints (historical)
*OASUniswapV3Api* | [**uniswapV3GetPoolsCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | GetPools (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetPoolsDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical | GetPoolsDayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetPoolsHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolsHistorical) | **GET** /dapps/uniswapv3/pools/historical | GetPools (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData (current)
*OASUniswapV3Api* | [**uniswapV3GetPoolsHourDataHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical | GetPoolsHourData (historical)
*OASUniswapV3Api* | [**uniswapV3GetPositionsCurrent**](OASUniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | GetPositions (current)
*OASUniswapV3Api* | [**uniswapV3GetPositionsHistorical**](OASUniswapV3Api.md#uniswapV3GetPositionsHistorical) | **GET** /dapps/uniswapv3/positions/historical | GetPositions (historical)
*OASUniswapV3Api* | [**uniswapV3GetPositionsSnaphotsHistorical**](OASUniswapV3Api.md#uniswapV3GetPositionsSnaphotsHistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical | GetPositionsSnaphots (historical)
*OASUniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](OASUniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | GetPositionsSnapshots (current)
*OASUniswapV3Api* | [**uniswapV3GetSwapsCurrent**](OASUniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | GetSwaps (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetSwapsHistorical**](OASUniswapV3Api.md#uniswapV3GetSwapsHistorical) | **GET** /dapps/uniswapv3/swaps/historical | GetSwaps (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTicksCurrent**](OASUniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | GetTicks (current)
*OASUniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | GetTicksDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetTicksDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetTicksDayDataHistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical | GetTicksDayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetTicksHistorical**](OASUniswapV3Api.md#uniswapV3GetTicksHistorical) | **GET** /dapps/uniswapv3/ticks/historical | GetTicks (historical)
*OASUniswapV3Api* | [**uniswapV3GetTokensCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | GetTokens (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | GetTokensDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetTokensDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetTokensDayDataHistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical | GetTokensDayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetTokensHistorical**](OASUniswapV3Api.md#uniswapV3GetTokensHistorical) | **GET** /dapps/uniswapv3/tokens/historical | GetTokens (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | GetTokensHourData (current)
*OASUniswapV3Api* | [**uniswapV3GetTokensHourDataHistorical**](OASUniswapV3Api.md#uniswapV3GetTokensHourDataHistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical | GetTokensHourData (historical)
*OASUniswapV3Api* | [**uniswapV3GetTransactionsHistorical**](OASUniswapV3Api.md#uniswapV3GetTransactionsHistorical) | **GET** /dapps/uniswapv3/transactions/historical | GetTransactions (historical)


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

