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
    'endDate' => Datetime.newInstanceGmt(2013, 11, 12, 3, 3, 3),
    'id' => 'null'
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
*OASCowApi* | [**cowGetOrdersHistorical**](OASCowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical) 🔥
*OASCowApi* | [**cowGetSettlementsHistorical**](OASCowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical) 🔥
*OASCowApi* | [**cowGetTokensHistorical**](OASCowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
*OASCowApi* | [**cowGetTradesHistorical**](OASCowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
*OASCowApi* | [**cowGetUsersHistorical**](OASCowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical) 🔥
*OASCurveApi* | [**curveGetAccountsHistorical**](OASCurveApi.md#curveGetAccountsHistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical) 🔥
*OASCurveApi* | [**curveGetAddLiquidityEventsHistorical**](OASCurveApi.md#curveGetAddLiquidityEventsHistorical) | **GET** /dapps/curve/addliquidityevents/historical | AddLiquidityEvents (historical) 🔥
*OASCurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](OASCurveApi.md#curveGetAdminFeeChangeLogsHistorical) | **GET** /dapps/curve/adminfeechangelogs/historical | AdminFeeChangeLogs (historical) 🔥
*OASCurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](OASCurveApi.md#curveGetAmplificationCoeffChangeLogsHistorical) | **GET** /dapps/curve/amplificationcoeffchangelogs/historical | AmplificationCoeffChangeLogs (historical) 🔥
*OASCurveApi* | [**curveGetCoinsHistorical**](OASCurveApi.md#curveGetCoinsHistorical) | **GET** /dapps/curve/coins/historical | Coins (historical) 🔥
*OASCurveApi* | [**curveGetContractVersionsHistorical**](OASCurveApi.md#curveGetContractVersionsHistorical) | **GET** /dapps/curve/contractversions/historical | ContractVersions (historical) 🔥
*OASCurveApi* | [**curveGetContractsHistorical**](OASCurveApi.md#curveGetContractsHistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical) 🔥
*OASCurveApi* | [**curveGetDailyVolumesHistorical**](OASCurveApi.md#curveGetDailyVolumesHistorical) | **GET** /dapps/curve/dailyvolumes/historical | DailyVolumes (historical) 🔥
*OASCurveApi* | [**curveGetExchangesHistorical**](OASCurveApi.md#curveGetExchangesHistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥
*OASCurveApi* | [**curveGetFeeChangeLogsHistorical**](OASCurveApi.md#curveGetFeeChangeLogsHistorical) | **GET** /dapps/curve/feechangelogs/historical | FeeChangeLogs (historical) 🔥
*OASCurveApi* | [**curveGetGaugeDepositsHistorical**](OASCurveApi.md#curveGetGaugeDepositsHistorical) | **GET** /dapps/curve/gaugedeposits/historical | GaugeDeposits (historical) 🔥
*OASCurveApi* | [**curveGetGaugeLiquiditysHistorical**](OASCurveApi.md#curveGetGaugeLiquiditysHistorical) | **GET** /dapps/curve/gaugeliquiditys/historical | GaugeLiquiditys (historical) 🔥
*OASCurveApi* | [**curveGetGaugeTotalWeightsHistorical**](OASCurveApi.md#curveGetGaugeTotalWeightsHistorical) | **GET** /dapps/curve/gaugetotalweights/historical | GaugeTotalWeights (historical) 🔥
*OASCurveApi* | [**curveGetGaugeTypeWeightsHistorical**](OASCurveApi.md#curveGetGaugeTypeWeightsHistorical) | **GET** /dapps/curve/gaugetypeweights/historical | GaugeTypeWeights (historical) 🔥
*OASCurveApi* | [**curveGetGaugeTypesHistorical**](OASCurveApi.md#curveGetGaugeTypesHistorical) | **GET** /dapps/curve/gaugetypes/historical | GaugeTypes (historical) 🔥
*OASCurveApi* | [**curveGetGaugeWeightVotesHistorical**](OASCurveApi.md#curveGetGaugeWeightVotesHistorical) | **GET** /dapps/curve/gaugeweightvotes/historical | GaugeWeightVotes (historical) 🔥
*OASCurveApi* | [**curveGetGaugeWeightsHistorical**](OASCurveApi.md#curveGetGaugeWeightsHistorical) | **GET** /dapps/curve/gaugeweights/historical | GaugeWeights (historical) 🔥
*OASCurveApi* | [**curveGetGaugeWithdrawsHistorical**](OASCurveApi.md#curveGetGaugeWithdrawsHistorical) | **GET** /dapps/curve/gaugewithdraws/historical | GaugeWithdraws (historical) 🔥
*OASCurveApi* | [**curveGetGaugesHistorical**](OASCurveApi.md#curveGetGaugesHistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical) 🔥
*OASCurveApi* | [**curveGetHourlyVolumesHistorical**](OASCurveApi.md#curveGetHourlyVolumesHistorical) | **GET** /dapps/curve/hourlyvolumes/historical | HourlyVolumes (historical) 🔥
*OASCurveApi* | [**curveGetLpTokensHistorical**](OASCurveApi.md#curveGetLpTokensHistorical) | **GET** /dapps/curve/lptokens/historical | LpTokens (historical) 🔥
*OASCurveApi* | [**curveGetPoolsHistorical**](OASCurveApi.md#curveGetPoolsHistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥
*OASCurveApi* | [**curveGetProposalVotesHistorical**](OASCurveApi.md#curveGetProposalVotesHistorical) | **GET** /dapps/curve/proposalvotes/historical | ProposalVotes (historical) 🔥
*OASCurveApi* | [**curveGetProposalsHistorical**](OASCurveApi.md#curveGetProposalsHistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical) 🔥
*OASCurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](OASCurveApi.md#curveGetRemoveLiquidityEventsHistorical) | **GET** /dapps/curve/removeliquidityevents/historical | RemoveLiquidityEvents (historical) 🔥
*OASCurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](OASCurveApi.md#curveGetRemoveLiquidityOneEventsHistorical) | **GET** /dapps/curve/removeliquidityoneevents/historical | RemoveLiquidityOneEvents (historical) 🔥
*OASCurveApi* | [**curveGetSystemStatesHistorical**](OASCurveApi.md#curveGetSystemStatesHistorical) | **GET** /dapps/curve/systemstates/historical | SystemStates (historical) 🔥
*OASCurveApi* | [**curveGetTokensHistorical**](OASCurveApi.md#curveGetTokensHistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥
*OASCurveApi* | [**curveGetTransferOwnershipEventsHistorical**](OASCurveApi.md#curveGetTransferOwnershipEventsHistorical) | **GET** /dapps/curve/transferownershipevents/historical | TransferOwnershipEvents (historical) 🔥
*OASCurveApi* | [**curveGetUnderlyingCoinsHistorical**](OASCurveApi.md#curveGetUnderlyingCoinsHistorical) | **GET** /dapps/curve/underlyingcoins/historical | UnderlyingCoins (historical) 🔥
*OASCurveApi* | [**curveGetVotingAppsHistorical**](OASCurveApi.md#curveGetVotingAppsHistorical) | **GET** /dapps/curve/votingapps/historical | VotingApps (historical) 🔥
*OASCurveApi* | [**curveGetWeeklyVolumesHistorical**](OASCurveApi.md#curveGetWeeklyVolumesHistorical) | **GET** /dapps/curve/weeklyvolumes/historical | WeeklyVolumes (historical) 🔥
*OASDexApi* | [**dexGetBatchsHistorical**](OASDexApi.md#dexGetBatchsHistorical) | **GET** /dapps/dex/batchs/historical | Batchs (historical) 🔥
*OASDexApi* | [**dexGetDepositsHistorical**](OASDexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical) 🔥
*OASDexApi* | [**dexGetOrdersHistorical**](OASDexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical) 🔥
*OASDexApi* | [**dexGetPricesHistorical**](OASDexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical) 🔥
*OASDexApi* | [**dexGetSolutionsHistorical**](OASDexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical) 🔥
*OASDexApi* | [**dexGetStatssHistorical**](OASDexApi.md#dexGetStatssHistorical) | **GET** /dapps/dex/statss/historical | Statss (historical) 🔥
*OASDexApi* | [**dexGetTokensHistorical**](OASDexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
*OASDexApi* | [**dexGetTradesHistorical**](OASDexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
*OASDexApi* | [**dexGetUsersHistorical**](OASDexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical) 🔥
*OASDexApi* | [**dexGetWithdrawRequestsHistorical**](OASDexApi.md#dexGetWithdrawRequestsHistorical) | **GET** /dapps/dex/withdrawrequests/historical | WithdrawRequests (historical) 🔥
*OASDexApi* | [**dexGetWithdrawsHistorical**](OASDexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical) 🔥
*OASSushiswapApi* | [**curveGetExchangesCurrent**](OASSushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*OASSushiswapApi* | [**dexGetTradesCurrent**](OASSushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*OASSushiswapApi* | [**sushiswapGetBundlesHistorical**](OASSushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetBurnsHistorical**](OASSushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetDayDatasHistorical**](OASSushiswapApi.md#sushiswapGetDayDatasHistorical) | **GET** /dapps/sushiswap/daydatas/historical | DayDatas (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetFactorysHistorical**](OASSushiswapApi.md#sushiswapGetFactorysHistorical) | **GET** /dapps/sushiswap/factorys/historical | Factorys (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetHourDatasHistorical**](OASSushiswapApi.md#sushiswapGetHourDatasHistorical) | **GET** /dapps/sushiswap/hourdatas/historical | HourDatas (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotsHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionSnapshotsHistorical) | **GET** /dapps/sushiswap/liquiditypositionsnapshots/historical | LiquidityPositionSnapshots (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionsHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionsHistorical) | **GET** /dapps/sushiswap/liquiditypositions/historical | LiquidityPositions (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetMintsHistorical**](OASSushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetPairDayDatasHistorical**](OASSushiswapApi.md#sushiswapGetPairDayDatasHistorical) | **GET** /dapps/sushiswap/pairdaydatas/historical | PairDayDatas (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetPairHourDatasHistorical**](OASSushiswapApi.md#sushiswapGetPairHourDatasHistorical) | **GET** /dapps/sushiswap/pairhourdatas/historical | PairHourDatas (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetPairsHistorical**](OASSushiswapApi.md#sushiswapGetPairsHistorical) | **GET** /dapps/sushiswap/pairs/historical | Pairs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetPoolsCurrent**](OASSushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*OASSushiswapApi* | [**sushiswapGetSwapsCurrent**](OASSushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*OASSushiswapApi* | [**sushiswapGetSwapsHistorical**](OASSushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTokenDayDatasHistorical**](OASSushiswapApi.md#sushiswapGetTokenDayDatasHistorical) | **GET** /dapps/sushiswap/tokendaydatas/historical | TokenDayDatas (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTokensCurrent**](OASSushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*OASSushiswapApi* | [**sushiswapGetTokensHistorical**](OASSushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTransactionsHistorical**](OASSushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetUsersHistorical**](OASSushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetBundleV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetBundleV2sHistorical) | **GET** /dapps/uniswapv2/bundlev2s/historical | BundleV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetBurnV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetBurnV2sHistorical) | **GET** /dapps/uniswapv2/burnv2s/historical | BurnV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetLiquidityPositionSnapshotV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetLiquidityPositionSnapshotV2sHistorical) | **GET** /dapps/uniswapv2/liquiditypositionsnapshotv2s/historical | LiquidityPositionSnapshotV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetLiquidityPositionV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetLiquidityPositionV2sHistorical) | **GET** /dapps/uniswapv2/liquiditypositionv2s/historical | LiquidityPositionV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetMintV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetMintV2sHistorical) | **GET** /dapps/uniswapv2/mintv2s/historical | MintV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPairDayDataV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetPairDayDataV2sHistorical) | **GET** /dapps/uniswapv2/pairdaydatav2s/historical | PairDayDataV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPairHourDataV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetPairHourDataV2sHistorical) | **GET** /dapps/uniswapv2/pairhourdatav2s/historical | PairHourDataV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPairV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetPairV2sHistorical) | **GET** /dapps/uniswapv2/pairv2s/historical | PairV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPoolsCurrent**](OASUniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetSwapV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetSwapV2sHistorical) | **GET** /dapps/uniswapv2/swapv2s/historical | SwapV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetSwapsCurrent**](OASUniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokenDayDataV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetTokenDayDataV2sHistorical) | **GET** /dapps/uniswapv2/tokendaydatav2s/historical | TokenDayDataV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokenV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetTokenV2sHistorical) | **GET** /dapps/uniswapv2/tokenv2s/historical | TokenV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokensCurrent**](OASUniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTransactionV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetTransactionV2sHistorical) | **GET** /dapps/uniswapv2/transactionv2s/historical | TransactionV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetUniswapDayDataV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetUniswapDayDataV2sHistorical) | **GET** /dapps/uniswapv2/uniswapdaydatav2s/historical | UniswapDayDataV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetUniswapFactoryV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetUniswapFactoryV2sHistorical) | **GET** /dapps/uniswapv2/uniswapfactoryv2s/historical | UniswapFactoryV2s (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetUserV2sHistorical**](OASUniswapV2Api.md#uniswapV2GetUserV2sHistorical) | **GET** /dapps/uniswapv2/userv2s/historical | UserV2s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetBundleV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetBundleV3sHistorical) | **GET** /dapps/uniswapv3/bundlev3s/historical | BundleV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetBundlesCurrent**](OASUniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*OASUniswapV3Api* | [**uniswapV3GetBurnV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetBurnV3sHistorical) | **GET** /dapps/uniswapv3/burnv3s/historical | BurnV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetBurnsCurrent**](OASUniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*OASUniswapV3Api* | [**uniswapV3GetDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*OASUniswapV3Api* | [**uniswapV3GetFactoryCurrent**](OASUniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*OASUniswapV3Api* | [**uniswapV3GetFactoryV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetFactoryV3sHistorical) | **GET** /dapps/uniswapv3/factoryv3s/historical | FactoryV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetMintV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetMintV3sHistorical) | **GET** /dapps/uniswapv3/mintv3s/historical | MintV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetMintsCurrent**](OASUniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*OASUniswapV3Api* | [**uniswapV3GetPoolDayDataV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolDayDataV3sHistorical) | **GET** /dapps/uniswapv3/pooldaydatav3s/historical | PoolDayDataV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolHourDataV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolHourDataV3sHistorical) | **GET** /dapps/uniswapv3/poolhourdatav3s/historical | PoolHourDataV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolV3sHistorical) | **GET** /dapps/uniswapv3/poolv3s/historical | PoolV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolsCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*OASUniswapV3Api* | [**uniswapV3GetPositionSnapshotV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetPositionSnapshotV3sHistorical) | **GET** /dapps/uniswapv3/positionsnapshotv3s/historical | PositionSnapshotV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPositionV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetPositionV3sHistorical) | **GET** /dapps/uniswapv3/positionv3s/historical | PositionV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPositionsCurrent**](OASUniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*OASUniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](OASUniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*OASUniswapV3Api* | [**uniswapV3GetSwapV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetSwapV3sHistorical) | **GET** /dapps/uniswapv3/swapv3s/historical | SwapV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetSwapsCurrent**](OASUniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTickDayDataV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetTickDayDataV3sHistorical) | **GET** /dapps/uniswapv3/tickdaydatav3s/historical | TickDayDataV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTickV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetTickV3sHistorical) | **GET** /dapps/uniswapv3/tickv3s/historical | TickV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTicksCurrent**](OASUniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*OASUniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetTokenHourDataV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetTokenHourDataV3sHistorical) | **GET** /dapps/uniswapv3/tokenhourdatav3s/historical | TokenHourDataV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokenV3DayDatasHistorical**](OASUniswapV3Api.md#uniswapV3GetTokenV3DayDatasHistorical) | **GET** /dapps/uniswapv3/tokenv3daydatas/historical | TokenV3DayDatas (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokenV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetTokenV3sHistorical) | **GET** /dapps/uniswapv3/tokenv3s/historical | TokenV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokensCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
*OASUniswapV3Api* | [**uniswapV3GetTransactionV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetTransactionV3sHistorical) | **GET** /dapps/uniswapv3/transactionv3s/historical | TransactionV3s (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetUniswapDayDataV3sHistorical**](OASUniswapV3Api.md#uniswapV3GetUniswapDayDataV3sHistorical) | **GET** /dapps/uniswapv3/uniswapdaydatav3s/historical | UniswapDayDataV3s (historical) 🔥


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

