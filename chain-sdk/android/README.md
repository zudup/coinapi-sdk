# openapi-android-client

## Requirements

Building the API client library requires [Maven](https://maven.apache.org/) to be installed.

## Installation

To install the API client library to your local Maven repository, simply execute:

```shell
mvn install
```

To deploy it to a remote Maven repository instead, configure the settings of the repository and execute:

```shell
mvn deploy
```

Refer to the [official documentation](https://maven.apache.org/plugins/maven-deploy-plugin/usage.html) for more information.

### Maven users

Add this dependency to your project's POM:

```xml
<dependency>
    <groupId>org.openapitools</groupId>
    <artifactId>openapi-android-client</artifactId>
    <version>1.0.0</version>
    <scope>compile</scope>
</dependency>
```

### Gradle users

Add this dependency to your project's build file:

```groovy
compile "org.openapitools:openapi-android-client:1.0.0"
```

### Others

At first generate the JAR by executing:

    mvn package

Then manually install the following JARs:

- target/openapi-android-client-1.0.0.jar
- target/lib/*.jar

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Java code:

```java

import org.openapitools.client.api.CowApi;

public class CowApiExample {

    public static void main(String[] args) {
        CowApi apiInstance = new CowApi();
        Long startBlock = null; // Long | 
        Long endBlock = null; // Long | 
        Date startDate = null; // Date | 
        Date endDate = null; // Date | 
        try {
            List<CowOrderDTO> result = apiInstance.cowGetOrdersHistorical(startBlock, endBlock, startDate, endDate);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling CowApi#cowGetOrdersHistorical");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CowApi* | [**cowGetOrdersHistorical**](docs/CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | GetOrders (historical)
*CowApi* | [**cowGetSettlementsHistorical**](docs/CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | GetSettlements (historical)
*CowApi* | [**cowGetTokensHistorical**](docs/CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | GetTokens (historical) 🔥
*CowApi* | [**cowGetTradesHistorical**](docs/CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | GetTrades (historical) 🔥
*CowApi* | [**cowGetUsersHistorical**](docs/CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | GetUsers (historical)
*CurveApi* | [**curveGetAccountsHistorical**](docs/CurveApi.md#curveGetAccountsHistorical) | **GET** /dapps/curve/accounts/historical | GetAccounts (historical)
*CurveApi* | [**curveGetAddLiquidityEventsHistorical**](docs/CurveApi.md#curveGetAddLiquidityEventsHistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | GetAddLiquidityEvents (historical)
*CurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](docs/CurveApi.md#curveGetAdminFeeChangeLogsHistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | GetAdminFeeChangeLogs (historical)
*CurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](docs/CurveApi.md#curveGetAmplificationCoeffChangeLogsHistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | GetAmplificationCoeffChangeLogs (historical)
*CurveApi* | [**curveGetCoinsHistorical**](docs/CurveApi.md#curveGetCoinsHistorical) | **GET** /dapps/curve/coins/historical | GetCoins (historical)
*CurveApi* | [**curveGetContractsHistorical**](docs/CurveApi.md#curveGetContractsHistorical) | **GET** /dapps/curve/contracts/historical | GetContracts (historical)
*CurveApi* | [**curveGetContractsVersionsHistorical**](docs/CurveApi.md#curveGetContractsVersionsHistorical) | **GET** /dapps/curve/contractsVersions/historical | GetContractsVersions (historical)
*CurveApi* | [**curveGetDailyVolumesHistorical**](docs/CurveApi.md#curveGetDailyVolumesHistorical) | **GET** /dapps/curve/dailyVolumes/historical | GetDailyVolumes (historical)
*CurveApi* | [**curveGetExchangesHistorical**](docs/CurveApi.md#curveGetExchangesHistorical) | **GET** /dapps/curve/exchanges/historical | GetExchanges (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogsHistorical**](docs/CurveApi.md#curveGetFeeChangeLogsHistorical) | **GET** /dapps/curve/feeChangeLogs/historical | GetFeeChangeLogs (historical)
*CurveApi* | [**curveGetGaugesDepositsHistorical**](docs/CurveApi.md#curveGetGaugesDepositsHistorical) | **GET** /dapps/curve/gaugesDeposits/historical | GetGaugesDeposits (historical)
*CurveApi* | [**curveGetGaugesHistorical**](docs/CurveApi.md#curveGetGaugesHistorical) | **GET** /dapps/curve/gauges/historical | GetGauges (historical)
*CurveApi* | [**curveGetGaugesLiquidityHistorical**](docs/CurveApi.md#curveGetGaugesLiquidityHistorical) | **GET** /dapps/curve/gaugesLiquidity/historical | GetGaugesLiquidity (historical)
*CurveApi* | [**curveGetGaugesTotalWeightsHistorical**](docs/CurveApi.md#curveGetGaugesTotalWeightsHistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical | GetGaugesTotalWeights (historical)
*CurveApi* | [**curveGetGaugesTypesHistorical**](docs/CurveApi.md#curveGetGaugesTypesHistorical) | **GET** /dapps/curve/gaugesTypes/historical | GetGaugesTypes (historical)
*CurveApi* | [**curveGetGaugesTypesWeightsHistorical**](docs/CurveApi.md#curveGetGaugesTypesWeightsHistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical | GetGaugesTypesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsHistorical**](docs/CurveApi.md#curveGetGaugesWeightsHistorical) | **GET** /dapps/curve/gaugesWeights/historical | GetGaugesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsVotesHistorical**](docs/CurveApi.md#curveGetGaugesWeightsVotesHistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical | GetGaugesWeightsVotes (historical)
*CurveApi* | [**curveGetGaugesWithdrawHistorical**](docs/CurveApi.md#curveGetGaugesWithdrawHistorical) | **GET** /dapps/curve/gaugesWithdraws/historical | GetGaugesWithdraw (historical)
*CurveApi* | [**curveGetHourlyVolumesHistorical**](docs/CurveApi.md#curveGetHourlyVolumesHistorical) | **GET** /dapps/curve/hourlyVolumes/historical | GetHourlyVolumes (historical)
*CurveApi* | [**curveGetLpTokensHistorical**](docs/CurveApi.md#curveGetLpTokensHistorical) | **GET** /dapps/curve/lpTokens/historical | GetLpTokens (historical)
*CurveApi* | [**curveGetPoolsHistorical**](docs/CurveApi.md#curveGetPoolsHistorical) | **GET** /dapps/curve/pools/historical | GetPools (historical) 🔥
*CurveApi* | [**curveGetProposalsHistorical**](docs/CurveApi.md#curveGetProposalsHistorical) | **GET** /dapps/curve/proposals/historical | GetProposals (historical)
*CurveApi* | [**curveGetProposalsVotesHistorical**](docs/CurveApi.md#curveGetProposalsVotesHistorical) | **GET** /dapps/curve/proposalsVotes/historical | GetProposalsVotes (historical)
*CurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](docs/CurveApi.md#curveGetRemoveLiquidityEventsHistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | GetRemoveLiquidityEvents (historical)
*CurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](docs/CurveApi.md#curveGetRemoveLiquidityOneEventsHistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | GetRemoveLiquidityOneEvents (historical)
*CurveApi* | [**curveGetSystemStatesHistorical**](docs/CurveApi.md#curveGetSystemStatesHistorical) | **GET** /dapps/curve/systemStates/historical | GetSystemStates (historical)
*CurveApi* | [**curveGetTokensHistorical**](docs/CurveApi.md#curveGetTokensHistorical) | **GET** /dapps/curve/tokens/historical | GetTokens (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventsHistorical**](docs/CurveApi.md#curveGetTransferOwnershipEventsHistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | GetTransferOwnershipEvents (historical)
*CurveApi* | [**curveGetUnderlyingCoinsHistorical**](docs/CurveApi.md#curveGetUnderlyingCoinsHistorical) | **GET** /dapps/curve/underlyingCoins/historical | GetUnderlyingCoins (historical)
*CurveApi* | [**curveGetVotingAppsHistorical**](docs/CurveApi.md#curveGetVotingAppsHistorical) | **GET** /dapps/curve/votingApps/historical | GetVotingApps (historical)
*CurveApi* | [**curveGetWeeklyVolumesHistorical**](docs/CurveApi.md#curveGetWeeklyVolumesHistorical) | **GET** /dapps/curve/weeklyVolumes/historical | GetWeeklyVolumes (historical)
*DexApi* | [**dexGetBatchesHistorical**](docs/DexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | GetBatches (historical)
*DexApi* | [**dexGetDepositsHistorical**](docs/DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | GetDeposits (historical)
*DexApi* | [**dexGetOrdersHistorical**](docs/DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | GetOrders (historical)
*DexApi* | [**dexGetPricesHistorical**](docs/DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | GetPrices (historical)
*DexApi* | [**dexGetSolutionsHistorical**](docs/DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | GetSolutions (historical)
*DexApi* | [**dexGetStatsHistorical**](docs/DexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | GetStats (historical)
*DexApi* | [**dexGetTokensHistorical**](docs/DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | GetTokens (historical) 🔥
*DexApi* | [**dexGetTradesHistorical**](docs/DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | GetTrades (historical) 🔥
*DexApi* | [**dexGetUsersHistorical**](docs/DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | GetUsers (historical)
*DexApi* | [**dexGetWithdrawsHistorical**](docs/DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | GetWithdraws (historical)
*DexApi* | [**dexGetWithdrawsRequestsHistorical**](docs/DexApi.md#dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical | GetWithdrawsRequests (historical)
*SushiswapApi* | [**curveGetExchangesCurrent**](docs/SushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | GetExchanges (current) 🔥
*SushiswapApi* | [**dexGetTradesCurrent**](docs/SushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | GetTrades (current) 🔥
*SushiswapApi* | [**sushiswapGetBundlesHistorical**](docs/SushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | GetBundles (historical)
*SushiswapApi* | [**sushiswapGetBurnsHistorical**](docs/SushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | GetBurns (historical)
*SushiswapApi* | [**sushiswapGetDayDataHistorical**](docs/SushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | GetDayData (historical)
*SushiswapApi* | [**sushiswapGetFactoryHistorical**](docs/SushiswapApi.md#sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | GetFactory (historical)
*SushiswapApi* | [**sushiswapGetHourDataHistorical**](docs/SushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | GetHourData (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionHistorical**](docs/SushiswapApi.md#sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | GetLiquidityPosition (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotHistorical**](docs/SushiswapApi.md#sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | GetLiquidityPositionSnapshot (historical)
*SushiswapApi* | [**sushiswapGetMintsHistorical**](docs/SushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | GetMints (historical)
*SushiswapApi* | [**sushiswapGetPoolsCurrent**](docs/SushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | GetPools (current) 🔥
*SushiswapApi* | [**sushiswapGetPoolsDayDataHistorical**](docs/SushiswapApi.md#sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | GetPoolsDayData (historical)
*SushiswapApi* | [**sushiswapGetPoolsHistorical**](docs/SushiswapApi.md#sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | GetPools (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsHourDataHistorical**](docs/SushiswapApi.md#sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | GetPoolsHourData (historical)
*SushiswapApi* | [**sushiswapGetSwapsCurrent**](docs/SushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | GetSwaps (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsHistorical**](docs/SushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | GetSwaps (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokensCurrent**](docs/SushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | GetTokens (current) 🔥
*SushiswapApi* | [**sushiswapGetTokensDayDataHistorical**](docs/SushiswapApi.md#sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | GetTokensDayData (historical)
*SushiswapApi* | [**sushiswapGetTokensHistorical**](docs/SushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | GetTokens (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionsHistorical**](docs/SushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | GetTransactions (historical)
*SushiswapApi* | [**sushiswapGetUsersHistorical**](docs/SushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | GetUsers (historical)
*UniswapV2Api* | [**uniswapV2GetBundlesHistorical**](docs/UniswapV2Api.md#uniswapV2GetBundlesHistorical) | **GET** /dapps/uniswapv2/bundles/historical | GetBundles (historical)
*UniswapV2Api* | [**uniswapV2GetBurnsHistorical**](docs/UniswapV2Api.md#uniswapV2GetBurnsHistorical) | **GET** /dapps/uniswapv2/burns/historical | GetBurns (historical)
*UniswapV2Api* | [**uniswapV2GetDayDataHistorical**](docs/UniswapV2Api.md#uniswapV2GetDayDataHistorical) | **GET** /dapps/uniswapv2/dayData/historical | GetDayData (historical)
*UniswapV2Api* | [**uniswapV2GetFactoryHistorical**](docs/UniswapV2Api.md#uniswapV2GetFactoryHistorical) | **GET** /dapps/uniswapv2/factory/historical | GetFactory (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsHistorical**](docs/UniswapV2Api.md#uniswapV2GetLiquidityPositionsHistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | GetLiquidityPositions (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](docs/UniswapV2Api.md#uniswapV2GetLiquidityPositionsSnapshotsHistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | GetLiquidityPositionsSnapshots (historical)
*UniswapV2Api* | [**uniswapV2GetMintsHistorical**](docs/UniswapV2Api.md#uniswapV2GetMintsHistorical) | **GET** /dapps/uniswapv2/mints/historical | GetMints (historical)
*UniswapV2Api* | [**uniswapV2GetPoolsCurrent**](docs/UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | GetPools (current) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsDayDataHistorical**](docs/UniswapV2Api.md#uniswapV2GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical | GetPoolsDayData (historical)
*UniswapV2Api* | [**uniswapV2GetPoolsHistorical**](docs/UniswapV2Api.md#uniswapV2GetPoolsHistorical) | **GET** /dapps/uniswapv2/pools/historical | GetPools (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsHourDataHistorical**](docs/UniswapV2Api.md#uniswapV2GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical | GetPoolsHourData (historical)
*UniswapV2Api* | [**uniswapV2GetSwapsCurrent**](docs/UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | GetSwaps (current) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsHistorical**](docs/UniswapV2Api.md#uniswapV2GetSwapsHistorical) | **GET** /dapps/uniswapv2/swaps/historical | GetSwaps (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensCurrent**](docs/UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | GetTokens (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensDayDataHistorical**](docs/UniswapV2Api.md#uniswapV2GetTokensDayDataHistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical | GetTokensDayData (historical)
*UniswapV2Api* | [**uniswapV2GetTokensHistorical**](docs/UniswapV2Api.md#uniswapV2GetTokensHistorical) | **GET** /dapps/uniswapv2/tokens/historical | GetTokens (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionsHistorical**](docs/UniswapV2Api.md#uniswapV2GetTransactionsHistorical) | **GET** /dapps/uniswapv2/transactions/historical | GetTransactions (historical)
*UniswapV2Api* | [**uniswapV2GetUsersHistorical**](docs/UniswapV2Api.md#uniswapV2GetUsersHistorical) | **GET** /dapps/uniswapv2/users/historical | GetUsers (historical)
*UniswapV3Api* | [**uniswapV3GetBundlesCurrent**](docs/UniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | GetBundles (current)
*UniswapV3Api* | [**uniswapV3GetBundlesHistorical**](docs/UniswapV3Api.md#uniswapV3GetBundlesHistorical) | **GET** /dapps/uniswapv3/bundles/historical | GetBundles (historical)
*UniswapV3Api* | [**uniswapV3GetBurnsCurrent**](docs/UniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | GetBurns (current)
*UniswapV3Api* | [**uniswapV3GetBurnsHistorical**](docs/UniswapV3Api.md#uniswapV3GetBurnsHistorical) | **GET** /dapps/uniswapv3/burns/historical | GetBurns (historical)
*UniswapV3Api* | [**uniswapV3GetDayDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | GetDayData (current)
*UniswapV3Api* | [**uniswapV3GetDayDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetDayDataHistorical) | **GET** /dapps/uniswapv3/dayData/historical | GetDayData (historical)
*UniswapV3Api* | [**uniswapV3GetFactoryCurrent**](docs/UniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | GetFactory (current)
*UniswapV3Api* | [**uniswapV3GetFactoryHistorical**](docs/UniswapV3Api.md#uniswapV3GetFactoryHistorical) | **GET** /dapps/uniswapv3/factory/historical | GetFactory (historical)
*UniswapV3Api* | [**uniswapV3GetMintsCurrent**](docs/UniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | GetMints (current)
*UniswapV3Api* | [**uniswapV3GetMintsHistorical**](docs/UniswapV3Api.md#uniswapV3GetMintsHistorical) | **GET** /dapps/uniswapv3/mints/historical | GetMints (historical)
*UniswapV3Api* | [**uniswapV3GetPoolsCurrent**](docs/UniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | GetPools (current) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | GetPoolsDayData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical | GetPoolsDayData (historical)
*UniswapV3Api* | [**uniswapV3GetPoolsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPoolsHistorical) | **GET** /dapps/uniswapv3/pools/historical | GetPools (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | GetPoolsHourData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical | GetPoolsHourData (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsCurrent**](docs/UniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | GetPositions (current)
*UniswapV3Api* | [**uniswapV3GetPositionsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPositionsHistorical) | **GET** /dapps/uniswapv3/positions/historical | GetPositions (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnaphotsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPositionsSnaphotsHistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical | GetPositionsSnaphots (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](docs/UniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | GetPositionsSnapshots (current)
*UniswapV3Api* | [**uniswapV3GetSwapsCurrent**](docs/UniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | GetSwaps (current) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsHistorical**](docs/UniswapV3Api.md#uniswapV3GetSwapsHistorical) | **GET** /dapps/uniswapv3/swaps/historical | GetSwaps (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTicksCurrent**](docs/UniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | GetTicks (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | GetTicksDayData (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetTicksDayDataHistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical | GetTicksDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTicksHistorical**](docs/UniswapV3Api.md#uniswapV3GetTicksHistorical) | **GET** /dapps/uniswapv3/ticks/historical | GetTicks (historical)
*UniswapV3Api* | [**uniswapV3GetTokensCurrent**](docs/UniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | GetTokens (current) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | GetTokensDayData (current)
*UniswapV3Api* | [**uniswapV3GetTokensDayDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetTokensDayDataHistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical | GetTokensDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTokensHistorical**](docs/UniswapV3Api.md#uniswapV3GetTokensHistorical) | **GET** /dapps/uniswapv3/tokens/historical | GetTokens (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | GetTokensHourData (current)
*UniswapV3Api* | [**uniswapV3GetTokensHourDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetTokensHourDataHistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical | GetTokensHourData (historical)
*UniswapV3Api* | [**uniswapV3GetTransactionsHistorical**](docs/UniswapV3Api.md#uniswapV3GetTransactionsHistorical) | **GET** /dapps/uniswapv3/transactions/historical | GetTransactions (historical)


## Documentation for Models

 - [CowOrderDTO](docs/CowOrderDTO.md)
 - [CowSettlementDTO](docs/CowSettlementDTO.md)
 - [CowTokenDTO](docs/CowTokenDTO.md)
 - [CowTradeDTO](docs/CowTradeDTO.md)
 - [CowUserDTO](docs/CowUserDTO.md)
 - [CurveAccountDTO](docs/CurveAccountDTO.md)
 - [CurveAddLiquidityEventDTO](docs/CurveAddLiquidityEventDTO.md)
 - [CurveAdminFeeChangeLogDTO](docs/CurveAdminFeeChangeLogDTO.md)
 - [CurveAmplificationCoeffChangeLogDTO](docs/CurveAmplificationCoeffChangeLogDTO.md)
 - [CurveCoinDTO](docs/CurveCoinDTO.md)
 - [CurveContractDTO](docs/CurveContractDTO.md)
 - [CurveContractVersionDTO](docs/CurveContractVersionDTO.md)
 - [CurveDailyVolumeDTO](docs/CurveDailyVolumeDTO.md)
 - [CurveExchangeDTO](docs/CurveExchangeDTO.md)
 - [CurveFeeChangeLogDTO](docs/CurveFeeChangeLogDTO.md)
 - [CurveGaugeDTO](docs/CurveGaugeDTO.md)
 - [CurveGaugeDepositDTO](docs/CurveGaugeDepositDTO.md)
 - [CurveGaugeLiquidityDTO](docs/CurveGaugeLiquidityDTO.md)
 - [CurveGaugeTotalWeightDTO](docs/CurveGaugeTotalWeightDTO.md)
 - [CurveGaugeTypeDTO](docs/CurveGaugeTypeDTO.md)
 - [CurveGaugeTypeWeightDTO](docs/CurveGaugeTypeWeightDTO.md)
 - [CurveGaugeWeightDTO](docs/CurveGaugeWeightDTO.md)
 - [CurveGaugeWeightVoteDTO](docs/CurveGaugeWeightVoteDTO.md)
 - [CurveGaugeWithdrawDTO](docs/CurveGaugeWithdrawDTO.md)
 - [CurveHourlyVolumeDTO](docs/CurveHourlyVolumeDTO.md)
 - [CurveLpTokenDTO](docs/CurveLpTokenDTO.md)
 - [CurvePoolDTO](docs/CurvePoolDTO.md)
 - [CurveProposalDTO](docs/CurveProposalDTO.md)
 - [CurveProposalVoteDTO](docs/CurveProposalVoteDTO.md)
 - [CurveRemoveLiquidityEventDTO](docs/CurveRemoveLiquidityEventDTO.md)
 - [CurveRemoveLiquidityOneEventDTO](docs/CurveRemoveLiquidityOneEventDTO.md)
 - [CurveSystemStateDTO](docs/CurveSystemStateDTO.md)
 - [CurveTokenDTO](docs/CurveTokenDTO.md)
 - [CurveTransferOwnershipEventDTO](docs/CurveTransferOwnershipEventDTO.md)
 - [CurveUnderlyingCoinDTO](docs/CurveUnderlyingCoinDTO.md)
 - [CurveVotingAppDTO](docs/CurveVotingAppDTO.md)
 - [CurveWeeklyVolumeDTO](docs/CurveWeeklyVolumeDTO.md)
 - [DexBatchDTO](docs/DexBatchDTO.md)
 - [DexDepositDTO](docs/DexDepositDTO.md)
 - [DexOrderDTO](docs/DexOrderDTO.md)
 - [DexPriceDTO](docs/DexPriceDTO.md)
 - [DexSolutionDTO](docs/DexSolutionDTO.md)
 - [DexStatsDTO](docs/DexStatsDTO.md)
 - [DexTokenDTO](docs/DexTokenDTO.md)
 - [DexTradeDTO](docs/DexTradeDTO.md)
 - [DexUserDTO](docs/DexUserDTO.md)
 - [DexWithdrawDTO](docs/DexWithdrawDTO.md)
 - [DexWithdrawRequestDTO](docs/DexWithdrawRequestDTO.md)
 - [NumericsBigInteger](docs/NumericsBigInteger.md)
 - [SushiswapBundleDTO](docs/SushiswapBundleDTO.md)
 - [SushiswapBurnDTO](docs/SushiswapBurnDTO.md)
 - [SushiswapDayDataDTO](docs/SushiswapDayDataDTO.md)
 - [SushiswapFactoryDTO](docs/SushiswapFactoryDTO.md)
 - [SushiswapHourDataDTO](docs/SushiswapHourDataDTO.md)
 - [SushiswapLiquidityPositionDTO](docs/SushiswapLiquidityPositionDTO.md)
 - [SushiswapLiquidityPositionSnapshotDTO](docs/SushiswapLiquidityPositionSnapshotDTO.md)
 - [SushiswapMintDTO](docs/SushiswapMintDTO.md)
 - [SushiswapPairDTO](docs/SushiswapPairDTO.md)
 - [SushiswapPairDayDataDTO](docs/SushiswapPairDayDataDTO.md)
 - [SushiswapPairHourDataDTO](docs/SushiswapPairHourDataDTO.md)
 - [SushiswapSwapDTO](docs/SushiswapSwapDTO.md)
 - [SushiswapTokenDTO](docs/SushiswapTokenDTO.md)
 - [SushiswapTokenDayDataDTO](docs/SushiswapTokenDayDataDTO.md)
 - [SushiswapTransactionDTO](docs/SushiswapTransactionDTO.md)
 - [SushiswapUserDTO](docs/SushiswapUserDTO.md)
 - [TransactionsETradeAggressiveSide](docs/TransactionsETradeAggressiveSide.md)
 - [UniswapV2BundleV2DTO](docs/UniswapV2BundleV2DTO.md)
 - [UniswapV2BurnV2DTO](docs/UniswapV2BurnV2DTO.md)
 - [UniswapV2LiquidityPositionSnapshotV2DTO](docs/UniswapV2LiquidityPositionSnapshotV2DTO.md)
 - [UniswapV2LiquidityPositionV2DTO](docs/UniswapV2LiquidityPositionV2DTO.md)
 - [UniswapV2MintV2DTO](docs/UniswapV2MintV2DTO.md)
 - [UniswapV2PairDayDataV2DTO](docs/UniswapV2PairDayDataV2DTO.md)
 - [UniswapV2PairHourDataV2DTO](docs/UniswapV2PairHourDataV2DTO.md)
 - [UniswapV2PairV2DTO](docs/UniswapV2PairV2DTO.md)
 - [UniswapV2SwapV2DTO](docs/UniswapV2SwapV2DTO.md)
 - [UniswapV2TokenDayDataV2DTO](docs/UniswapV2TokenDayDataV2DTO.md)
 - [UniswapV2TokenV2DTO](docs/UniswapV2TokenV2DTO.md)
 - [UniswapV2TransactionV2DTO](docs/UniswapV2TransactionV2DTO.md)
 - [UniswapV2UniswapDayDataV2DTO](docs/UniswapV2UniswapDayDataV2DTO.md)
 - [UniswapV2UniswapFactoryV2DTO](docs/UniswapV2UniswapFactoryV2DTO.md)
 - [UniswapV2UserV2DTO](docs/UniswapV2UserV2DTO.md)
 - [UniswapV3BundleV3DTO](docs/UniswapV3BundleV3DTO.md)
 - [UniswapV3BurnV3DTO](docs/UniswapV3BurnV3DTO.md)
 - [UniswapV3FactoryV3DTO](docs/UniswapV3FactoryV3DTO.md)
 - [UniswapV3MintV3DTO](docs/UniswapV3MintV3DTO.md)
 - [UniswapV3PoolDayDataV3DTO](docs/UniswapV3PoolDayDataV3DTO.md)
 - [UniswapV3PoolHourDataV3DTO](docs/UniswapV3PoolHourDataV3DTO.md)
 - [UniswapV3PoolV3DTO](docs/UniswapV3PoolV3DTO.md)
 - [UniswapV3PositionSnapshotV3DTO](docs/UniswapV3PositionSnapshotV3DTO.md)
 - [UniswapV3PositionV3DTO](docs/UniswapV3PositionV3DTO.md)
 - [UniswapV3SwapV3DTO](docs/UniswapV3SwapV3DTO.md)
 - [UniswapV3TickDayDataV3DTO](docs/UniswapV3TickDayDataV3DTO.md)
 - [UniswapV3TickV3DTO](docs/UniswapV3TickV3DTO.md)
 - [UniswapV3TokenHourDataV3DTO](docs/UniswapV3TokenHourDataV3DTO.md)
 - [UniswapV3TokenV3DTO](docs/UniswapV3TokenV3DTO.md)
 - [UniswapV3TokenV3DayDataDTO](docs/UniswapV3TokenV3DayDataDTO.md)
 - [UniswapV3TransactionV3DTO](docs/UniswapV3TransactionV3DTO.md)
 - [UniswapV3UniswapDayDataV3DTO](docs/UniswapV3UniswapDayDataV3DTO.md)


## Documentation for Authorization

All endpoints do not require authorization.
Authentication schemes defined for the API:

## Recommendation

It's recommended to create an instance of `ApiClient` per thread in a multithreaded environment to avoid any potential issues.

## Author

support@coinapi.io

