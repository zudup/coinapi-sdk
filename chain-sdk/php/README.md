# OpenAPIClient-php


This section will provide necessary information about the `OnChain API` protocol. 
<br/><br/>
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.        
                    

For more information, please visit [https://www.coinapi.io](https://www.coinapi.io).

## Installation & Usage

### Requirements

PHP 7.4 and later.
Should also work with PHP 8.0.

### Composer

To install the bindings via [Composer](https://getcomposer.org/), add the following to `composer.json`:

```json
{
  "repositories": [
    {
      "type": "vcs",
      "url": "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
    }
  ],
  "require": {
    "GIT_USER_ID/GIT_REPO_ID": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
<?php
require_once('/path/to/OpenAPIClient-php/vendor/autoload.php');
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');




$apiInstance = new OpenAPI\Client\Api\CowApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$start_block = 56; // int | 
$end_block = 56; // int | 
$start_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$end_date = new \DateTime("2013-10-20T19:20:30+01:00"); // \DateTime | 
$pool_id = 'pool_id_example'; // string | 

try {
    $result = $apiInstance->cowGetOrderDTOsHistorical($start_block, $end_block, $start_date, $end_date, $pool_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling CowApi->cowGetOrderDTOsHistorical: ', $e->getMessage(), PHP_EOL;
}

```

## API Endpoints

All URIs are relative to *https://onchain.coinapi.io*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CowApi* | [**cowGetOrderDTOsHistorical**](docs/Api/CowApi.md#cowgetorderdtoshistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
*CowApi* | [**cowGetOrdersHistorical**](docs/Api/CowApi.md#cowgetordershistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
*CowApi* | [**cowGetSettlementDTOsHistorical**](docs/Api/CowApi.md#cowgetsettlementdtoshistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
*CowApi* | [**cowGetSettlementsHistorical**](docs/Api/CowApi.md#cowgetsettlementshistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
*CowApi* | [**cowGetTokenDTOsHistorical**](docs/Api/CowApi.md#cowgettokendtoshistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
*CowApi* | [**cowGetTokensHistorical**](docs/Api/CowApi.md#cowgettokenshistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
*CowApi* | [**cowGetTradeDTOsHistorical**](docs/Api/CowApi.md#cowgettradedtoshistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
*CowApi* | [**cowGetTradesHistorical**](docs/Api/CowApi.md#cowgettradeshistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
*CowApi* | [**cowGetUserDTOsHistorical**](docs/Api/CowApi.md#cowgetuserdtoshistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
*CowApi* | [**cowGetUsersHistorical**](docs/Api/CowApi.md#cowgetusershistorical) | **GET** /dapps/cow/users/historical | Users (historical)
*CurveApi* | [**curveGetAccountDTOsHistorical**](docs/Api/CurveApi.md#curvegetaccountdtoshistorical) | **GET** /dapps/curve/AccountDTOs/historical | AccountDTOs (historical) 🔥
*CurveApi* | [**curveGetAccountsHistorical**](docs/Api/CurveApi.md#curvegetaccountshistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical)
*CurveApi* | [**curveGetAddLiquidityEventDTOsHistorical**](docs/Api/CurveApi.md#curvegetaddliquidityeventdtoshistorical) | **GET** /dapps/curve/AddLiquidityEventDTOs/historical | AddLiquidityEventDTOs (historical) 🔥
*CurveApi* | [**curveGetAddLiquidityEventsHistorical**](docs/Api/CurveApi.md#curvegetaddliquidityeventshistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical)
*CurveApi* | [**curveGetAdminFeeChangeLogDTOsHistorical**](docs/Api/CurveApi.md#curvegetadminfeechangelogdtoshistorical) | **GET** /dapps/curve/AdminFeeChangeLogDTOs/historical | AdminFeeChangeLogDTOs (historical) 🔥
*CurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](docs/Api/CurveApi.md#curvegetadminfeechangelogshistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical)
*CurveApi* | [**curveGetAmplificationCoeffChangeLogDTOsHistorical**](docs/Api/CurveApi.md#curvegetamplificationcoeffchangelogdtoshistorical) | **GET** /dapps/curve/AmplificationCoeffChangeLogDTOs/historical | AmplificationCoeffChangeLogDTOs (historical) 🔥
*CurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](docs/Api/CurveApi.md#curvegetamplificationcoeffchangelogshistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical)
*CurveApi* | [**curveGetCoinDTOsHistorical**](docs/Api/CurveApi.md#curvegetcoindtoshistorical) | **GET** /dapps/curve/CoinDTOs/historical | CoinDTOs (historical) 🔥
*CurveApi* | [**curveGetCoinsHistorical**](docs/Api/CurveApi.md#curvegetcoinshistorical) | **GET** /dapps/curve/coins/historical | Coins (historical)
*CurveApi* | [**curveGetContractDTOsHistorical**](docs/Api/CurveApi.md#curvegetcontractdtoshistorical) | **GET** /dapps/curve/ContractDTOs/historical | ContractDTOs (historical) 🔥
*CurveApi* | [**curveGetContractVersionDTOsHistorical**](docs/Api/CurveApi.md#curvegetcontractversiondtoshistorical) | **GET** /dapps/curve/ContractVersionDTOs/historical | ContractVersionDTOs (historical) 🔥
*CurveApi* | [**curveGetContractsHistorical**](docs/Api/CurveApi.md#curvegetcontractshistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical)
*CurveApi* | [**curveGetContractsVersionsHistorical**](docs/Api/CurveApi.md#curvegetcontractsversionshistorical) | **GET** /dapps/curve/contractsVersions/historical | ContractsVersions (historical)
*CurveApi* | [**curveGetDailyVolumeDTOsHistorical**](docs/Api/CurveApi.md#curvegetdailyvolumedtoshistorical) | **GET** /dapps/curve/DailyVolumeDTOs/historical | DailyVolumeDTOs (historical) 🔥
*CurveApi* | [**curveGetDailyVolumesHistorical**](docs/Api/CurveApi.md#curvegetdailyvolumeshistorical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical)
*CurveApi* | [**curveGetExchangeDTOsHistorical**](docs/Api/CurveApi.md#curvegetexchangedtoshistorical) | **GET** /dapps/curve/ExchangeDTOs/historical | ExchangeDTOs (historical) 🔥
*CurveApi* | [**curveGetExchangesHistorical**](docs/Api/CurveApi.md#curvegetexchangeshistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogDTOsHistorical**](docs/Api/CurveApi.md#curvegetfeechangelogdtoshistorical) | **GET** /dapps/curve/FeeChangeLogDTOs/historical | FeeChangeLogDTOs (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogsHistorical**](docs/Api/CurveApi.md#curvegetfeechangelogshistorical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical)
*CurveApi* | [**curveGetGaugeDTOsHistorical**](docs/Api/CurveApi.md#curvegetgaugedtoshistorical) | **GET** /dapps/curve/GaugeDTOs/historical | GaugeDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeDepositDTOsHistorical**](docs/Api/CurveApi.md#curvegetgaugedepositdtoshistorical) | **GET** /dapps/curve/GaugeDepositDTOs/historical | GaugeDepositDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeLiquidityDTOsHistorical**](docs/Api/CurveApi.md#curvegetgaugeliquiditydtoshistorical) | **GET** /dapps/curve/GaugeLiquidityDTOs/historical | GaugeLiquidityDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeTotalWeightDTOsHistorical**](docs/Api/CurveApi.md#curvegetgaugetotalweightdtoshistorical) | **GET** /dapps/curve/GaugeTotalWeightDTOs/historical | GaugeTotalWeightDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeTypeDTOsHistorical**](docs/Api/CurveApi.md#curvegetgaugetypedtoshistorical) | **GET** /dapps/curve/GaugeTypeDTOs/historical | GaugeTypeDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeTypeWeightDTOsHistorical**](docs/Api/CurveApi.md#curvegetgaugetypeweightdtoshistorical) | **GET** /dapps/curve/GaugeTypeWeightDTOs/historical | GaugeTypeWeightDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightDTOsHistorical**](docs/Api/CurveApi.md#curvegetgaugeweightdtoshistorical) | **GET** /dapps/curve/GaugeWeightDTOs/historical | GaugeWeightDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightVoteDTOsHistorical**](docs/Api/CurveApi.md#curvegetgaugeweightvotedtoshistorical) | **GET** /dapps/curve/GaugeWeightVoteDTOs/historical | GaugeWeightVoteDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeWithdrawDTOsHistorical**](docs/Api/CurveApi.md#curvegetgaugewithdrawdtoshistorical) | **GET** /dapps/curve/GaugeWithdrawDTOs/historical | GaugeWithdrawDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugesDepositsHistorical**](docs/Api/CurveApi.md#curvegetgaugesdepositshistorical) | **GET** /dapps/curve/gaugesDeposits/historical | GaugesDeposits (historical)
*CurveApi* | [**curveGetGaugesHistorical**](docs/Api/CurveApi.md#curvegetgaugeshistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical)
*CurveApi* | [**curveGetGaugesLiquidityHistorical**](docs/Api/CurveApi.md#curvegetgaugesliquidityhistorical) | **GET** /dapps/curve/gaugesLiquidity/historical | GaugesLiquidity (historical)
*CurveApi* | [**curveGetGaugesTotalWeightsHistorical**](docs/Api/CurveApi.md#curvegetgaugestotalweightshistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical | GaugesTotalWeights (historical)
*CurveApi* | [**curveGetGaugesTypesHistorical**](docs/Api/CurveApi.md#curvegetgaugestypeshistorical) | **GET** /dapps/curve/gaugesTypes/historical | GaugesTypes (historical)
*CurveApi* | [**curveGetGaugesTypesWeightsHistorical**](docs/Api/CurveApi.md#curvegetgaugestypesweightshistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical | GaugesTypesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsHistorical**](docs/Api/CurveApi.md#curvegetgaugesweightshistorical) | **GET** /dapps/curve/gaugesWeights/historical | GaugesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsVotesHistorical**](docs/Api/CurveApi.md#curvegetgaugesweightsvoteshistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical | GaugesWeightsVotes (historical)
*CurveApi* | [**curveGetGaugesWithdrawHistorical**](docs/Api/CurveApi.md#curvegetgaugeswithdrawhistorical) | **GET** /dapps/curve/gaugesWithdraws/historical | GaugesWithdraw (historical)
*CurveApi* | [**curveGetHourlyVolumeDTOsHistorical**](docs/Api/CurveApi.md#curvegethourlyvolumedtoshistorical) | **GET** /dapps/curve/HourlyVolumeDTOs/historical | HourlyVolumeDTOs (historical) 🔥
*CurveApi* | [**curveGetHourlyVolumesHistorical**](docs/Api/CurveApi.md#curvegethourlyvolumeshistorical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical)
*CurveApi* | [**curveGetLpTokenDTOsHistorical**](docs/Api/CurveApi.md#curvegetlptokendtoshistorical) | **GET** /dapps/curve/LpTokenDTOs/historical | LpTokenDTOs (historical) 🔥
*CurveApi* | [**curveGetLpTokensHistorical**](docs/Api/CurveApi.md#curvegetlptokenshistorical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical)
*CurveApi* | [**curveGetPoolDTOsHistorical**](docs/Api/CurveApi.md#curvegetpooldtoshistorical) | **GET** /dapps/curve/PoolDTOs/historical | PoolDTOs (historical) 🔥
*CurveApi* | [**curveGetPoolsHistorical**](docs/Api/CurveApi.md#curvegetpoolshistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥
*CurveApi* | [**curveGetProposalDTOsHistorical**](docs/Api/CurveApi.md#curvegetproposaldtoshistorical) | **GET** /dapps/curve/ProposalDTOs/historical | ProposalDTOs (historical) 🔥
*CurveApi* | [**curveGetProposalVoteDTOsHistorical**](docs/Api/CurveApi.md#curvegetproposalvotedtoshistorical) | **GET** /dapps/curve/ProposalVoteDTOs/historical | ProposalVoteDTOs (historical) 🔥
*CurveApi* | [**curveGetProposalsHistorical**](docs/Api/CurveApi.md#curvegetproposalshistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical)
*CurveApi* | [**curveGetProposalsVotesHistorical**](docs/Api/CurveApi.md#curvegetproposalsvoteshistorical) | **GET** /dapps/curve/proposalsVotes/historical | ProposalsVotes (historical)
*CurveApi* | [**curveGetRemoveLiquidityEventDTOsHistorical**](docs/Api/CurveApi.md#curvegetremoveliquidityeventdtoshistorical) | **GET** /dapps/curve/RemoveLiquidityEventDTOs/historical | RemoveLiquidityEventDTOs (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](docs/Api/CurveApi.md#curvegetremoveliquidityeventshistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical)
*CurveApi* | [**curveGetRemoveLiquidityOneEventDTOsHistorical**](docs/Api/CurveApi.md#curvegetremoveliquidityoneeventdtoshistorical) | **GET** /dapps/curve/RemoveLiquidityOneEventDTOs/historical | RemoveLiquidityOneEventDTOs (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](docs/Api/CurveApi.md#curvegetremoveliquidityoneeventshistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical)
*CurveApi* | [**curveGetSystemStateDTOsHistorical**](docs/Api/CurveApi.md#curvegetsystemstatedtoshistorical) | **GET** /dapps/curve/SystemStateDTOs/historical | SystemStateDTOs (historical) 🔥
*CurveApi* | [**curveGetSystemStatesHistorical**](docs/Api/CurveApi.md#curvegetsystemstateshistorical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical)
*CurveApi* | [**curveGetTokenDTOsHistorical**](docs/Api/CurveApi.md#curvegettokendtoshistorical) | **GET** /dapps/curve/TokenDTOs/historical | TokenDTOs (historical) 🔥
*CurveApi* | [**curveGetTokensHistorical**](docs/Api/CurveApi.md#curvegettokenshistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventDTOsHistorical**](docs/Api/CurveApi.md#curvegettransferownershipeventdtoshistorical) | **GET** /dapps/curve/TransferOwnershipEventDTOs/historical | TransferOwnershipEventDTOs (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventsHistorical**](docs/Api/CurveApi.md#curvegettransferownershipeventshistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical)
*CurveApi* | [**curveGetUnderlyingCoinDTOsHistorical**](docs/Api/CurveApi.md#curvegetunderlyingcoindtoshistorical) | **GET** /dapps/curve/UnderlyingCoinDTOs/historical | UnderlyingCoinDTOs (historical) 🔥
*CurveApi* | [**curveGetUnderlyingCoinsHistorical**](docs/Api/CurveApi.md#curvegetunderlyingcoinshistorical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical)
*CurveApi* | [**curveGetVotingAppDTOsHistorical**](docs/Api/CurveApi.md#curvegetvotingappdtoshistorical) | **GET** /dapps/curve/VotingAppDTOs/historical | VotingAppDTOs (historical) 🔥
*CurveApi* | [**curveGetVotingAppsHistorical**](docs/Api/CurveApi.md#curvegetvotingappshistorical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical)
*CurveApi* | [**curveGetWeeklyVolumeDTOsHistorical**](docs/Api/CurveApi.md#curvegetweeklyvolumedtoshistorical) | **GET** /dapps/curve/WeeklyVolumeDTOs/historical | WeeklyVolumeDTOs (historical) 🔥
*CurveApi* | [**curveGetWeeklyVolumesHistorical**](docs/Api/CurveApi.md#curvegetweeklyvolumeshistorical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical)
*DexApi* | [**dexGetBatchDTOsHistorical**](docs/Api/DexApi.md#dexgetbatchdtoshistorical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
*DexApi* | [**dexGetBatchesHistorical**](docs/Api/DexApi.md#dexgetbatcheshistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
*DexApi* | [**dexGetDepositDTOsHistorical**](docs/Api/DexApi.md#dexgetdepositdtoshistorical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
*DexApi* | [**dexGetDepositsHistorical**](docs/Api/DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
*DexApi* | [**dexGetOrderDTOsHistorical**](docs/Api/DexApi.md#dexgetorderdtoshistorical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
*DexApi* | [**dexGetOrdersHistorical**](docs/Api/DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
*DexApi* | [**dexGetPriceDTOsHistorical**](docs/Api/DexApi.md#dexgetpricedtoshistorical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
*DexApi* | [**dexGetPricesHistorical**](docs/Api/DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
*DexApi* | [**dexGetSolutionDTOsHistorical**](docs/Api/DexApi.md#dexgetsolutiondtoshistorical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
*DexApi* | [**dexGetSolutionsHistorical**](docs/Api/DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
*DexApi* | [**dexGetStatsDTOsHistorical**](docs/Api/DexApi.md#dexgetstatsdtoshistorical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
*DexApi* | [**dexGetStatsHistorical**](docs/Api/DexApi.md#dexgetstatshistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
*DexApi* | [**dexGetTokenDTOsHistorical**](docs/Api/DexApi.md#dexgettokendtoshistorical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
*DexApi* | [**dexGetTokensHistorical**](docs/Api/DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
*DexApi* | [**dexGetTradeDTOsHistorical**](docs/Api/DexApi.md#dexgettradedtoshistorical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
*DexApi* | [**dexGetTradesHistorical**](docs/Api/DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
*DexApi* | [**dexGetUserDTOsHistorical**](docs/Api/DexApi.md#dexgetuserdtoshistorical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
*DexApi* | [**dexGetUsersHistorical**](docs/Api/DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical | Users (historical)
*DexApi* | [**dexGetWithdrawDTOsHistorical**](docs/Api/DexApi.md#dexgetwithdrawdtoshistorical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
*DexApi* | [**dexGetWithdrawRequestDTOsHistorical**](docs/Api/DexApi.md#dexgetwithdrawrequestdtoshistorical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
*DexApi* | [**dexGetWithdrawsHistorical**](docs/Api/DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
*DexApi* | [**dexGetWithdrawsRequestsHistorical**](docs/Api/DexApi.md#dexgetwithdrawsrequestshistorical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)
*SushiswapApi* | [**curveGetExchangesCurrent**](docs/Api/SushiswapApi.md#curvegetexchangescurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*SushiswapApi* | [**dexGetTradesCurrent**](docs/Api/SushiswapApi.md#dexgettradescurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*SushiswapApi* | [**sushiswapGetBundleDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetbundledtoshistorical) | **GET** /dapps/sushiswap/BundleDTOs/historical | BundleDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetBundlesHistorical**](docs/Api/SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical)
*SushiswapApi* | [**sushiswapGetBurnDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetburndtoshistorical) | **GET** /dapps/sushiswap/BurnDTOs/historical | BurnDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetBurnsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical)
*SushiswapApi* | [**sushiswapGetDayDataDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetdaydatadtoshistorical) | **GET** /dapps/sushiswap/DayDataDTOs/historical | DayDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetDayDataHistorical**](docs/Api/SushiswapApi.md#sushiswapgetdaydatahistorical) | **GET** /dapps/sushiswap/dayData/historical | DayData (historical)
*SushiswapApi* | [**sushiswapGetFactoryDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetfactorydtoshistorical) | **GET** /dapps/sushiswap/FactoryDTOs/historical | FactoryDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetFactoryHistorical**](docs/Api/SushiswapApi.md#sushiswapgetfactoryhistorical) | **GET** /dapps/sushiswap/factory/historical | Factory (historical)
*SushiswapApi* | [**sushiswapGetHourDataDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgethourdatadtoshistorical) | **GET** /dapps/sushiswap/HourDataDTOs/historical | HourDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetHourDataHistorical**](docs/Api/SushiswapApi.md#sushiswapgethourdatahistorical) | **GET** /dapps/sushiswap/hourData/historical | HourData (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetliquiditypositiondtoshistorical) | **GET** /dapps/sushiswap/LiquidityPositionDTOs/historical | LiquidityPositionDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionHistorical**](docs/Api/SushiswapApi.md#sushiswapgetliquiditypositionhistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | LiquidityPosition (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetliquiditypositionsnapshotdtoshistorical) | **GET** /dapps/sushiswap/LiquidityPositionSnapshotDTOs/historical | LiquidityPositionSnapshotDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotHistorical**](docs/Api/SushiswapApi.md#sushiswapgetliquiditypositionsnapshothistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshot (historical)
*SushiswapApi* | [**sushiswapGetMintDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetmintdtoshistorical) | **GET** /dapps/sushiswap/MintDTOs/historical | MintDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetMintsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical)
*SushiswapApi* | [**sushiswapGetPairDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpairdtoshistorical) | **GET** /dapps/sushiswap/PairDTOs/historical | PairDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairDayDataDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpairdaydatadtoshistorical) | **GET** /dapps/sushiswap/PairDayDataDTOs/historical | PairDayDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairHourDataDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpairhourdatadtoshistorical) | **GET** /dapps/sushiswap/PairHourDataDTOs/historical | PairHourDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsCurrent**](docs/Api/SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*SushiswapApi* | [**sushiswapGetPoolsDayDataHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpoolsdaydatahistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | PoolsDayData (historical)
*SushiswapApi* | [**sushiswapGetPoolsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpoolshistorical) | **GET** /dapps/sushiswap/pools/historical | Pools (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsHourDataHistorical**](docs/Api/SushiswapApi.md#sushiswapgetpoolshourdatahistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | PoolsHourData (historical)
*SushiswapApi* | [**sushiswapGetSwapDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetswapdtoshistorical) | **GET** /dapps/sushiswap/SwapDTOs/historical | SwapDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetSwapsCurrent**](docs/Api/SushiswapApi.md#sushiswapgetswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokenDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgettokendtoshistorical) | **GET** /dapps/sushiswap/TokenDTOs/historical | TokenDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokenDayDataDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgettokendaydatadtoshistorical) | **GET** /dapps/sushiswap/TokenDayDataDTOs/historical | TokenDayDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokensCurrent**](docs/Api/SushiswapApi.md#sushiswapgettokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*SushiswapApi* | [**sushiswapGetTokensDayDataHistorical**](docs/Api/SushiswapApi.md#sushiswapgettokensdaydatahistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | TokensDayData (historical)
*SushiswapApi* | [**sushiswapGetTokensHistorical**](docs/Api/SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgettransactiondtoshistorical) | **GET** /dapps/sushiswap/TransactionDTOs/historical | TransactionDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionsHistorical**](docs/Api/SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical)
*SushiswapApi* | [**sushiswapGetUserDTOsHistorical**](docs/Api/SushiswapApi.md#sushiswapgetuserdtoshistorical) | **GET** /dapps/sushiswap/UserDTOs/historical | UserDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetUsersHistorical**](docs/Api/SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical)
*UniswapV2Api* | [**uniswapV2GetBundleV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getbundlev2dtoshistorical) | **GET** /dapps/uniswapv2/BundleV2DTOs/historical | BundleV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBundlesHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getbundleshistorical) | **GET** /dapps/uniswapv2/bundles/historical | Bundles (historical)
*UniswapV2Api* | [**uniswapV2GetBurnV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getburnv2dtoshistorical) | **GET** /dapps/uniswapv2/BurnV2DTOs/historical | BurnV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBurnsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getburnshistorical) | **GET** /dapps/uniswapv2/burns/historical | Burns (historical)
*UniswapV2Api* | [**uniswapV2GetDayDataHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getdaydatahistorical) | **GET** /dapps/uniswapv2/dayData/historical | DayData (historical)
*UniswapV2Api* | [**uniswapV2GetFactoryHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getfactoryhistorical) | **GET** /dapps/uniswapv2/factory/historical | Factory (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getliquiditypositionsnapshotv2dtoshistorical) | **GET** /dapps/uniswapv2/LiquidityPositionSnapshotV2DTOs/historical | LiquidityPositionSnapshotV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getliquiditypositionv2dtoshistorical) | **GET** /dapps/uniswapv2/LiquidityPositionV2DTOs/historical | LiquidityPositionV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getliquiditypositionshistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getliquiditypositionssnapshotshistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | LiquidityPositionsSnapshots (historical)
*UniswapV2Api* | [**uniswapV2GetMintV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getmintv2dtoshistorical) | **GET** /dapps/uniswapv2/MintV2DTOs/historical | MintV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetMintsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getmintshistorical) | **GET** /dapps/uniswapv2/mints/historical | Mints (historical)
*UniswapV2Api* | [**uniswapV2GetPairDayDataV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpairdaydatav2dtoshistorical) | **GET** /dapps/uniswapv2/PairDayDataV2DTOs/historical | PairDayDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairHourDataV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpairhourdatav2dtoshistorical) | **GET** /dapps/uniswapv2/PairHourDataV2DTOs/historical | PairHourDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpairv2dtoshistorical) | **GET** /dapps/uniswapv2/PairV2DTOs/historical | PairV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsCurrent**](docs/Api/UniswapV2Api.md#uniswapv2getpoolscurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsDayDataHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpoolsdaydatahistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical | PoolsDayData (historical)
*UniswapV2Api* | [**uniswapV2GetPoolsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpoolshistorical) | **GET** /dapps/uniswapv2/pools/historical | Pools (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsHourDataHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getpoolshourdatahistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical | PoolsHourData (historical)
*UniswapV2Api* | [**uniswapV2GetSwapV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getswapv2dtoshistorical) | **GET** /dapps/uniswapv2/SwapV2DTOs/historical | SwapV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsCurrent**](docs/Api/UniswapV2Api.md#uniswapv2getswapscurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getswapshistorical) | **GET** /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenDayDataV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettokendaydatav2dtoshistorical) | **GET** /dapps/uniswapv2/TokenDayDataV2DTOs/historical | TokenDayDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettokenv2dtoshistorical) | **GET** /dapps/uniswapv2/TokenV2DTOs/historical | TokenV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensCurrent**](docs/Api/UniswapV2Api.md#uniswapv2gettokenscurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensDayDataHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettokensdaydatahistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical | TokensDayData (historical)
*UniswapV2Api* | [**uniswapV2GetTokensHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettokenshistorical) | **GET** /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettransactionv2dtoshistorical) | **GET** /dapps/uniswapv2/TransactionV2DTOs/historical | TransactionV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2gettransactionshistorical) | **GET** /dapps/uniswapv2/transactions/historical | Transactions (historical)
*UniswapV2Api* | [**uniswapV2GetUniswapDayDataV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getuniswapdaydatav2dtoshistorical) | **GET** /dapps/uniswapv2/UniswapDayDataV2DTOs/historical | UniswapDayDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUniswapFactoryV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getuniswapfactoryv2dtoshistorical) | **GET** /dapps/uniswapv2/UniswapFactoryV2DTOs/historical | UniswapFactoryV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUserV2DTOsHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getuserv2dtoshistorical) | **GET** /dapps/uniswapv2/UserV2DTOs/historical | UserV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUsersHistorical**](docs/Api/UniswapV2Api.md#uniswapv2getusershistorical) | **GET** /dapps/uniswapv2/users/historical | Users (historical)
*UniswapV3Api* | [**uniswapV3GetBundleV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getbundlev3dtoshistorical) | **GET** /dapps/uniswapv3/BundleV3DTOs/historical | BundleV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBundlesCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getbundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*UniswapV3Api* | [**uniswapV3GetBundlesHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getbundleshistorical) | **GET** /dapps/uniswapv3/bundles/historical | Bundles (historical)
*UniswapV3Api* | [**uniswapV3GetBurnV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getburnv3dtoshistorical) | **GET** /dapps/uniswapv3/BurnV3DTOs/historical | BurnV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBurnsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getburnscurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*UniswapV3Api* | [**uniswapV3GetBurnsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getburnshistorical) | **GET** /dapps/uniswapv3/burns/historical | Burns (historical)
*UniswapV3Api* | [**uniswapV3GetDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getdaydatacurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*UniswapV3Api* | [**uniswapV3GetDayDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getdaydatahistorical) | **GET** /dapps/uniswapv3/dayData/historical | DayData (historical)
*UniswapV3Api* | [**uniswapV3GetFactoryCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getfactorycurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*UniswapV3Api* | [**uniswapV3GetFactoryHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getfactoryhistorical) | **GET** /dapps/uniswapv3/factory/historical | Factory (historical)
*UniswapV3Api* | [**uniswapV3GetFactoryV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getfactoryv3dtoshistorical) | **GET** /dapps/uniswapv3/FactoryV3DTOs/historical | FactoryV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getmintv3dtoshistorical) | **GET** /dapps/uniswapv3/MintV3DTOs/historical | MintV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getmintscurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*UniswapV3Api* | [**uniswapV3GetMintsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getmintshistorical) | **GET** /dapps/uniswapv3/mints/historical | Mints (historical)
*UniswapV3Api* | [**uniswapV3GetPoolDayDataV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpooldaydatav3dtoshistorical) | **GET** /dapps/uniswapv3/PoolDayDataV3DTOs/historical | PoolDayDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolHourDataV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpoolhourdatav3dtoshistorical) | **GET** /dapps/uniswapv3/PoolHourDataV3DTOs/historical | PoolHourDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpoolv3dtoshistorical) | **GET** /dapps/uniswapv3/PoolV3DTOs/historical | PoolV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpoolscurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpoolsdaydatacurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpoolsdaydatahistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical | PoolsDayData (historical)
*UniswapV3Api* | [**uniswapV3GetPoolsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpoolshistorical) | **GET** /dapps/uniswapv3/pools/historical | Pools (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpoolshourdatacurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpoolshourdatahistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical | PoolsHourData (historical)
*UniswapV3Api* | [**uniswapV3GetPositionSnapshotV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpositionsnapshotv3dtoshistorical) | **GET** /dapps/uniswapv3/PositionSnapshotV3DTOs/historical | PositionSnapshotV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpositionv3dtoshistorical) | **GET** /dapps/uniswapv3/PositionV3DTOs/historical | PositionV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpositionscurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*UniswapV3Api* | [**uniswapV3GetPositionsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpositionshistorical) | **GET** /dapps/uniswapv3/positions/historical | Positions (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnaphotsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getpositionssnaphotshistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical | PositionsSnaphots (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getpositionssnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*UniswapV3Api* | [**uniswapV3GetSwapV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getswapv3dtoshistorical) | **GET** /dapps/uniswapv3/SwapV3DTOs/historical | SwapV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getswapscurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getswapshistorical) | **GET** /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTickDayDataV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettickdaydatav3dtoshistorical) | **GET** /dapps/uniswapv3/TickDayDataV3DTOs/historical | TickDayDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTickV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettickv3dtoshistorical) | **GET** /dapps/uniswapv3/TickV3DTOs/historical | TickV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTicksCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettickscurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3getticksdaydatacurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getticksdaydatahistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical | TicksDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTicksHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettickshistorical) | **GET** /dapps/uniswapv3/ticks/historical | Ticks (historical)
*UniswapV3Api* | [**uniswapV3GetTokenHourDataV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokenhourdatav3dtoshistorical) | **GET** /dapps/uniswapv3/TokenHourDataV3DTOs/historical | TokenHourDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokenv3dtoshistorical) | **GET** /dapps/uniswapv3/TokenV3DTOs/historical | TokenV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3DayDataDTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokenv3daydatadtoshistorical) | **GET** /dapps/uniswapv3/TokenV3DayDataDTOs/historical | TokenV3DayDataDTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettokensdaydatacurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*UniswapV3Api* | [**uniswapV3GetTokensDayDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokensdaydatahistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical | TokensDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTokensHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokenshistorical) | **GET** /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](docs/Api/UniswapV3Api.md#uniswapv3gettokenshourdatacurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
*UniswapV3Api* | [**uniswapV3GetTokensHourDataHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettokenshourdatahistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical | TokensHourData (historical)
*UniswapV3Api* | [**uniswapV3GetTransactionV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettransactionv3dtoshistorical) | **GET** /dapps/uniswapv3/TransactionV3DTOs/historical | TransactionV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTransactionsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3gettransactionshistorical) | **GET** /dapps/uniswapv3/transactions/historical | Transactions (historical)
*UniswapV3Api* | [**uniswapV3GetUniswapDayDataV3DTOsHistorical**](docs/Api/UniswapV3Api.md#uniswapv3getuniswapdaydatav3dtoshistorical) | **GET** /dapps/uniswapv3/UniswapDayDataV3DTOs/historical | UniswapDayDataV3DTOs (historical) 🔥

## Models

- [CowOrderDTO](docs/Model/CowOrderDTO.md)
- [CowSettlementDTO](docs/Model/CowSettlementDTO.md)
- [CowTokenDTO](docs/Model/CowTokenDTO.md)
- [CowTradeDTO](docs/Model/CowTradeDTO.md)
- [CowUserDTO](docs/Model/CowUserDTO.md)
- [CurveAccountDTO](docs/Model/CurveAccountDTO.md)
- [CurveAddLiquidityEventDTO](docs/Model/CurveAddLiquidityEventDTO.md)
- [CurveAdminFeeChangeLogDTO](docs/Model/CurveAdminFeeChangeLogDTO.md)
- [CurveAmplificationCoeffChangeLogDTO](docs/Model/CurveAmplificationCoeffChangeLogDTO.md)
- [CurveCoinDTO](docs/Model/CurveCoinDTO.md)
- [CurveContractDTO](docs/Model/CurveContractDTO.md)
- [CurveContractVersionDTO](docs/Model/CurveContractVersionDTO.md)
- [CurveDailyVolumeDTO](docs/Model/CurveDailyVolumeDTO.md)
- [CurveExchangeDTO](docs/Model/CurveExchangeDTO.md)
- [CurveFeeChangeLogDTO](docs/Model/CurveFeeChangeLogDTO.md)
- [CurveGaugeDTO](docs/Model/CurveGaugeDTO.md)
- [CurveGaugeDepositDTO](docs/Model/CurveGaugeDepositDTO.md)
- [CurveGaugeLiquidityDTO](docs/Model/CurveGaugeLiquidityDTO.md)
- [CurveGaugeTotalWeightDTO](docs/Model/CurveGaugeTotalWeightDTO.md)
- [CurveGaugeTypeDTO](docs/Model/CurveGaugeTypeDTO.md)
- [CurveGaugeTypeWeightDTO](docs/Model/CurveGaugeTypeWeightDTO.md)
- [CurveGaugeWeightDTO](docs/Model/CurveGaugeWeightDTO.md)
- [CurveGaugeWeightVoteDTO](docs/Model/CurveGaugeWeightVoteDTO.md)
- [CurveGaugeWithdrawDTO](docs/Model/CurveGaugeWithdrawDTO.md)
- [CurveHourlyVolumeDTO](docs/Model/CurveHourlyVolumeDTO.md)
- [CurveLpTokenDTO](docs/Model/CurveLpTokenDTO.md)
- [CurvePoolDTO](docs/Model/CurvePoolDTO.md)
- [CurveProposalDTO](docs/Model/CurveProposalDTO.md)
- [CurveProposalVoteDTO](docs/Model/CurveProposalVoteDTO.md)
- [CurveRemoveLiquidityEventDTO](docs/Model/CurveRemoveLiquidityEventDTO.md)
- [CurveRemoveLiquidityOneEventDTO](docs/Model/CurveRemoveLiquidityOneEventDTO.md)
- [CurveSystemStateDTO](docs/Model/CurveSystemStateDTO.md)
- [CurveTokenDTO](docs/Model/CurveTokenDTO.md)
- [CurveTransferOwnershipEventDTO](docs/Model/CurveTransferOwnershipEventDTO.md)
- [CurveUnderlyingCoinDTO](docs/Model/CurveUnderlyingCoinDTO.md)
- [CurveVotingAppDTO](docs/Model/CurveVotingAppDTO.md)
- [CurveWeeklyVolumeDTO](docs/Model/CurveWeeklyVolumeDTO.md)
- [DexBatchDTO](docs/Model/DexBatchDTO.md)
- [DexDepositDTO](docs/Model/DexDepositDTO.md)
- [DexOrderDTO](docs/Model/DexOrderDTO.md)
- [DexPriceDTO](docs/Model/DexPriceDTO.md)
- [DexSolutionDTO](docs/Model/DexSolutionDTO.md)
- [DexStatsDTO](docs/Model/DexStatsDTO.md)
- [DexTokenDTO](docs/Model/DexTokenDTO.md)
- [DexTradeDTO](docs/Model/DexTradeDTO.md)
- [DexUserDTO](docs/Model/DexUserDTO.md)
- [DexWithdrawDTO](docs/Model/DexWithdrawDTO.md)
- [DexWithdrawRequestDTO](docs/Model/DexWithdrawRequestDTO.md)
- [NumericsBigInteger](docs/Model/NumericsBigInteger.md)
- [SushiswapBundleDTO](docs/Model/SushiswapBundleDTO.md)
- [SushiswapBurnDTO](docs/Model/SushiswapBurnDTO.md)
- [SushiswapDayDataDTO](docs/Model/SushiswapDayDataDTO.md)
- [SushiswapFactoryDTO](docs/Model/SushiswapFactoryDTO.md)
- [SushiswapHourDataDTO](docs/Model/SushiswapHourDataDTO.md)
- [SushiswapLiquidityPositionDTO](docs/Model/SushiswapLiquidityPositionDTO.md)
- [SushiswapLiquidityPositionSnapshotDTO](docs/Model/SushiswapLiquidityPositionSnapshotDTO.md)
- [SushiswapMintDTO](docs/Model/SushiswapMintDTO.md)
- [SushiswapPairDTO](docs/Model/SushiswapPairDTO.md)
- [SushiswapPairDayDataDTO](docs/Model/SushiswapPairDayDataDTO.md)
- [SushiswapPairHourDataDTO](docs/Model/SushiswapPairHourDataDTO.md)
- [SushiswapSwapDTO](docs/Model/SushiswapSwapDTO.md)
- [SushiswapTokenDTO](docs/Model/SushiswapTokenDTO.md)
- [SushiswapTokenDayDataDTO](docs/Model/SushiswapTokenDayDataDTO.md)
- [SushiswapTransactionDTO](docs/Model/SushiswapTransactionDTO.md)
- [SushiswapUserDTO](docs/Model/SushiswapUserDTO.md)
- [TransactionsETradeAggressiveSide](docs/Model/TransactionsETradeAggressiveSide.md)
- [UniswapV2BundleV2DTO](docs/Model/UniswapV2BundleV2DTO.md)
- [UniswapV2BurnV2DTO](docs/Model/UniswapV2BurnV2DTO.md)
- [UniswapV2LiquidityPositionSnapshotV2DTO](docs/Model/UniswapV2LiquidityPositionSnapshotV2DTO.md)
- [UniswapV2LiquidityPositionV2DTO](docs/Model/UniswapV2LiquidityPositionV2DTO.md)
- [UniswapV2MintV2DTO](docs/Model/UniswapV2MintV2DTO.md)
- [UniswapV2PairDayDataV2DTO](docs/Model/UniswapV2PairDayDataV2DTO.md)
- [UniswapV2PairHourDataV2DTO](docs/Model/UniswapV2PairHourDataV2DTO.md)
- [UniswapV2PairV2DTO](docs/Model/UniswapV2PairV2DTO.md)
- [UniswapV2SwapV2DTO](docs/Model/UniswapV2SwapV2DTO.md)
- [UniswapV2TokenDayDataV2DTO](docs/Model/UniswapV2TokenDayDataV2DTO.md)
- [UniswapV2TokenV2DTO](docs/Model/UniswapV2TokenV2DTO.md)
- [UniswapV2TransactionV2DTO](docs/Model/UniswapV2TransactionV2DTO.md)
- [UniswapV2UniswapDayDataV2DTO](docs/Model/UniswapV2UniswapDayDataV2DTO.md)
- [UniswapV2UniswapFactoryV2DTO](docs/Model/UniswapV2UniswapFactoryV2DTO.md)
- [UniswapV2UserV2DTO](docs/Model/UniswapV2UserV2DTO.md)
- [UniswapV3BundleV3DTO](docs/Model/UniswapV3BundleV3DTO.md)
- [UniswapV3BurnV3DTO](docs/Model/UniswapV3BurnV3DTO.md)
- [UniswapV3FactoryV3DTO](docs/Model/UniswapV3FactoryV3DTO.md)
- [UniswapV3MintV3DTO](docs/Model/UniswapV3MintV3DTO.md)
- [UniswapV3PoolDayDataV3DTO](docs/Model/UniswapV3PoolDayDataV3DTO.md)
- [UniswapV3PoolHourDataV3DTO](docs/Model/UniswapV3PoolHourDataV3DTO.md)
- [UniswapV3PoolV3DTO](docs/Model/UniswapV3PoolV3DTO.md)
- [UniswapV3PositionSnapshotV3DTO](docs/Model/UniswapV3PositionSnapshotV3DTO.md)
- [UniswapV3PositionV3DTO](docs/Model/UniswapV3PositionV3DTO.md)
- [UniswapV3SwapV3DTO](docs/Model/UniswapV3SwapV3DTO.md)
- [UniswapV3TickDayDataV3DTO](docs/Model/UniswapV3TickDayDataV3DTO.md)
- [UniswapV3TickV3DTO](docs/Model/UniswapV3TickV3DTO.md)
- [UniswapV3TokenHourDataV3DTO](docs/Model/UniswapV3TokenHourDataV3DTO.md)
- [UniswapV3TokenV3DTO](docs/Model/UniswapV3TokenV3DTO.md)
- [UniswapV3TokenV3DayDataDTO](docs/Model/UniswapV3TokenV3DayDataDTO.md)
- [UniswapV3TransactionV3DTO](docs/Model/UniswapV3TransactionV3DTO.md)
- [UniswapV3UniswapDayDataV3DTO](docs/Model/UniswapV3UniswapDayDataV3DTO.md)

## Authorization
All endpoints do not require authorization.
## Tests

To run the tests, use:

```bash
composer install
vendor/bin/phpunit
```

## Author

support@coinapi.io

## About this package

This PHP package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: `v1`
- Build package: `org.openapitools.codegen.languages.PhpClientCodegen`
