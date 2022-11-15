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
    'poolId' => 'null'
};

try {
    // cross your fingers
    List<OASCowOrderDTO> result = api.cowGetOrderDTOsHistorical(params);
    System.debug(result);
} catch (OAS.ApiException e) {
    // ...handle your exceptions
}
```

## Documentation for API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OASCowApi* | [**cowGetOrderDTOsHistorical**](OASCowApi.md#cowGetOrderDTOsHistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
*OASCowApi* | [**cowGetOrdersHistorical**](OASCowApi.md#cowGetOrdersHistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
*OASCowApi* | [**cowGetSettlementDTOsHistorical**](OASCowApi.md#cowGetSettlementDTOsHistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
*OASCowApi* | [**cowGetSettlementsHistorical**](OASCowApi.md#cowGetSettlementsHistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
*OASCowApi* | [**cowGetTokenDTOsHistorical**](OASCowApi.md#cowGetTokenDTOsHistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
*OASCowApi* | [**cowGetTokensHistorical**](OASCowApi.md#cowGetTokensHistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
*OASCowApi* | [**cowGetTradeDTOsHistorical**](OASCowApi.md#cowGetTradeDTOsHistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
*OASCowApi* | [**cowGetTradesHistorical**](OASCowApi.md#cowGetTradesHistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
*OASCowApi* | [**cowGetUserDTOsHistorical**](OASCowApi.md#cowGetUserDTOsHistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
*OASCowApi* | [**cowGetUsersHistorical**](OASCowApi.md#cowGetUsersHistorical) | **GET** /dapps/cow/users/historical | Users (historical)
*OASCurveApi* | [**curveGetAccountDTOsHistorical**](OASCurveApi.md#curveGetAccountDTOsHistorical) | **GET** /dapps/curve/AccountDTOs/historical | AccountDTOs (historical) 🔥
*OASCurveApi* | [**curveGetAccountsHistorical**](OASCurveApi.md#curveGetAccountsHistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical)
*OASCurveApi* | [**curveGetAddLiquidityEventDTOsHistorical**](OASCurveApi.md#curveGetAddLiquidityEventDTOsHistorical) | **GET** /dapps/curve/AddLiquidityEventDTOs/historical | AddLiquidityEventDTOs (historical) 🔥
*OASCurveApi* | [**curveGetAddLiquidityEventsHistorical**](OASCurveApi.md#curveGetAddLiquidityEventsHistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical)
*OASCurveApi* | [**curveGetAdminFeeChangeLogDTOsHistorical**](OASCurveApi.md#curveGetAdminFeeChangeLogDTOsHistorical) | **GET** /dapps/curve/AdminFeeChangeLogDTOs/historical | AdminFeeChangeLogDTOs (historical) 🔥
*OASCurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](OASCurveApi.md#curveGetAdminFeeChangeLogsHistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical)
*OASCurveApi* | [**curveGetAmplificationCoeffChangeLogDTOsHistorical**](OASCurveApi.md#curveGetAmplificationCoeffChangeLogDTOsHistorical) | **GET** /dapps/curve/AmplificationCoeffChangeLogDTOs/historical | AmplificationCoeffChangeLogDTOs (historical) 🔥
*OASCurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](OASCurveApi.md#curveGetAmplificationCoeffChangeLogsHistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical)
*OASCurveApi* | [**curveGetCoinDTOsHistorical**](OASCurveApi.md#curveGetCoinDTOsHistorical) | **GET** /dapps/curve/CoinDTOs/historical | CoinDTOs (historical) 🔥
*OASCurveApi* | [**curveGetCoinsHistorical**](OASCurveApi.md#curveGetCoinsHistorical) | **GET** /dapps/curve/coins/historical | Coins (historical)
*OASCurveApi* | [**curveGetContractDTOsHistorical**](OASCurveApi.md#curveGetContractDTOsHistorical) | **GET** /dapps/curve/ContractDTOs/historical | ContractDTOs (historical) 🔥
*OASCurveApi* | [**curveGetContractVersionDTOsHistorical**](OASCurveApi.md#curveGetContractVersionDTOsHistorical) | **GET** /dapps/curve/ContractVersionDTOs/historical | ContractVersionDTOs (historical) 🔥
*OASCurveApi* | [**curveGetContractsHistorical**](OASCurveApi.md#curveGetContractsHistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical)
*OASCurveApi* | [**curveGetContractsVersionsHistorical**](OASCurveApi.md#curveGetContractsVersionsHistorical) | **GET** /dapps/curve/contractsVersions/historical | ContractsVersions (historical)
*OASCurveApi* | [**curveGetDailyVolumeDTOsHistorical**](OASCurveApi.md#curveGetDailyVolumeDTOsHistorical) | **GET** /dapps/curve/DailyVolumeDTOs/historical | DailyVolumeDTOs (historical) 🔥
*OASCurveApi* | [**curveGetDailyVolumesHistorical**](OASCurveApi.md#curveGetDailyVolumesHistorical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical)
*OASCurveApi* | [**curveGetExchangeDTOsHistorical**](OASCurveApi.md#curveGetExchangeDTOsHistorical) | **GET** /dapps/curve/ExchangeDTOs/historical | ExchangeDTOs (historical) 🔥
*OASCurveApi* | [**curveGetExchangesHistorical**](OASCurveApi.md#curveGetExchangesHistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥
*OASCurveApi* | [**curveGetFeeChangeLogDTOsHistorical**](OASCurveApi.md#curveGetFeeChangeLogDTOsHistorical) | **GET** /dapps/curve/FeeChangeLogDTOs/historical | FeeChangeLogDTOs (historical) 🔥
*OASCurveApi* | [**curveGetFeeChangeLogsHistorical**](OASCurveApi.md#curveGetFeeChangeLogsHistorical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical)
*OASCurveApi* | [**curveGetGaugeDTOsHistorical**](OASCurveApi.md#curveGetGaugeDTOsHistorical) | **GET** /dapps/curve/GaugeDTOs/historical | GaugeDTOs (historical) 🔥
*OASCurveApi* | [**curveGetGaugeDepositDTOsHistorical**](OASCurveApi.md#curveGetGaugeDepositDTOsHistorical) | **GET** /dapps/curve/GaugeDepositDTOs/historical | GaugeDepositDTOs (historical) 🔥
*OASCurveApi* | [**curveGetGaugeLiquidityDTOsHistorical**](OASCurveApi.md#curveGetGaugeLiquidityDTOsHistorical) | **GET** /dapps/curve/GaugeLiquidityDTOs/historical | GaugeLiquidityDTOs (historical) 🔥
*OASCurveApi* | [**curveGetGaugeTotalWeightDTOsHistorical**](OASCurveApi.md#curveGetGaugeTotalWeightDTOsHistorical) | **GET** /dapps/curve/GaugeTotalWeightDTOs/historical | GaugeTotalWeightDTOs (historical) 🔥
*OASCurveApi* | [**curveGetGaugeTypeDTOsHistorical**](OASCurveApi.md#curveGetGaugeTypeDTOsHistorical) | **GET** /dapps/curve/GaugeTypeDTOs/historical | GaugeTypeDTOs (historical) 🔥
*OASCurveApi* | [**curveGetGaugeTypeWeightDTOsHistorical**](OASCurveApi.md#curveGetGaugeTypeWeightDTOsHistorical) | **GET** /dapps/curve/GaugeTypeWeightDTOs/historical | GaugeTypeWeightDTOs (historical) 🔥
*OASCurveApi* | [**curveGetGaugeWeightDTOsHistorical**](OASCurveApi.md#curveGetGaugeWeightDTOsHistorical) | **GET** /dapps/curve/GaugeWeightDTOs/historical | GaugeWeightDTOs (historical) 🔥
*OASCurveApi* | [**curveGetGaugeWeightVoteDTOsHistorical**](OASCurveApi.md#curveGetGaugeWeightVoteDTOsHistorical) | **GET** /dapps/curve/GaugeWeightVoteDTOs/historical | GaugeWeightVoteDTOs (historical) 🔥
*OASCurveApi* | [**curveGetGaugeWithdrawDTOsHistorical**](OASCurveApi.md#curveGetGaugeWithdrawDTOsHistorical) | **GET** /dapps/curve/GaugeWithdrawDTOs/historical | GaugeWithdrawDTOs (historical) 🔥
*OASCurveApi* | [**curveGetGaugesDepositsHistorical**](OASCurveApi.md#curveGetGaugesDepositsHistorical) | **GET** /dapps/curve/gaugesDeposits/historical | GaugesDeposits (historical)
*OASCurveApi* | [**curveGetGaugesHistorical**](OASCurveApi.md#curveGetGaugesHistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical)
*OASCurveApi* | [**curveGetGaugesLiquidityHistorical**](OASCurveApi.md#curveGetGaugesLiquidityHistorical) | **GET** /dapps/curve/gaugesLiquidity/historical | GaugesLiquidity (historical)
*OASCurveApi* | [**curveGetGaugesTotalWeightsHistorical**](OASCurveApi.md#curveGetGaugesTotalWeightsHistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical | GaugesTotalWeights (historical)
*OASCurveApi* | [**curveGetGaugesTypesHistorical**](OASCurveApi.md#curveGetGaugesTypesHistorical) | **GET** /dapps/curve/gaugesTypes/historical | GaugesTypes (historical)
*OASCurveApi* | [**curveGetGaugesTypesWeightsHistorical**](OASCurveApi.md#curveGetGaugesTypesWeightsHistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical | GaugesTypesWeights (historical)
*OASCurveApi* | [**curveGetGaugesWeightsHistorical**](OASCurveApi.md#curveGetGaugesWeightsHistorical) | **GET** /dapps/curve/gaugesWeights/historical | GaugesWeights (historical)
*OASCurveApi* | [**curveGetGaugesWeightsVotesHistorical**](OASCurveApi.md#curveGetGaugesWeightsVotesHistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical | GaugesWeightsVotes (historical)
*OASCurveApi* | [**curveGetGaugesWithdrawHistorical**](OASCurveApi.md#curveGetGaugesWithdrawHistorical) | **GET** /dapps/curve/gaugesWithdraws/historical | GaugesWithdraw (historical)
*OASCurveApi* | [**curveGetHourlyVolumeDTOsHistorical**](OASCurveApi.md#curveGetHourlyVolumeDTOsHistorical) | **GET** /dapps/curve/HourlyVolumeDTOs/historical | HourlyVolumeDTOs (historical) 🔥
*OASCurveApi* | [**curveGetHourlyVolumesHistorical**](OASCurveApi.md#curveGetHourlyVolumesHistorical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical)
*OASCurveApi* | [**curveGetLpTokenDTOsHistorical**](OASCurveApi.md#curveGetLpTokenDTOsHistorical) | **GET** /dapps/curve/LpTokenDTOs/historical | LpTokenDTOs (historical) 🔥
*OASCurveApi* | [**curveGetLpTokensHistorical**](OASCurveApi.md#curveGetLpTokensHistorical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical)
*OASCurveApi* | [**curveGetPoolDTOsHistorical**](OASCurveApi.md#curveGetPoolDTOsHistorical) | **GET** /dapps/curve/PoolDTOs/historical | PoolDTOs (historical) 🔥
*OASCurveApi* | [**curveGetPoolsHistorical**](OASCurveApi.md#curveGetPoolsHistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥
*OASCurveApi* | [**curveGetProposalDTOsHistorical**](OASCurveApi.md#curveGetProposalDTOsHistorical) | **GET** /dapps/curve/ProposalDTOs/historical | ProposalDTOs (historical) 🔥
*OASCurveApi* | [**curveGetProposalVoteDTOsHistorical**](OASCurveApi.md#curveGetProposalVoteDTOsHistorical) | **GET** /dapps/curve/ProposalVoteDTOs/historical | ProposalVoteDTOs (historical) 🔥
*OASCurveApi* | [**curveGetProposalsHistorical**](OASCurveApi.md#curveGetProposalsHistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical)
*OASCurveApi* | [**curveGetProposalsVotesHistorical**](OASCurveApi.md#curveGetProposalsVotesHistorical) | **GET** /dapps/curve/proposalsVotes/historical | ProposalsVotes (historical)
*OASCurveApi* | [**curveGetRemoveLiquidityEventDTOsHistorical**](OASCurveApi.md#curveGetRemoveLiquidityEventDTOsHistorical) | **GET** /dapps/curve/RemoveLiquidityEventDTOs/historical | RemoveLiquidityEventDTOs (historical) 🔥
*OASCurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](OASCurveApi.md#curveGetRemoveLiquidityEventsHistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical)
*OASCurveApi* | [**curveGetRemoveLiquidityOneEventDTOsHistorical**](OASCurveApi.md#curveGetRemoveLiquidityOneEventDTOsHistorical) | **GET** /dapps/curve/RemoveLiquidityOneEventDTOs/historical | RemoveLiquidityOneEventDTOs (historical) 🔥
*OASCurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](OASCurveApi.md#curveGetRemoveLiquidityOneEventsHistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical)
*OASCurveApi* | [**curveGetSystemStateDTOsHistorical**](OASCurveApi.md#curveGetSystemStateDTOsHistorical) | **GET** /dapps/curve/SystemStateDTOs/historical | SystemStateDTOs (historical) 🔥
*OASCurveApi* | [**curveGetSystemStatesHistorical**](OASCurveApi.md#curveGetSystemStatesHistorical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical)
*OASCurveApi* | [**curveGetTokenDTOsHistorical**](OASCurveApi.md#curveGetTokenDTOsHistorical) | **GET** /dapps/curve/TokenDTOs/historical | TokenDTOs (historical) 🔥
*OASCurveApi* | [**curveGetTokensHistorical**](OASCurveApi.md#curveGetTokensHistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥
*OASCurveApi* | [**curveGetTransferOwnershipEventDTOsHistorical**](OASCurveApi.md#curveGetTransferOwnershipEventDTOsHistorical) | **GET** /dapps/curve/TransferOwnershipEventDTOs/historical | TransferOwnershipEventDTOs (historical) 🔥
*OASCurveApi* | [**curveGetTransferOwnershipEventsHistorical**](OASCurveApi.md#curveGetTransferOwnershipEventsHistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical)
*OASCurveApi* | [**curveGetUnderlyingCoinDTOsHistorical**](OASCurveApi.md#curveGetUnderlyingCoinDTOsHistorical) | **GET** /dapps/curve/UnderlyingCoinDTOs/historical | UnderlyingCoinDTOs (historical) 🔥
*OASCurveApi* | [**curveGetUnderlyingCoinsHistorical**](OASCurveApi.md#curveGetUnderlyingCoinsHistorical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical)
*OASCurveApi* | [**curveGetVotingAppDTOsHistorical**](OASCurveApi.md#curveGetVotingAppDTOsHistorical) | **GET** /dapps/curve/VotingAppDTOs/historical | VotingAppDTOs (historical) 🔥
*OASCurveApi* | [**curveGetVotingAppsHistorical**](OASCurveApi.md#curveGetVotingAppsHistorical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical)
*OASCurveApi* | [**curveGetWeeklyVolumeDTOsHistorical**](OASCurveApi.md#curveGetWeeklyVolumeDTOsHistorical) | **GET** /dapps/curve/WeeklyVolumeDTOs/historical | WeeklyVolumeDTOs (historical) 🔥
*OASCurveApi* | [**curveGetWeeklyVolumesHistorical**](OASCurveApi.md#curveGetWeeklyVolumesHistorical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical)
*OASDexApi* | [**dexGetBatchDTOsHistorical**](OASDexApi.md#dexGetBatchDTOsHistorical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
*OASDexApi* | [**dexGetBatchesHistorical**](OASDexApi.md#dexGetBatchesHistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
*OASDexApi* | [**dexGetDepositDTOsHistorical**](OASDexApi.md#dexGetDepositDTOsHistorical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
*OASDexApi* | [**dexGetDepositsHistorical**](OASDexApi.md#dexGetDepositsHistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
*OASDexApi* | [**dexGetOrderDTOsHistorical**](OASDexApi.md#dexGetOrderDTOsHistorical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
*OASDexApi* | [**dexGetOrdersHistorical**](OASDexApi.md#dexGetOrdersHistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
*OASDexApi* | [**dexGetPriceDTOsHistorical**](OASDexApi.md#dexGetPriceDTOsHistorical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
*OASDexApi* | [**dexGetPricesHistorical**](OASDexApi.md#dexGetPricesHistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
*OASDexApi* | [**dexGetSolutionDTOsHistorical**](OASDexApi.md#dexGetSolutionDTOsHistorical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
*OASDexApi* | [**dexGetSolutionsHistorical**](OASDexApi.md#dexGetSolutionsHistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
*OASDexApi* | [**dexGetStatsDTOsHistorical**](OASDexApi.md#dexGetStatsDTOsHistorical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
*OASDexApi* | [**dexGetStatsHistorical**](OASDexApi.md#dexGetStatsHistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
*OASDexApi* | [**dexGetTokenDTOsHistorical**](OASDexApi.md#dexGetTokenDTOsHistorical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
*OASDexApi* | [**dexGetTokensHistorical**](OASDexApi.md#dexGetTokensHistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
*OASDexApi* | [**dexGetTradeDTOsHistorical**](OASDexApi.md#dexGetTradeDTOsHistorical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
*OASDexApi* | [**dexGetTradesHistorical**](OASDexApi.md#dexGetTradesHistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
*OASDexApi* | [**dexGetUserDTOsHistorical**](OASDexApi.md#dexGetUserDTOsHistorical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
*OASDexApi* | [**dexGetUsersHistorical**](OASDexApi.md#dexGetUsersHistorical) | **GET** /dapps/dex/users/historical | Users (historical)
*OASDexApi* | [**dexGetWithdrawDTOsHistorical**](OASDexApi.md#dexGetWithdrawDTOsHistorical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
*OASDexApi* | [**dexGetWithdrawRequestDTOsHistorical**](OASDexApi.md#dexGetWithdrawRequestDTOsHistorical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
*OASDexApi* | [**dexGetWithdrawsHistorical**](OASDexApi.md#dexGetWithdrawsHistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
*OASDexApi* | [**dexGetWithdrawsRequestsHistorical**](OASDexApi.md#dexGetWithdrawsRequestsHistorical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)
*OASSushiswapApi* | [**curveGetExchangesCurrent**](OASSushiswapApi.md#curveGetExchangesCurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*OASSushiswapApi* | [**dexGetTradesCurrent**](OASSushiswapApi.md#dexGetTradesCurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*OASSushiswapApi* | [**sushiswapGetBundleDTOsHistorical**](OASSushiswapApi.md#sushiswapGetBundleDTOsHistorical) | **GET** /dapps/sushiswap/BundleDTOs/historical | BundleDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetBundlesHistorical**](OASSushiswapApi.md#sushiswapGetBundlesHistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical)
*OASSushiswapApi* | [**sushiswapGetBurnDTOsHistorical**](OASSushiswapApi.md#sushiswapGetBurnDTOsHistorical) | **GET** /dapps/sushiswap/BurnDTOs/historical | BurnDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetBurnsHistorical**](OASSushiswapApi.md#sushiswapGetBurnsHistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical)
*OASSushiswapApi* | [**sushiswapGetDayDataDTOsHistorical**](OASSushiswapApi.md#sushiswapGetDayDataDTOsHistorical) | **GET** /dapps/sushiswap/DayDataDTOs/historical | DayDataDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetDayDataHistorical**](OASSushiswapApi.md#sushiswapGetDayDataHistorical) | **GET** /dapps/sushiswap/dayData/historical | DayData (historical)
*OASSushiswapApi* | [**sushiswapGetFactoryDTOsHistorical**](OASSushiswapApi.md#sushiswapGetFactoryDTOsHistorical) | **GET** /dapps/sushiswap/FactoryDTOs/historical | FactoryDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetFactoryHistorical**](OASSushiswapApi.md#sushiswapGetFactoryHistorical) | **GET** /dapps/sushiswap/factory/historical | Factory (historical)
*OASSushiswapApi* | [**sushiswapGetHourDataDTOsHistorical**](OASSushiswapApi.md#sushiswapGetHourDataDTOsHistorical) | **GET** /dapps/sushiswap/HourDataDTOs/historical | HourDataDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetHourDataHistorical**](OASSushiswapApi.md#sushiswapGetHourDataHistorical) | **GET** /dapps/sushiswap/hourData/historical | HourData (historical)
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionDTOsHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionDTOsHistorical) | **GET** /dapps/sushiswap/LiquidityPositionDTOs/historical | LiquidityPositionDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionHistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | LiquidityPosition (historical)
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotDTOsHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionSnapshotDTOsHistorical) | **GET** /dapps/sushiswap/LiquidityPositionSnapshotDTOs/historical | LiquidityPositionSnapshotDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotHistorical**](OASSushiswapApi.md#sushiswapGetLiquidityPositionSnapshotHistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshot (historical)
*OASSushiswapApi* | [**sushiswapGetMintDTOsHistorical**](OASSushiswapApi.md#sushiswapGetMintDTOsHistorical) | **GET** /dapps/sushiswap/MintDTOs/historical | MintDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetMintsHistorical**](OASSushiswapApi.md#sushiswapGetMintsHistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical)
*OASSushiswapApi* | [**sushiswapGetPairDTOsHistorical**](OASSushiswapApi.md#sushiswapGetPairDTOsHistorical) | **GET** /dapps/sushiswap/PairDTOs/historical | PairDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetPairDayDataDTOsHistorical**](OASSushiswapApi.md#sushiswapGetPairDayDataDTOsHistorical) | **GET** /dapps/sushiswap/PairDayDataDTOs/historical | PairDayDataDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetPairHourDataDTOsHistorical**](OASSushiswapApi.md#sushiswapGetPairHourDataDTOsHistorical) | **GET** /dapps/sushiswap/PairHourDataDTOs/historical | PairHourDataDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetPoolsCurrent**](OASSushiswapApi.md#sushiswapGetPoolsCurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*OASSushiswapApi* | [**sushiswapGetPoolsDayDataHistorical**](OASSushiswapApi.md#sushiswapGetPoolsDayDataHistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | PoolsDayData (historical)
*OASSushiswapApi* | [**sushiswapGetPoolsHistorical**](OASSushiswapApi.md#sushiswapGetPoolsHistorical) | **GET** /dapps/sushiswap/pools/historical | Pools (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetPoolsHourDataHistorical**](OASSushiswapApi.md#sushiswapGetPoolsHourDataHistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | PoolsHourData (historical)
*OASSushiswapApi* | [**sushiswapGetSwapDTOsHistorical**](OASSushiswapApi.md#sushiswapGetSwapDTOsHistorical) | **GET** /dapps/sushiswap/SwapDTOs/historical | SwapDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetSwapsCurrent**](OASSushiswapApi.md#sushiswapGetSwapsCurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*OASSushiswapApi* | [**sushiswapGetSwapsHistorical**](OASSushiswapApi.md#sushiswapGetSwapsHistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTokenDTOsHistorical**](OASSushiswapApi.md#sushiswapGetTokenDTOsHistorical) | **GET** /dapps/sushiswap/TokenDTOs/historical | TokenDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTokenDayDataDTOsHistorical**](OASSushiswapApi.md#sushiswapGetTokenDayDataDTOsHistorical) | **GET** /dapps/sushiswap/TokenDayDataDTOs/historical | TokenDayDataDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTokensCurrent**](OASSushiswapApi.md#sushiswapGetTokensCurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*OASSushiswapApi* | [**sushiswapGetTokensDayDataHistorical**](OASSushiswapApi.md#sushiswapGetTokensDayDataHistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | TokensDayData (historical)
*OASSushiswapApi* | [**sushiswapGetTokensHistorical**](OASSushiswapApi.md#sushiswapGetTokensHistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTransactionDTOsHistorical**](OASSushiswapApi.md#sushiswapGetTransactionDTOsHistorical) | **GET** /dapps/sushiswap/TransactionDTOs/historical | TransactionDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetTransactionsHistorical**](OASSushiswapApi.md#sushiswapGetTransactionsHistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical)
*OASSushiswapApi* | [**sushiswapGetUserDTOsHistorical**](OASSushiswapApi.md#sushiswapGetUserDTOsHistorical) | **GET** /dapps/sushiswap/UserDTOs/historical | UserDTOs (historical) 🔥
*OASSushiswapApi* | [**sushiswapGetUsersHistorical**](OASSushiswapApi.md#sushiswapGetUsersHistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical)
*OASUniswapV2Api* | [**uniswapV2GetBundleV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetBundleV2DTOsHistorical) | **GET** /dapps/uniswapv2/BundleV2DTOs/historical | BundleV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetBundlesHistorical**](OASUniswapV2Api.md#uniswapV2GetBundlesHistorical) | **GET** /dapps/uniswapv2/bundles/historical | Bundles (historical)
*OASUniswapV2Api* | [**uniswapV2GetBurnV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetBurnV2DTOsHistorical) | **GET** /dapps/uniswapv2/BurnV2DTOs/historical | BurnV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetBurnsHistorical**](OASUniswapV2Api.md#uniswapV2GetBurnsHistorical) | **GET** /dapps/uniswapv2/burns/historical | Burns (historical)
*OASUniswapV2Api* | [**uniswapV2GetDayDataHistorical**](OASUniswapV2Api.md#uniswapV2GetDayDataHistorical) | **GET** /dapps/uniswapv2/dayData/historical | DayData (historical)
*OASUniswapV2Api* | [**uniswapV2GetFactoryHistorical**](OASUniswapV2Api.md#uniswapV2GetFactoryHistorical) | **GET** /dapps/uniswapv2/factory/historical | Factory (historical)
*OASUniswapV2Api* | [**uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical) | **GET** /dapps/uniswapv2/LiquidityPositionSnapshotV2DTOs/historical | LiquidityPositionSnapshotV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetLiquidityPositionV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetLiquidityPositionV2DTOsHistorical) | **GET** /dapps/uniswapv2/LiquidityPositionV2DTOs/historical | LiquidityPositionV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetLiquidityPositionsHistorical**](OASUniswapV2Api.md#uniswapV2GetLiquidityPositionsHistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical)
*OASUniswapV2Api* | [**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](OASUniswapV2Api.md#uniswapV2GetLiquidityPositionsSnapshotsHistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | LiquidityPositionsSnapshots (historical)
*OASUniswapV2Api* | [**uniswapV2GetMintV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetMintV2DTOsHistorical) | **GET** /dapps/uniswapv2/MintV2DTOs/historical | MintV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetMintsHistorical**](OASUniswapV2Api.md#uniswapV2GetMintsHistorical) | **GET** /dapps/uniswapv2/mints/historical | Mints (historical)
*OASUniswapV2Api* | [**uniswapV2GetPairDayDataV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetPairDayDataV2DTOsHistorical) | **GET** /dapps/uniswapv2/PairDayDataV2DTOs/historical | PairDayDataV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPairHourDataV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetPairHourDataV2DTOsHistorical) | **GET** /dapps/uniswapv2/PairHourDataV2DTOs/historical | PairHourDataV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPairV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetPairV2DTOsHistorical) | **GET** /dapps/uniswapv2/PairV2DTOs/historical | PairV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPoolsCurrent**](OASUniswapV2Api.md#uniswapV2GetPoolsCurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPoolsDayDataHistorical**](OASUniswapV2Api.md#uniswapV2GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical | PoolsDayData (historical)
*OASUniswapV2Api* | [**uniswapV2GetPoolsHistorical**](OASUniswapV2Api.md#uniswapV2GetPoolsHistorical) | **GET** /dapps/uniswapv2/pools/historical | Pools (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetPoolsHourDataHistorical**](OASUniswapV2Api.md#uniswapV2GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical | PoolsHourData (historical)
*OASUniswapV2Api* | [**uniswapV2GetSwapV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetSwapV2DTOsHistorical) | **GET** /dapps/uniswapv2/SwapV2DTOs/historical | SwapV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetSwapsCurrent**](OASUniswapV2Api.md#uniswapV2GetSwapsCurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetSwapsHistorical**](OASUniswapV2Api.md#uniswapV2GetSwapsHistorical) | **GET** /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokenDayDataV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetTokenDayDataV2DTOsHistorical) | **GET** /dapps/uniswapv2/TokenDayDataV2DTOs/historical | TokenDayDataV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokenV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetTokenV2DTOsHistorical) | **GET** /dapps/uniswapv2/TokenV2DTOs/historical | TokenV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokensCurrent**](OASUniswapV2Api.md#uniswapV2GetTokensCurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTokensDayDataHistorical**](OASUniswapV2Api.md#uniswapV2GetTokensDayDataHistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical | TokensDayData (historical)
*OASUniswapV2Api* | [**uniswapV2GetTokensHistorical**](OASUniswapV2Api.md#uniswapV2GetTokensHistorical) | **GET** /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTransactionV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetTransactionV2DTOsHistorical) | **GET** /dapps/uniswapv2/TransactionV2DTOs/historical | TransactionV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetTransactionsHistorical**](OASUniswapV2Api.md#uniswapV2GetTransactionsHistorical) | **GET** /dapps/uniswapv2/transactions/historical | Transactions (historical)
*OASUniswapV2Api* | [**uniswapV2GetUniswapDayDataV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetUniswapDayDataV2DTOsHistorical) | **GET** /dapps/uniswapv2/UniswapDayDataV2DTOs/historical | UniswapDayDataV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetUniswapFactoryV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetUniswapFactoryV2DTOsHistorical) | **GET** /dapps/uniswapv2/UniswapFactoryV2DTOs/historical | UniswapFactoryV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetUserV2DTOsHistorical**](OASUniswapV2Api.md#uniswapV2GetUserV2DTOsHistorical) | **GET** /dapps/uniswapv2/UserV2DTOs/historical | UserV2DTOs (historical) 🔥
*OASUniswapV2Api* | [**uniswapV2GetUsersHistorical**](OASUniswapV2Api.md#uniswapV2GetUsersHistorical) | **GET** /dapps/uniswapv2/users/historical | Users (historical)
*OASUniswapV3Api* | [**uniswapV3GetBundleV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetBundleV3DTOsHistorical) | **GET** /dapps/uniswapv3/BundleV3DTOs/historical | BundleV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetBundlesCurrent**](OASUniswapV3Api.md#uniswapV3GetBundlesCurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*OASUniswapV3Api* | [**uniswapV3GetBundlesHistorical**](OASUniswapV3Api.md#uniswapV3GetBundlesHistorical) | **GET** /dapps/uniswapv3/bundles/historical | Bundles (historical)
*OASUniswapV3Api* | [**uniswapV3GetBurnV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetBurnV3DTOsHistorical) | **GET** /dapps/uniswapv3/BurnV3DTOs/historical | BurnV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetBurnsCurrent**](OASUniswapV3Api.md#uniswapV3GetBurnsCurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*OASUniswapV3Api* | [**uniswapV3GetBurnsHistorical**](OASUniswapV3Api.md#uniswapV3GetBurnsHistorical) | **GET** /dapps/uniswapv3/burns/historical | Burns (historical)
*OASUniswapV3Api* | [**uniswapV3GetDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetDayDataCurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*OASUniswapV3Api* | [**uniswapV3GetDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetDayDataHistorical) | **GET** /dapps/uniswapv3/dayData/historical | DayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetFactoryCurrent**](OASUniswapV3Api.md#uniswapV3GetFactoryCurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*OASUniswapV3Api* | [**uniswapV3GetFactoryHistorical**](OASUniswapV3Api.md#uniswapV3GetFactoryHistorical) | **GET** /dapps/uniswapv3/factory/historical | Factory (historical)
*OASUniswapV3Api* | [**uniswapV3GetFactoryV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetFactoryV3DTOsHistorical) | **GET** /dapps/uniswapv3/FactoryV3DTOs/historical | FactoryV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetMintV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetMintV3DTOsHistorical) | **GET** /dapps/uniswapv3/MintV3DTOs/historical | MintV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetMintsCurrent**](OASUniswapV3Api.md#uniswapV3GetMintsCurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*OASUniswapV3Api* | [**uniswapV3GetMintsHistorical**](OASUniswapV3Api.md#uniswapV3GetMintsHistorical) | **GET** /dapps/uniswapv3/mints/historical | Mints (historical)
*OASUniswapV3Api* | [**uniswapV3GetPoolDayDataV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolDayDataV3DTOsHistorical) | **GET** /dapps/uniswapv3/PoolDayDataV3DTOs/historical | PoolDayDataV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolHourDataV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolHourDataV3DTOsHistorical) | **GET** /dapps/uniswapv3/PoolHourDataV3DTOs/historical | PoolHourDataV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolV3DTOsHistorical) | **GET** /dapps/uniswapv3/PoolV3DTOs/historical | PoolV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolsCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsCurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsDayDataCurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetPoolsDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolsDayDataHistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical | PoolsDayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetPoolsHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolsHistorical) | **GET** /dapps/uniswapv3/pools/historical | Pools (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](OASUniswapV3Api.md#uniswapV3GetPoolsHourDataCurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*OASUniswapV3Api* | [**uniswapV3GetPoolsHourDataHistorical**](OASUniswapV3Api.md#uniswapV3GetPoolsHourDataHistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical | PoolsHourData (historical)
*OASUniswapV3Api* | [**uniswapV3GetPositionSnapshotV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetPositionSnapshotV3DTOsHistorical) | **GET** /dapps/uniswapv3/PositionSnapshotV3DTOs/historical | PositionSnapshotV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPositionV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetPositionV3DTOsHistorical) | **GET** /dapps/uniswapv3/PositionV3DTOs/historical | PositionV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetPositionsCurrent**](OASUniswapV3Api.md#uniswapV3GetPositionsCurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*OASUniswapV3Api* | [**uniswapV3GetPositionsHistorical**](OASUniswapV3Api.md#uniswapV3GetPositionsHistorical) | **GET** /dapps/uniswapv3/positions/historical | Positions (historical)
*OASUniswapV3Api* | [**uniswapV3GetPositionsSnaphotsHistorical**](OASUniswapV3Api.md#uniswapV3GetPositionsSnaphotsHistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical | PositionsSnaphots (historical)
*OASUniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](OASUniswapV3Api.md#uniswapV3GetPositionsSnapshotsCurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*OASUniswapV3Api* | [**uniswapV3GetSwapV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetSwapV3DTOsHistorical) | **GET** /dapps/uniswapv3/SwapV3DTOs/historical | SwapV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetSwapsCurrent**](OASUniswapV3Api.md#uniswapV3GetSwapsCurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetSwapsHistorical**](OASUniswapV3Api.md#uniswapV3GetSwapsHistorical) | **GET** /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTickDayDataV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetTickDayDataV3DTOsHistorical) | **GET** /dapps/uniswapv3/TickDayDataV3DTOs/historical | TickDayDataV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTickV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetTickV3DTOsHistorical) | **GET** /dapps/uniswapv3/TickV3DTOs/historical | TickV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTicksCurrent**](OASUniswapV3Api.md#uniswapV3GetTicksCurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*OASUniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTicksDayDataCurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetTicksDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetTicksDayDataHistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical | TicksDayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetTicksHistorical**](OASUniswapV3Api.md#uniswapV3GetTicksHistorical) | **GET** /dapps/uniswapv3/ticks/historical | Ticks (historical)
*OASUniswapV3Api* | [**uniswapV3GetTokenHourDataV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetTokenHourDataV3DTOsHistorical) | **GET** /dapps/uniswapv3/TokenHourDataV3DTOs/historical | TokenHourDataV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokenV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetTokenV3DTOsHistorical) | **GET** /dapps/uniswapv3/TokenV3DTOs/historical | TokenV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokenV3DayDataDTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetTokenV3DayDataDTOsHistorical) | **GET** /dapps/uniswapv3/TokenV3DayDataDTOs/historical | TokenV3DayDataDTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokensCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensCurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensDayDataCurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*OASUniswapV3Api* | [**uniswapV3GetTokensDayDataHistorical**](OASUniswapV3Api.md#uniswapV3GetTokensDayDataHistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical | TokensDayData (historical)
*OASUniswapV3Api* | [**uniswapV3GetTokensHistorical**](OASUniswapV3Api.md#uniswapV3GetTokensHistorical) | **GET** /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](OASUniswapV3Api.md#uniswapV3GetTokensHourDataCurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
*OASUniswapV3Api* | [**uniswapV3GetTokensHourDataHistorical**](OASUniswapV3Api.md#uniswapV3GetTokensHourDataHistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical | TokensHourData (historical)
*OASUniswapV3Api* | [**uniswapV3GetTransactionV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetTransactionV3DTOsHistorical) | **GET** /dapps/uniswapv3/TransactionV3DTOs/historical | TransactionV3DTOs (historical) 🔥
*OASUniswapV3Api* | [**uniswapV3GetTransactionsHistorical**](OASUniswapV3Api.md#uniswapV3GetTransactionsHistorical) | **GET** /dapps/uniswapv3/transactions/historical | Transactions (historical)
*OASUniswapV3Api* | [**uniswapV3GetUniswapDayDataV3DTOsHistorical**](OASUniswapV3Api.md#uniswapV3GetUniswapDayDataV3DTOsHistorical) | **GET** /dapps/uniswapv3/UniswapDayDataV3DTOs/historical | UniswapDayDataV3DTOs (historical) 🔥


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

