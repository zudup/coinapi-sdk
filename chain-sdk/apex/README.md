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
    api.dappsCowOrdersHistoricalGet(params);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASCowApi* | [**dappsCowOrdersHistoricalGet**](OASCowApi.md#dappsCowOrdersHistoricalGet) | **GET** /dapps/cow/orders/historical | 
*OASCowApi* | [**dappsCowSettlementHistoricalGet**](OASCowApi.md#dappsCowSettlementHistoricalGet) | **GET** /dapps/cow/settlement/historical | 
*OASCowApi* | [**dappsCowTokensHistoricalGet**](OASCowApi.md#dappsCowTokensHistoricalGet) | **GET** /dapps/cow/tokens/historical | 
*OASCowApi* | [**dappsCowTradesHistoricalGet**](OASCowApi.md#dappsCowTradesHistoricalGet) | **GET** /dapps/cow/trades/historical | 
*OASCowApi* | [**dappsCowUsersHistoricalGet**](OASCowApi.md#dappsCowUsersHistoricalGet) | **GET** /dapps/cow/users/historical | 
*OASCurveApi* | [**dappsCurveAccountsHistoricalGet**](OASCurveApi.md#dappsCurveAccountsHistoricalGet) | **GET** /dapps/curve/accounts/historical | 
*OASCurveApi* | [**dappsCurveAddLiquidityEventHistoricalGet**](OASCurveApi.md#dappsCurveAddLiquidityEventHistoricalGet) | **GET** /dapps/curve/addLiquidityEvent/historical | 
*OASCurveApi* | [**dappsCurveAdminFeeChangeLogHistoricalGet**](OASCurveApi.md#dappsCurveAdminFeeChangeLogHistoricalGet) | **GET** /dapps/curve/adminFeeChangeLog/historical | 
*OASCurveApi* | [**dappsCurveAmplificationCoeffChangeLogHistoricalGet**](OASCurveApi.md#dappsCurveAmplificationCoeffChangeLogHistoricalGet) | **GET** /dapps/curve/amplificationCoeffChangeLog/historical | 
*OASCurveApi* | [**dappsCurveCoinsHistoricalGet**](OASCurveApi.md#dappsCurveCoinsHistoricalGet) | **GET** /dapps/curve/coins/historical | 
*OASCurveApi* | [**dappsCurveContractsHistoricalGet**](OASCurveApi.md#dappsCurveContractsHistoricalGet) | **GET** /dapps/curve/contracts/historical | 
*OASCurveApi* | [**dappsCurveContractsVersionHistoricalGet**](OASCurveApi.md#dappsCurveContractsVersionHistoricalGet) | **GET** /dapps/curve/contractsVersion/historical | 
*OASCurveApi* | [**dappsCurveDailyVolumeHistoricalGet**](OASCurveApi.md#dappsCurveDailyVolumeHistoricalGet) | **GET** /dapps/curve/dailyVolume/historical | 
*OASCurveApi* | [**dappsCurveFeeChangeLogHistoricalGet**](OASCurveApi.md#dappsCurveFeeChangeLogHistoricalGet) | **GET** /dapps/curve/feeChangeLog/historical | 
*OASCurveApi* | [**dappsCurveGaugeDepositHistoricalGet**](OASCurveApi.md#dappsCurveGaugeDepositHistoricalGet) | **GET** /dapps/curve/gaugeDeposit/historical | 
*OASCurveApi* | [**dappsCurveGaugeHistoricalGet**](OASCurveApi.md#dappsCurveGaugeHistoricalGet) | **GET** /dapps/curve/gauge/historical | 
*OASCurveApi* | [**dappsCurveGaugeLiquidityHistoricalGet**](OASCurveApi.md#dappsCurveGaugeLiquidityHistoricalGet) | **GET** /dapps/curve/gaugeLiquidity/historical | 
*OASCurveApi* | [**dappsCurveGaugeTotalWeightHistoricalGet**](OASCurveApi.md#dappsCurveGaugeTotalWeightHistoricalGet) | **GET** /dapps/curve/gaugeTotalWeight/historical | 
*OASCurveApi* | [**dappsCurveGaugeTypeHistoricalGet**](OASCurveApi.md#dappsCurveGaugeTypeHistoricalGet) | **GET** /dapps/curve/gaugeType/historical | 
*OASCurveApi* | [**dappsCurveGaugeTypeWeightHistoricalGet**](OASCurveApi.md#dappsCurveGaugeTypeWeightHistoricalGet) | **GET** /dapps/curve/gaugeTypeWeight/historical | 
*OASCurveApi* | [**dappsCurveGaugeWeightHistoricalGet**](OASCurveApi.md#dappsCurveGaugeWeightHistoricalGet) | **GET** /dapps/curve/gaugeWeight/historical | 
*OASCurveApi* | [**dappsCurveGaugeWeightVoteHistoricalGet**](OASCurveApi.md#dappsCurveGaugeWeightVoteHistoricalGet) | **GET** /dapps/curve/gaugeWeightVote/historical | 
*OASCurveApi* | [**dappsCurveGaugeWithdrawHistoricalGet**](OASCurveApi.md#dappsCurveGaugeWithdrawHistoricalGet) | **GET** /dapps/curve/gaugeWithdraw/historical | 
*OASCurveApi* | [**dappsCurveHourlyVolumeHistoricalGet**](OASCurveApi.md#dappsCurveHourlyVolumeHistoricalGet) | **GET** /dapps/curve/hourlyVolume/historical | 
*OASCurveApi* | [**dappsCurveLpTokenHistoricalGet**](OASCurveApi.md#dappsCurveLpTokenHistoricalGet) | **GET** /dapps/curve/lpToken/historical | 
*OASCurveApi* | [**dappsCurvePoolsHistoricalGet**](OASCurveApi.md#dappsCurvePoolsHistoricalGet) | **GET** /dapps/curve/pools/historical | 
*OASCurveApi* | [**dappsCurveProposalsHistoricalGet**](OASCurveApi.md#dappsCurveProposalsHistoricalGet) | **GET** /dapps/curve/proposals/historical | 
*OASCurveApi* | [**dappsCurveProposalsVoteHistoricalGet**](OASCurveApi.md#dappsCurveProposalsVoteHistoricalGet) | **GET** /dapps/curve/proposalsVote/historical | 
*OASCurveApi* | [**dappsCurveRemoveLiquidityEventHistoricalGet**](OASCurveApi.md#dappsCurveRemoveLiquidityEventHistoricalGet) | **GET** /dapps/curve/removeLiquidityEvent/historical | 
*OASCurveApi* | [**dappsCurveRemoveLiquidityOneEventHistoricalGet**](OASCurveApi.md#dappsCurveRemoveLiquidityOneEventHistoricalGet) | **GET** /dapps/curve/removeLiquidityOneEvent/historical | 
*OASCurveApi* | [**dappsCurveSwapsHistoricalGet**](OASCurveApi.md#dappsCurveSwapsHistoricalGet) | **GET** /dapps/curve/swaps/historical | 
*OASCurveApi* | [**dappsCurveSystemStateHistoricalGet**](OASCurveApi.md#dappsCurveSystemStateHistoricalGet) | **GET** /dapps/curve/systemState/historical | 
*OASCurveApi* | [**dappsCurveTokensHistoricalGet**](OASCurveApi.md#dappsCurveTokensHistoricalGet) | **GET** /dapps/curve/tokens/historical | 
*OASCurveApi* | [**dappsCurveTransferOwnershipEventHistoricalGet**](OASCurveApi.md#dappsCurveTransferOwnershipEventHistoricalGet) | **GET** /dapps/curve/transferOwnershipEvent/historical | 
*OASCurveApi* | [**dappsCurveUnderlyingCoinHistoricalGet**](OASCurveApi.md#dappsCurveUnderlyingCoinHistoricalGet) | **GET** /dapps/curve/underlyingCoin/historical | 
*OASCurveApi* | [**dappsCurveVotingAppHistoricalGet**](OASCurveApi.md#dappsCurveVotingAppHistoricalGet) | **GET** /dapps/curve/votingApp/historical | 
*OASCurveApi* | [**dappsCurveWeeklyVolumeHistoricalGet**](OASCurveApi.md#dappsCurveWeeklyVolumeHistoricalGet) | **GET** /dapps/curve/weeklyVolume/historical | 
*OASDexApi* | [**dappsDexBatchHistoricalGet**](OASDexApi.md#dappsDexBatchHistoricalGet) | **GET** /dapps/dex/batch/historical | 
*OASDexApi* | [**dappsDexOrdersHistoricalGet**](OASDexApi.md#dappsDexOrdersHistoricalGet) | **GET** /dapps/dex/orders/historical | 
*OASDexApi* | [**dappsDexPricesHistoricalGet**](OASDexApi.md#dappsDexPricesHistoricalGet) | **GET** /dapps/dex/prices/historical | 
*OASDexApi* | [**dappsDexSolutionHistoricalGet**](OASDexApi.md#dappsDexSolutionHistoricalGet) | **GET** /dapps/dex/solution/historical | 
*OASDexApi* | [**dappsDexStatsHistoricalGet**](OASDexApi.md#dappsDexStatsHistoricalGet) | **GET** /dapps/dex/stats/historical | 
*OASDexApi* | [**dappsDexTokensHistoricalGet**](OASDexApi.md#dappsDexTokensHistoricalGet) | **GET** /dapps/dex/tokens/historical | 
*OASDexApi* | [**dappsDexTradesHistoricalGet**](OASDexApi.md#dappsDexTradesHistoricalGet) | **GET** /dapps/dex/trades/historical | 
*OASDexApi* | [**dappsDexUsersHistoricalGet**](OASDexApi.md#dappsDexUsersHistoricalGet) | **GET** /dapps/dex/users/historical | 
*OASDexApi* | [**dappsDexWithdrawHistoricalGet**](OASDexApi.md#dappsDexWithdrawHistoricalGet) | **GET** /dapps/dex/withdraw/historical | 
*OASDexApi* | [**dappsDexWithdrawRequestHistoricalGet**](OASDexApi.md#dappsDexWithdrawRequestHistoricalGet) | **GET** /dapps/dex/withdrawRequest/historical | 
*OASSushiswapApi* | [**sushiswapGetBundlesHistorical**](OASSushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | GetBundles (historical)
*OASSushiswapApi* | [**sushiswapGetBurnsHistorical**](OASSushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | GetBurns (historical)
*OASSushiswapApi* | [**sushiswapGetDayDataHistorical**](OASSushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | GetDayData (historical)
*OASSushiswapApi* | [**sushiswapGetFactoryHistorical**](OASSushiswapApi.md#sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | GetFactory (historical)
*OASSushiswapApi* | [**sushiswapGetHourDataHistorical**](OASSushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | GetHourData (historical)
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
*OASSushiswapApi* | [**sushiswapGetMintsHistorical**](OASSushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | GetMints (historical)
*OASSushiswapApi* | [**sushiswapGetPoolsCurrent**](OASSushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | GetPools (current)
*OASSushiswapApi* | [**sushiswapGetPoolsDayDataHistorical**](OASSushiswapApi.md#sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
*OASSushiswapApi* | [**sushiswapGetPoolsHistorical**](OASSushiswapApi.md#sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical)
*OASSushiswapApi* | [**sushiswapGetPoolsHourDataHistorical**](OASSushiswapApi.md#sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
*OASSushiswapApi* | [**sushiswapGetSwapsCurrent**](OASSushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | GetSwaps (current)
*OASSushiswapApi* | [**sushiswapGetSwapsHistorical**](OASSushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical)
*OASSushiswapApi* | [**sushiswapGetTokensCurrent**](OASSushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | GetTokens (current)
*OASSushiswapApi* | [**sushiswapGetTokensDayDataHistorical**](OASSushiswapApi.md#sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
*OASSushiswapApi* | [**sushiswapGetTokensHistorical**](OASSushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical)
*OASSushiswapApi* | [**sushiswapGetTransactionsHistorical**](OASSushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
*OASSushiswapApi* | [**sushiswapGetUsersHistorical**](OASSushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | GetUsers (historical)
*OASUniswapV2Api* | [**dappsUniswapv2BundlesHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2BundlesHistoricalGet) | **GET** /dapps/uniswapv2/bundles/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2BurnsHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2BurnsHistoricalGet) | **GET** /dapps/uniswapv2/burns/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2DayDataHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2DayDataHistoricalGet) | **GET** /dapps/uniswapv2/dayData/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2FactoryHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2FactoryHistoricalGet) | **GET** /dapps/uniswapv2/factory/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2LiquidityPositionHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2LiquidityPositionHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPosition/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet) | **GET** /dapps/uniswapv2/liquidityPositionSnapshots/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2MintsHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2MintsHistoricalGet) | **GET** /dapps/uniswapv2/mints/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2PoolDayDataHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2PoolDayDataHistoricalGet) | **GET** /dapps/uniswapv2/poolDayData/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2PoolHourDataHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2PoolHourDataHistoricalGet) | **GET** /dapps/uniswapv2/poolHourData/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2PoolsCurrentGet**](OASUniswapV2Api.md#dappsUniswapv2PoolsCurrentGet) | **GET** /dapps/uniswapv2/pools/current | GetPools
*OASUniswapV2Api* | [**dappsUniswapv2PoolsHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2PoolsHistoricalGet) | **GET** /dapps/uniswapv2/pools/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2SwapsCurrentGet**](OASUniswapV2Api.md#dappsUniswapv2SwapsCurrentGet) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps
*OASUniswapV2Api* | [**dappsUniswapv2SwapsHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2SwapsHistoricalGet) | **GET** /dapps/uniswapv2/swaps/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2TokenDayDataHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2TokenDayDataHistoricalGet) | **GET** /dapps/uniswapv2/tokenDayData/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2TokensCurrentGet**](OASUniswapV2Api.md#dappsUniswapv2TokensCurrentGet) | **GET** /dapps/uniswapv2/tokens/current | GetTokens
*OASUniswapV2Api* | [**dappsUniswapv2TokensHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2TokensHistoricalGet) | **GET** /dapps/uniswapv2/tokens/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2TransactionsHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2TransactionsHistoricalGet) | **GET** /dapps/uniswapv2/transactions/historical | 
*OASUniswapV2Api* | [**dappsUniswapv2UsersHistoricalGet**](OASUniswapV2Api.md#dappsUniswapv2UsersHistoricalGet) | **GET** /dapps/uniswapv2/users/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3BundleCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3BundleCurrentGet) | **GET** /dapps/uniswapv3/bundle/current | GetBundles
*OASUniswapV3Api* | [**dappsUniswapv3BundlesHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3BundlesHistoricalGet) | **GET** /dapps/uniswapv3/bundles/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3BurnsCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3BurnsCurrentGet) | **GET** /dapps/uniswapv3/burns/current | GetBurns
*OASUniswapV3Api* | [**dappsUniswapv3BurnsHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3BurnsHistoricalGet) | **GET** /dapps/uniswapv3/burns/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3DayDataHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3DayDataHistoricalGet) | **GET** /dapps/uniswapv3/dayData/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3FactoryCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3FactoryCurrentGet) | **GET** /dapps/uniswapv3/factory/current | GetFactory
*OASUniswapV3Api* | [**dappsUniswapv3FactoryHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3FactoryHistoricalGet) | **GET** /dapps/uniswapv3/factory/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3MintsCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3MintsCurrentGet) | **GET** /dapps/uniswapv3/mints/current | GetMints
*OASUniswapV3Api* | [**dappsUniswapv3MintsHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3MintsHistoricalGet) | **GET** /dapps/uniswapv3/mints/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3PoolDayDataHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3PoolDayDataHistoricalGet) | **GET** /dapps/uniswapv3/poolDayData/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3PoolHourDataHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3PoolHourDataHistoricalGet) | **GET** /dapps/uniswapv3/poolHourData/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3PoolsCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3PoolsCurrentGet) | **GET** /dapps/uniswapv3/pools/current | GetPools
*OASUniswapV3Api* | [**dappsUniswapv3PoolsDayDataCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3PoolsDayDataCurrentGet) | **GET** /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData
*OASUniswapV3Api* | [**dappsUniswapv3PoolsHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3PoolsHistoricalGet) | **GET** /dapps/uniswapv3/pools/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3PoolsHourDataCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3PoolsHourDataCurrentGet) | **GET** /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData
*OASUniswapV3Api* | [**dappsUniswapv3PositionSnapshotHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3PositionSnapshotHistoricalGet) | **GET** /dapps/uniswapv3/positionSnapshot/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3PositionSnapshotsCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3PositionSnapshotsCurrentGet) | **GET** /dapps/uniswapv3/positionSnapshots/current | GetPositionSnapshot
*OASUniswapV3Api* | [**dappsUniswapv3PositionsCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3PositionsCurrentGet) | **GET** /dapps/uniswapv3/positions/current | GetPositions
*OASUniswapV3Api* | [**dappsUniswapv3PositionsHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3PositionsHistoricalGet) | **GET** /dapps/uniswapv3/positions/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3SwapsCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3SwapsCurrentGet) | **GET** /dapps/uniswapv3/swaps/current | GetSwaps
*OASUniswapV3Api* | [**dappsUniswapv3SwapsHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3SwapsHistoricalGet) | **GET** /dapps/uniswapv3/swaps/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3TickDayDataHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3TickDayDataHistoricalGet) | **GET** /dapps/uniswapv3/tickDayData/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3TicksCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3TicksCurrentGet) | **GET** /dapps/uniswapv3/ticks/current | GetTicks
*OASUniswapV3Api* | [**dappsUniswapv3TicksDayDataCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3TicksDayDataCurrentGet) | **GET** /dapps/uniswapv3/ticksDayData/current | GetTicksDayData
*OASUniswapV3Api* | [**dappsUniswapv3TicksHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3TicksHistoricalGet) | **GET** /dapps/uniswapv3/ticks/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3TokenDayDataHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3TokenDayDataHistoricalGet) | **GET** /dapps/uniswapv3/tokenDayData/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3TokenHourDataHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3TokenHourDataHistoricalGet) | **GET** /dapps/uniswapv3/tokenHourData/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3TokensCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3TokensCurrentGet) | **GET** /dapps/uniswapv3/tokens/current | GetTokens
*OASUniswapV3Api* | [**dappsUniswapv3TokensDayDataCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3TokensDayDataCurrentGet) | **GET** /dapps/uniswapv3/tokensDayData/current | GetTokensDayData
*OASUniswapV3Api* | [**dappsUniswapv3TokensHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3TokensHistoricalGet) | **GET** /dapps/uniswapv3/tokens/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3TokensHourDataCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3TokensHourDataCurrentGet) | **GET** /dapps/uniswapv3/tokensHourData/current | GetTokensHourData
*OASUniswapV3Api* | [**dappsUniswapv3TransactionsHistoricalGet**](OASUniswapV3Api.md#dappsUniswapv3TransactionsHistoricalGet) | **GET** /dapps/uniswapv3/transactions/historical | 
*OASUniswapV3Api* | [**dappsUniswapv3UniswapDayDataCurrentGet**](OASUniswapV3Api.md#dappsUniswapv3UniswapDayDataCurrentGet) | **GET** /dapps/uniswapv3/uniswapDayData/current | GetUniswapDayData


## Documentation for Models

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

