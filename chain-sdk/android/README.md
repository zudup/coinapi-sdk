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
        String poolId = null; // String | 
        try {
            List<CowOrderDTO> result = apiInstance.cowGetOrderDTOsHistorical(startBlock, endBlock, startDate, endDate, poolId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling CowApi#cowGetOrderDTOsHistorical");
            e.printStackTrace();
        }
    }
}

```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CowApi* | [**cowGetOrderDTOsHistorical**](docs/CowApi.md#cowGetOrderDTOsHistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
*CowApi* | [**cowGetOrdersHistorical**](docs/CowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
*CowApi* | [**cowGetSettlementDTOsHistorical**](docs/CowApi.md#cowGetSettlementDTOsHistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
*CowApi* | [**cowGetSettlementsHistorical**](docs/CowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
*CowApi* | [**cowGetTokenDTOsHistorical**](docs/CowApi.md#cowGetTokenDTOsHistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
*CowApi* | [**cowGetTokensHistorical**](docs/CowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
*CowApi* | [**cowGetTradeDTOsHistorical**](docs/CowApi.md#cowGetTradeDTOsHistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
*CowApi* | [**cowGetTradesHistorical**](docs/CowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
*CowApi* | [**cowGetUserDTOsHistorical**](docs/CowApi.md#cowGetUserDTOsHistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
*CowApi* | [**cowGetUsersHistorical**](docs/CowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)
*CurveApi* | [**curveGetAccountDTOsHistorical**](docs/CurveApi.md#curveGetAccountDTOsHistorical) | **GET** /dapps/curve/AccountDTOs/historical | AccountDTOs (historical) 🔥
*CurveApi* | [**curveGetAccountsHistorical**](docs/CurveApi.md#curveGetAccountsHistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical)
*CurveApi* | [**curveGetAddLiquidityEventDTOsHistorical**](docs/CurveApi.md#curveGetAddLiquidityEventDTOsHistorical) | **GET** /dapps/curve/AddLiquidityEventDTOs/historical | AddLiquidityEventDTOs (historical) 🔥
*CurveApi* | [**curveGetAddLiquidityEventsHistorical**](docs/CurveApi.md#curveGetAddLiquidityEventsHistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical)
*CurveApi* | [**curveGetAdminFeeChangeLogDTOsHistorical**](docs/CurveApi.md#curveGetAdminFeeChangeLogDTOsHistorical) | **GET** /dapps/curve/AdminFeeChangeLogDTOs/historical | AdminFeeChangeLogDTOs (historical) 🔥
*CurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](docs/CurveApi.md#curveGetAdminFeeChangeLogsHistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical)
*CurveApi* | [**curveGetAmplificationCoeffChangeLogDTOsHistorical**](docs/CurveApi.md#curveGetAmplificationCoeffChangeLogDTOsHistorical) | **GET** /dapps/curve/AmplificationCoeffChangeLogDTOs/historical | AmplificationCoeffChangeLogDTOs (historical) 🔥
*CurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](docs/CurveApi.md#curveGetAmplificationCoeffChangeLogsHistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical)
*CurveApi* | [**curveGetCoinDTOsHistorical**](docs/CurveApi.md#curveGetCoinDTOsHistorical) | **GET** /dapps/curve/CoinDTOs/historical | CoinDTOs (historical) 🔥
*CurveApi* | [**curveGetCoinsHistorical**](docs/CurveApi.md#curveGetCoinsHistorical) | **GET** /dapps/curve/coins/historical | Coins (historical)
*CurveApi* | [**curveGetContractDTOsHistorical**](docs/CurveApi.md#curveGetContractDTOsHistorical) | **GET** /dapps/curve/ContractDTOs/historical | ContractDTOs (historical) 🔥
*CurveApi* | [**curveGetContractVersionDTOsHistorical**](docs/CurveApi.md#curveGetContractVersionDTOsHistorical) | **GET** /dapps/curve/ContractVersionDTOs/historical | ContractVersionDTOs (historical) 🔥
*CurveApi* | [**curveGetContractsHistorical**](docs/CurveApi.md#curveGetContractsHistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical)
*CurveApi* | [**curveGetContractsVersionsHistorical**](docs/CurveApi.md#curveGetContractsVersionsHistorical) | **GET** /dapps/curve/contractsVersions/historical | ContractsVersions (historical)
*CurveApi* | [**curveGetDailyVolumeDTOsHistorical**](docs/CurveApi.md#curveGetDailyVolumeDTOsHistorical) | **GET** /dapps/curve/DailyVolumeDTOs/historical | DailyVolumeDTOs (historical) 🔥
*CurveApi* | [**curveGetDailyVolumesHistorical**](docs/CurveApi.md#curveGetDailyVolumesHistorical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical)
*CurveApi* | [**curveGetExchangeDTOsHistorical**](docs/CurveApi.md#curveGetExchangeDTOsHistorical) | **GET** /dapps/curve/ExchangeDTOs/historical | ExchangeDTOs (historical) 🔥
*CurveApi* | [**curveGetExchangesHistorical**](docs/CurveApi.md#curveGetExchangesHistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogDTOsHistorical**](docs/CurveApi.md#curveGetFeeChangeLogDTOsHistorical) | **GET** /dapps/curve/FeeChangeLogDTOs/historical | FeeChangeLogDTOs (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogsHistorical**](docs/CurveApi.md#curveGetFeeChangeLogsHistorical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical)
*CurveApi* | [**curveGetGaugeDTOsHistorical**](docs/CurveApi.md#curveGetGaugeDTOsHistorical) | **GET** /dapps/curve/GaugeDTOs/historical | GaugeDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeDepositDTOsHistorical**](docs/CurveApi.md#curveGetGaugeDepositDTOsHistorical) | **GET** /dapps/curve/GaugeDepositDTOs/historical | GaugeDepositDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeLiquidityDTOsHistorical**](docs/CurveApi.md#curveGetGaugeLiquidityDTOsHistorical) | **GET** /dapps/curve/GaugeLiquidityDTOs/historical | GaugeLiquidityDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeTotalWeightDTOsHistorical**](docs/CurveApi.md#curveGetGaugeTotalWeightDTOsHistorical) | **GET** /dapps/curve/GaugeTotalWeightDTOs/historical | GaugeTotalWeightDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeTypeDTOsHistorical**](docs/CurveApi.md#curveGetGaugeTypeDTOsHistorical) | **GET** /dapps/curve/GaugeTypeDTOs/historical | GaugeTypeDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeTypeWeightDTOsHistorical**](docs/CurveApi.md#curveGetGaugeTypeWeightDTOsHistorical) | **GET** /dapps/curve/GaugeTypeWeightDTOs/historical | GaugeTypeWeightDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightDTOsHistorical**](docs/CurveApi.md#curveGetGaugeWeightDTOsHistorical) | **GET** /dapps/curve/GaugeWeightDTOs/historical | GaugeWeightDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightVoteDTOsHistorical**](docs/CurveApi.md#curveGetGaugeWeightVoteDTOsHistorical) | **GET** /dapps/curve/GaugeWeightVoteDTOs/historical | GaugeWeightVoteDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeWithdrawDTOsHistorical**](docs/CurveApi.md#curveGetGaugeWithdrawDTOsHistorical) | **GET** /dapps/curve/GaugeWithdrawDTOs/historical | GaugeWithdrawDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugesDepositsHistorical**](docs/CurveApi.md#curveGetGaugesDepositsHistorical) | **GET** /dapps/curve/gaugesDeposits/historical | GaugesDeposits (historical)
*CurveApi* | [**curveGetGaugesHistorical**](docs/CurveApi.md#curveGetGaugesHistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical)
*CurveApi* | [**curveGetGaugesLiquidityHistorical**](docs/CurveApi.md#curveGetGaugesLiquidityHistorical) | **GET** /dapps/curve/gaugesLiquidity/historical | GaugesLiquidity (historical)
*CurveApi* | [**curveGetGaugesTotalWeightsHistorical**](docs/CurveApi.md#curveGetGaugesTotalWeightsHistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical | GaugesTotalWeights (historical)
*CurveApi* | [**curveGetGaugesTypesHistorical**](docs/CurveApi.md#curveGetGaugesTypesHistorical) | **GET** /dapps/curve/gaugesTypes/historical | GaugesTypes (historical)
*CurveApi* | [**curveGetGaugesTypesWeightsHistorical**](docs/CurveApi.md#curveGetGaugesTypesWeightsHistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical | GaugesTypesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsHistorical**](docs/CurveApi.md#curveGetGaugesWeightsHistorical) | **GET** /dapps/curve/gaugesWeights/historical | GaugesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsVotesHistorical**](docs/CurveApi.md#curveGetGaugesWeightsVotesHistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical | GaugesWeightsVotes (historical)
*CurveApi* | [**curveGetGaugesWithdrawHistorical**](docs/CurveApi.md#curveGetGaugesWithdrawHistorical) | **GET** /dapps/curve/gaugesWithdraws/historical | GaugesWithdraw (historical)
*CurveApi* | [**curveGetHourlyVolumeDTOsHistorical**](docs/CurveApi.md#curveGetHourlyVolumeDTOsHistorical) | **GET** /dapps/curve/HourlyVolumeDTOs/historical | HourlyVolumeDTOs (historical) 🔥
*CurveApi* | [**curveGetHourlyVolumesHistorical**](docs/CurveApi.md#curveGetHourlyVolumesHistorical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical)
*CurveApi* | [**curveGetLpTokenDTOsHistorical**](docs/CurveApi.md#curveGetLpTokenDTOsHistorical) | **GET** /dapps/curve/LpTokenDTOs/historical | LpTokenDTOs (historical) 🔥
*CurveApi* | [**curveGetLpTokensHistorical**](docs/CurveApi.md#curveGetLpTokensHistorical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical)
*CurveApi* | [**curveGetPoolDTOsHistorical**](docs/CurveApi.md#curveGetPoolDTOsHistorical) | **GET** /dapps/curve/PoolDTOs/historical | PoolDTOs (historical) 🔥
*CurveApi* | [**curveGetPoolsHistorical**](docs/CurveApi.md#curveGetPoolsHistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥
*CurveApi* | [**curveGetProposalDTOsHistorical**](docs/CurveApi.md#curveGetProposalDTOsHistorical) | **GET** /dapps/curve/ProposalDTOs/historical | ProposalDTOs (historical) 🔥
*CurveApi* | [**curveGetProposalVoteDTOsHistorical**](docs/CurveApi.md#curveGetProposalVoteDTOsHistorical) | **GET** /dapps/curve/ProposalVoteDTOs/historical | ProposalVoteDTOs (historical) 🔥
*CurveApi* | [**curveGetProposalsHistorical**](docs/CurveApi.md#curveGetProposalsHistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical)
*CurveApi* | [**curveGetProposalsVotesHistorical**](docs/CurveApi.md#curveGetProposalsVotesHistorical) | **GET** /dapps/curve/proposalsVotes/historical | ProposalsVotes (historical)
*CurveApi* | [**curveGetRemoveLiquidityEventDTOsHistorical**](docs/CurveApi.md#curveGetRemoveLiquidityEventDTOsHistorical) | **GET** /dapps/curve/RemoveLiquidityEventDTOs/historical | RemoveLiquidityEventDTOs (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](docs/CurveApi.md#curveGetRemoveLiquidityEventsHistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical)
*CurveApi* | [**curveGetRemoveLiquidityOneEventDTOsHistorical**](docs/CurveApi.md#curveGetRemoveLiquidityOneEventDTOsHistorical) | **GET** /dapps/curve/RemoveLiquidityOneEventDTOs/historical | RemoveLiquidityOneEventDTOs (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](docs/CurveApi.md#curveGetRemoveLiquidityOneEventsHistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical)
*CurveApi* | [**curveGetSystemStateDTOsHistorical**](docs/CurveApi.md#curveGetSystemStateDTOsHistorical) | **GET** /dapps/curve/SystemStateDTOs/historical | SystemStateDTOs (historical) 🔥
*CurveApi* | [**curveGetSystemStatesHistorical**](docs/CurveApi.md#curveGetSystemStatesHistorical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical)
*CurveApi* | [**curveGetTokenDTOsHistorical**](docs/CurveApi.md#curveGetTokenDTOsHistorical) | **GET** /dapps/curve/TokenDTOs/historical | TokenDTOs (historical) 🔥
*CurveApi* | [**curveGetTokensHistorical**](docs/CurveApi.md#curveGetTokensHistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventDTOsHistorical**](docs/CurveApi.md#curveGetTransferOwnershipEventDTOsHistorical) | **GET** /dapps/curve/TransferOwnershipEventDTOs/historical | TransferOwnershipEventDTOs (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventsHistorical**](docs/CurveApi.md#curveGetTransferOwnershipEventsHistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical)
*CurveApi* | [**curveGetUnderlyingCoinDTOsHistorical**](docs/CurveApi.md#curveGetUnderlyingCoinDTOsHistorical) | **GET** /dapps/curve/UnderlyingCoinDTOs/historical | UnderlyingCoinDTOs (historical) 🔥
*CurveApi* | [**curveGetUnderlyingCoinsHistorical**](docs/CurveApi.md#curveGetUnderlyingCoinsHistorical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical)
*CurveApi* | [**curveGetVotingAppDTOsHistorical**](docs/CurveApi.md#curveGetVotingAppDTOsHistorical) | **GET** /dapps/curve/VotingAppDTOs/historical | VotingAppDTOs (historical) 🔥
*CurveApi* | [**curveGetVotingAppsHistorical**](docs/CurveApi.md#curveGetVotingAppsHistorical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical)
*CurveApi* | [**curveGetWeeklyVolumeDTOsHistorical**](docs/CurveApi.md#curveGetWeeklyVolumeDTOsHistorical) | **GET** /dapps/curve/WeeklyVolumeDTOs/historical | WeeklyVolumeDTOs (historical) 🔥
*CurveApi* | [**curveGetWeeklyVolumesHistorical**](docs/CurveApi.md#curveGetWeeklyVolumesHistorical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical)
*DexApi* | [**dexGetBatchDTOsHistorical**](docs/DexApi.md#dexGetBatchDTOsHistorical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
*DexApi* | [**dexGetBatchesHistorical**](docs/DexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
*DexApi* | [**dexGetDepositDTOsHistorical**](docs/DexApi.md#dexGetDepositDTOsHistorical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
*DexApi* | [**dexGetDepositsHistorical**](docs/DexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
*DexApi* | [**dexGetOrderDTOsHistorical**](docs/DexApi.md#dexGetOrderDTOsHistorical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
*DexApi* | [**dexGetOrdersHistorical**](docs/DexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
*DexApi* | [**dexGetPriceDTOsHistorical**](docs/DexApi.md#dexGetPriceDTOsHistorical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
*DexApi* | [**dexGetPricesHistorical**](docs/DexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
*DexApi* | [**dexGetSolutionDTOsHistorical**](docs/DexApi.md#dexGetSolutionDTOsHistorical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
*DexApi* | [**dexGetSolutionsHistorical**](docs/DexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
*DexApi* | [**dexGetStatsDTOsHistorical**](docs/DexApi.md#dexGetStatsDTOsHistorical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
*DexApi* | [**dexGetStatsHistorical**](docs/DexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
*DexApi* | [**dexGetTokenDTOsHistorical**](docs/DexApi.md#dexGetTokenDTOsHistorical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
*DexApi* | [**dexGetTokensHistorical**](docs/DexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
*DexApi* | [**dexGetTradeDTOsHistorical**](docs/DexApi.md#dexGetTradeDTOsHistorical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
*DexApi* | [**dexGetTradesHistorical**](docs/DexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
*DexApi* | [**dexGetUserDTOsHistorical**](docs/DexApi.md#dexGetUserDTOsHistorical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
*DexApi* | [**dexGetUsersHistorical**](docs/DexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical)
*DexApi* | [**dexGetWithdrawDTOsHistorical**](docs/DexApi.md#dexGetWithdrawDTOsHistorical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
*DexApi* | [**dexGetWithdrawRequestDTOsHistorical**](docs/DexApi.md#dexGetWithdrawRequestDTOsHistorical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
*DexApi* | [**dexGetWithdrawsHistorical**](docs/DexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
*DexApi* | [**dexGetWithdrawsRequestsHistorical**](docs/DexApi.md#dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)
*SushiswapApi* | [**curveGetExchangesCurrent**](docs/SushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*SushiswapApi* | [**dexGetTradesCurrent**](docs/SushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*SushiswapApi* | [**sushiswapGetBundleDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetBundleDTOsHistorical) | **GET** /dapps/sushiswap/BundleDTOs/historical | BundleDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetBundlesHistorical**](docs/SushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical)
*SushiswapApi* | [**sushiswapGetBurnDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetBurnDTOsHistorical) | **GET** /dapps/sushiswap/BurnDTOs/historical | BurnDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetBurnsHistorical**](docs/SushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical)
*SushiswapApi* | [**sushiswapGetDayDataDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetDayDataDTOsHistorical) | **GET** /dapps/sushiswap/DayDataDTOs/historical | DayDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetDayDataHistorical**](docs/SushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | DayData (historical)
*SushiswapApi* | [**sushiswapGetFactoryDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetFactoryDTOsHistorical) | **GET** /dapps/sushiswap/FactoryDTOs/historical | FactoryDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetFactoryHistorical**](docs/SushiswapApi.md#sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | Factory (historical)
*SushiswapApi* | [**sushiswapGetHourDataDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetHourDataDTOsHistorical) | **GET** /dapps/sushiswap/HourDataDTOs/historical | HourDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetHourDataHistorical**](docs/SushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | HourData (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetLiquidityPositionDTOsHistorical) | **GET** /dapps/sushiswap/LiquidityPositionDTOs/historical | LiquidityPositionDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionHistorical**](docs/SushiswapApi.md#sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | LiquidityPosition (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetLiquidityPositionSnapshotDTOsHistorical) | **GET** /dapps/sushiswap/LiquidityPositionSnapshotDTOs/historical | LiquidityPositionSnapshotDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotHistorical**](docs/SushiswapApi.md#sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshot (historical)
*SushiswapApi* | [**sushiswapGetMintDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetMintDTOsHistorical) | **GET** /dapps/sushiswap/MintDTOs/historical | MintDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetMintsHistorical**](docs/SushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical)
*SushiswapApi* | [**sushiswapGetPairDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetPairDTOsHistorical) | **GET** /dapps/sushiswap/PairDTOs/historical | PairDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairDayDataDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetPairDayDataDTOsHistorical) | **GET** /dapps/sushiswap/PairDayDataDTOs/historical | PairDayDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairHourDataDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetPairHourDataDTOsHistorical) | **GET** /dapps/sushiswap/PairHourDataDTOs/historical | PairHourDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsCurrent**](docs/SushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*SushiswapApi* | [**sushiswapGetPoolsDayDataHistorical**](docs/SushiswapApi.md#sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | PoolsDayData (historical)
*SushiswapApi* | [**sushiswapGetPoolsHistorical**](docs/SushiswapApi.md#sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | Pools (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsHourDataHistorical**](docs/SushiswapApi.md#sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | PoolsHourData (historical)
*SushiswapApi* | [**sushiswapGetSwapDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetSwapDTOsHistorical) | **GET** /dapps/sushiswap/SwapDTOs/historical | SwapDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetSwapsCurrent**](docs/SushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsHistorical**](docs/SushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokenDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetTokenDTOsHistorical) | **GET** /dapps/sushiswap/TokenDTOs/historical | TokenDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokenDayDataDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetTokenDayDataDTOsHistorical) | **GET** /dapps/sushiswap/TokenDayDataDTOs/historical | TokenDayDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokensCurrent**](docs/SushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*SushiswapApi* | [**sushiswapGetTokensDayDataHistorical**](docs/SushiswapApi.md#sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | TokensDayData (historical)
*SushiswapApi* | [**sushiswapGetTokensHistorical**](docs/SushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetTransactionDTOsHistorical) | **GET** /dapps/sushiswap/TransactionDTOs/historical | TransactionDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionsHistorical**](docs/SushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical)
*SushiswapApi* | [**sushiswapGetUserDTOsHistorical**](docs/SushiswapApi.md#sushiswapGetUserDTOsHistorical) | **GET** /dapps/sushiswap/UserDTOs/historical | UserDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetUsersHistorical**](docs/SushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical)
*UniswapV2Api* | [**uniswapV2GetBundleV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetBundleV2DTOsHistorical) | **GET** /dapps/uniswapv2/BundleV2DTOs/historical | BundleV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBundlesHistorical**](docs/UniswapV2Api.md#uniswapV2GetBundlesHistorical) | **GET** /dapps/uniswapv2/bundles/historical | Bundles (historical)
*UniswapV2Api* | [**uniswapV2GetBurnV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetBurnV2DTOsHistorical) | **GET** /dapps/uniswapv2/BurnV2DTOs/historical | BurnV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBurnsHistorical**](docs/UniswapV2Api.md#uniswapV2GetBurnsHistorical) | **GET** /dapps/uniswapv2/burns/historical | Burns (historical)
*UniswapV2Api* | [**uniswapV2GetDayDataHistorical**](docs/UniswapV2Api.md#uniswapV2GetDayDataHistorical) | **GET** /dapps/uniswapv2/dayData/historical | DayData (historical)
*UniswapV2Api* | [**uniswapV2GetFactoryHistorical**](docs/UniswapV2Api.md#uniswapV2GetFactoryHistorical) | **GET** /dapps/uniswapv2/factory/historical | Factory (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical) | **GET** /dapps/uniswapv2/LiquidityPositionSnapshotV2DTOs/historical | LiquidityPositionSnapshotV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetLiquidityPositionV2DTOsHistorical) | **GET** /dapps/uniswapv2/LiquidityPositionV2DTOs/historical | LiquidityPositionV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsHistorical**](docs/UniswapV2Api.md#uniswapV2GetLiquidityPositionsHistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](docs/UniswapV2Api.md#uniswapV2GetLiquidityPositionsSnapshotsHistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | LiquidityPositionsSnapshots (historical)
*UniswapV2Api* | [**uniswapV2GetMintV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetMintV2DTOsHistorical) | **GET** /dapps/uniswapv2/MintV2DTOs/historical | MintV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetMintsHistorical**](docs/UniswapV2Api.md#uniswapV2GetMintsHistorical) | **GET** /dapps/uniswapv2/mints/historical | Mints (historical)
*UniswapV2Api* | [**uniswapV2GetPairDayDataV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetPairDayDataV2DTOsHistorical) | **GET** /dapps/uniswapv2/PairDayDataV2DTOs/historical | PairDayDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairHourDataV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetPairHourDataV2DTOsHistorical) | **GET** /dapps/uniswapv2/PairHourDataV2DTOs/historical | PairHourDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetPairV2DTOsHistorical) | **GET** /dapps/uniswapv2/PairV2DTOs/historical | PairV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsCurrent**](docs/UniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsDayDataHistorical**](docs/UniswapV2Api.md#uniswapV2GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical | PoolsDayData (historical)
*UniswapV2Api* | [**uniswapV2GetPoolsHistorical**](docs/UniswapV2Api.md#uniswapV2GetPoolsHistorical) | **GET** /dapps/uniswapv2/pools/historical | Pools (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsHourDataHistorical**](docs/UniswapV2Api.md#uniswapV2GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical | PoolsHourData (historical)
*UniswapV2Api* | [**uniswapV2GetSwapV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetSwapV2DTOsHistorical) | **GET** /dapps/uniswapv2/SwapV2DTOs/historical | SwapV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsCurrent**](docs/UniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsHistorical**](docs/UniswapV2Api.md#uniswapV2GetSwapsHistorical) | **GET** /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenDayDataV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetTokenDayDataV2DTOsHistorical) | **GET** /dapps/uniswapv2/TokenDayDataV2DTOs/historical | TokenDayDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetTokenV2DTOsHistorical) | **GET** /dapps/uniswapv2/TokenV2DTOs/historical | TokenV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensCurrent**](docs/UniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensDayDataHistorical**](docs/UniswapV2Api.md#uniswapV2GetTokensDayDataHistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical | TokensDayData (historical)
*UniswapV2Api* | [**uniswapV2GetTokensHistorical**](docs/UniswapV2Api.md#uniswapV2GetTokensHistorical) | **GET** /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetTransactionV2DTOsHistorical) | **GET** /dapps/uniswapv2/TransactionV2DTOs/historical | TransactionV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionsHistorical**](docs/UniswapV2Api.md#uniswapV2GetTransactionsHistorical) | **GET** /dapps/uniswapv2/transactions/historical | Transactions (historical)
*UniswapV2Api* | [**uniswapV2GetUniswapDayDataV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetUniswapDayDataV2DTOsHistorical) | **GET** /dapps/uniswapv2/UniswapDayDataV2DTOs/historical | UniswapDayDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUniswapFactoryV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetUniswapFactoryV2DTOsHistorical) | **GET** /dapps/uniswapv2/UniswapFactoryV2DTOs/historical | UniswapFactoryV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUserV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapV2GetUserV2DTOsHistorical) | **GET** /dapps/uniswapv2/UserV2DTOs/historical | UserV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUsersHistorical**](docs/UniswapV2Api.md#uniswapV2GetUsersHistorical) | **GET** /dapps/uniswapv2/users/historical | Users (historical)
*UniswapV3Api* | [**uniswapV3GetBundleV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetBundleV3DTOsHistorical) | **GET** /dapps/uniswapv3/BundleV3DTOs/historical | BundleV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBundlesCurrent**](docs/UniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*UniswapV3Api* | [**uniswapV3GetBundlesHistorical**](docs/UniswapV3Api.md#uniswapV3GetBundlesHistorical) | **GET** /dapps/uniswapv3/bundles/historical | Bundles (historical)
*UniswapV3Api* | [**uniswapV3GetBurnV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetBurnV3DTOsHistorical) | **GET** /dapps/uniswapv3/BurnV3DTOs/historical | BurnV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBurnsCurrent**](docs/UniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*UniswapV3Api* | [**uniswapV3GetBurnsHistorical**](docs/UniswapV3Api.md#uniswapV3GetBurnsHistorical) | **GET** /dapps/uniswapv3/burns/historical | Burns (historical)
*UniswapV3Api* | [**uniswapV3GetDayDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*UniswapV3Api* | [**uniswapV3GetDayDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetDayDataHistorical) | **GET** /dapps/uniswapv3/dayData/historical | DayData (historical)
*UniswapV3Api* | [**uniswapV3GetFactoryCurrent**](docs/UniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*UniswapV3Api* | [**uniswapV3GetFactoryHistorical**](docs/UniswapV3Api.md#uniswapV3GetFactoryHistorical) | **GET** /dapps/uniswapv3/factory/historical | Factory (historical)
*UniswapV3Api* | [**uniswapV3GetFactoryV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetFactoryV3DTOsHistorical) | **GET** /dapps/uniswapv3/FactoryV3DTOs/historical | FactoryV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetMintV3DTOsHistorical) | **GET** /dapps/uniswapv3/MintV3DTOs/historical | MintV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintsCurrent**](docs/UniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*UniswapV3Api* | [**uniswapV3GetMintsHistorical**](docs/UniswapV3Api.md#uniswapV3GetMintsHistorical) | **GET** /dapps/uniswapv3/mints/historical | Mints (historical)
*UniswapV3Api* | [**uniswapV3GetPoolDayDataV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPoolDayDataV3DTOsHistorical) | **GET** /dapps/uniswapv3/PoolDayDataV3DTOs/historical | PoolDayDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolHourDataV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPoolHourDataV3DTOsHistorical) | **GET** /dapps/uniswapv3/PoolHourDataV3DTOs/historical | PoolHourDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPoolV3DTOsHistorical) | **GET** /dapps/uniswapv3/PoolV3DTOs/historical | PoolV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsCurrent**](docs/UniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical | PoolsDayData (historical)
*UniswapV3Api* | [**uniswapV3GetPoolsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPoolsHistorical) | **GET** /dapps/uniswapv3/pools/historical | Pools (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical | PoolsHourData (historical)
*UniswapV3Api* | [**uniswapV3GetPositionSnapshotV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPositionSnapshotV3DTOsHistorical) | **GET** /dapps/uniswapv3/PositionSnapshotV3DTOs/historical | PositionSnapshotV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPositionV3DTOsHistorical) | **GET** /dapps/uniswapv3/PositionV3DTOs/historical | PositionV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionsCurrent**](docs/UniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*UniswapV3Api* | [**uniswapV3GetPositionsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPositionsHistorical) | **GET** /dapps/uniswapv3/positions/historical | Positions (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnaphotsHistorical**](docs/UniswapV3Api.md#uniswapV3GetPositionsSnaphotsHistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical | PositionsSnaphots (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](docs/UniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*UniswapV3Api* | [**uniswapV3GetSwapV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetSwapV3DTOsHistorical) | **GET** /dapps/uniswapv3/SwapV3DTOs/historical | SwapV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsCurrent**](docs/UniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsHistorical**](docs/UniswapV3Api.md#uniswapV3GetSwapsHistorical) | **GET** /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTickDayDataV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetTickDayDataV3DTOsHistorical) | **GET** /dapps/uniswapv3/TickDayDataV3DTOs/historical | TickDayDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTickV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetTickV3DTOsHistorical) | **GET** /dapps/uniswapv3/TickV3DTOs/historical | TickV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTicksCurrent**](docs/UniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetTicksDayDataHistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical | TicksDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTicksHistorical**](docs/UniswapV3Api.md#uniswapV3GetTicksHistorical) | **GET** /dapps/uniswapv3/ticks/historical | Ticks (historical)
*UniswapV3Api* | [**uniswapV3GetTokenHourDataV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetTokenHourDataV3DTOsHistorical) | **GET** /dapps/uniswapv3/TokenHourDataV3DTOs/historical | TokenHourDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetTokenV3DTOsHistorical) | **GET** /dapps/uniswapv3/TokenV3DTOs/historical | TokenV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3DayDataDTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetTokenV3DayDataDTOsHistorical) | **GET** /dapps/uniswapv3/TokenV3DayDataDTOs/historical | TokenV3DayDataDTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensCurrent**](docs/UniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*UniswapV3Api* | [**uniswapV3GetTokensDayDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetTokensDayDataHistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical | TokensDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTokensHistorical**](docs/UniswapV3Api.md#uniswapV3GetTokensHistorical) | **GET** /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](docs/UniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
*UniswapV3Api* | [**uniswapV3GetTokensHourDataHistorical**](docs/UniswapV3Api.md#uniswapV3GetTokensHourDataHistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical | TokensHourData (historical)
*UniswapV3Api* | [**uniswapV3GetTransactionV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetTransactionV3DTOsHistorical) | **GET** /dapps/uniswapv3/TransactionV3DTOs/historical | TransactionV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTransactionsHistorical**](docs/UniswapV3Api.md#uniswapV3GetTransactionsHistorical) | **GET** /dapps/uniswapv3/transactions/historical | Transactions (historical)
*UniswapV3Api* | [**uniswapV3GetUniswapDayDataV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapV3GetUniswapDayDataV3DTOsHistorical) | **GET** /dapps/uniswapv3/UniswapDayDataV3DTOs/historical | UniswapDayDataV3DTOs (historical) 🔥


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

