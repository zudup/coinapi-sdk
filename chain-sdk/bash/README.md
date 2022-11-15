# OnChain API Bash client

## Overview

This is a Bash client script for accessing OnChain API service.

The script uses cURL underneath for making all REST calls.

## Usage

```shell
# Make sure the script has executable rights
$ chmod u+x 

# Print the list of operations available on the service
$ ./ -h

# Print the service description
$ ./ --about

# Print detailed information about specific operation
$ ./ <operationId> -h

# Make GET request
./ --host http://<hostname>:<port> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make GET request using arbitrary curl options (must be passed before <operationId>) to an SSL service using username:password
 -k -sS --tlsv1.2 --host https://<hostname> -u <user>:<password> --accept xml <operationId> <queryParam1>=<value1> <header_key1>:<header_value2>

# Make POST request
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> -

# Make POST request with simple JSON content, e.g.:
# {
#   "key1": "value1",
#   "key2": "value2",
#   "key3": 23
# }
$ echo '<body_content>' |  --host <hostname> --content-type json <operationId> key1==value1 key2=value2 key3:=23 -

# Make POST request with form data
$  --host <hostname> <operationId> key1:=value1 key2:=value2 key3:=23

# Preview the cURL command without actually executing it
$  --host http://<hostname>:<port> --dry-run <operationid>

```

## Docker image

You can easily create a Docker image containing a preconfigured environment
for using the REST Bash client including working autocompletion and short
welcome message with basic instructions, using the generated Dockerfile:

```shell
docker build -t my-rest-client .
docker run -it my-rest-client
```

By default you will be logged into a Zsh environment which has much more
advanced auto completion, but you can switch to Bash, where basic autocompletion
is also available.

## Shell completion

### Bash

The generated bash-completion script can be either directly loaded to the current Bash session using:

```shell
source .bash-completion
```

Alternatively, the script can be copied to the `/etc/bash-completion.d` (or on OSX with Homebrew to `/usr/local/etc/bash-completion.d`):

```shell
sudo cp .bash-completion /etc/bash-completion.d/
```

#### OS X

On OSX you might need to install bash-completion using Homebrew:

```shell
brew install bash-completion
```

and add the following to the `~/.bashrc`:

```shell
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
```

### Zsh

In Zsh, the generated `_` Zsh completion file must be copied to one of the folders under `$FPATH` variable.

## Documentation for API Endpoints

All URIs are relative to **

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CowApi* | [**cowGetOrderDTOsHistorical**](docs/CowApi.md#cowgetorderdtoshistorical) | **GET** /dapps/cow/OrderDTOs/historical | OrderDTOs (historical) 🔥
*CowApi* | [**cowGetOrdersHistorical**](docs/CowApi.md#cowgetordershistorical) | **GET** /dapps/cow/orders/historical | Orders (historical)
*CowApi* | [**cowGetSettlementDTOsHistorical**](docs/CowApi.md#cowgetsettlementdtoshistorical) | **GET** /dapps/cow/SettlementDTOs/historical | SettlementDTOs (historical) 🔥
*CowApi* | [**cowGetSettlementsHistorical**](docs/CowApi.md#cowgetsettlementshistorical) | **GET** /dapps/cow/settlements/historical | Settlements (historical)
*CowApi* | [**cowGetTokenDTOsHistorical**](docs/CowApi.md#cowgettokendtoshistorical) | **GET** /dapps/cow/TokenDTOs/historical | TokenDTOs (historical) 🔥
*CowApi* | [**cowGetTokensHistorical**](docs/CowApi.md#cowgettokenshistorical) | **GET** /dapps/cow/tokens/historical | Tokens (historical) 🔥
*CowApi* | [**cowGetTradeDTOsHistorical**](docs/CowApi.md#cowgettradedtoshistorical) | **GET** /dapps/cow/TradeDTOs/historical | TradeDTOs (historical) 🔥
*CowApi* | [**cowGetTradesHistorical**](docs/CowApi.md#cowgettradeshistorical) | **GET** /dapps/cow/trades/historical | Trades (historical) 🔥
*CowApi* | [**cowGetUserDTOsHistorical**](docs/CowApi.md#cowgetuserdtoshistorical) | **GET** /dapps/cow/UserDTOs/historical | UserDTOs (historical) 🔥
*CowApi* | [**cowGetUsersHistorical**](docs/CowApi.md#cowgetusershistorical) | **GET** /dapps/cow/users/historical | Users (historical)
*CurveApi* | [**curveGetAccountDTOsHistorical**](docs/CurveApi.md#curvegetaccountdtoshistorical) | **GET** /dapps/curve/AccountDTOs/historical | AccountDTOs (historical) 🔥
*CurveApi* | [**curveGetAccountsHistorical**](docs/CurveApi.md#curvegetaccountshistorical) | **GET** /dapps/curve/accounts/historical | Accounts (historical)
*CurveApi* | [**curveGetAddLiquidityEventDTOsHistorical**](docs/CurveApi.md#curvegetaddliquidityeventdtoshistorical) | **GET** /dapps/curve/AddLiquidityEventDTOs/historical | AddLiquidityEventDTOs (historical) 🔥
*CurveApi* | [**curveGetAddLiquidityEventsHistorical**](docs/CurveApi.md#curvegetaddliquidityeventshistorical) | **GET** /dapps/curve/addLiquidityEvents/historical | AddLiquidityEvents (historical)
*CurveApi* | [**curveGetAdminFeeChangeLogDTOsHistorical**](docs/CurveApi.md#curvegetadminfeechangelogdtoshistorical) | **GET** /dapps/curve/AdminFeeChangeLogDTOs/historical | AdminFeeChangeLogDTOs (historical) 🔥
*CurveApi* | [**curveGetAdminFeeChangeLogsHistorical**](docs/CurveApi.md#curvegetadminfeechangelogshistorical) | **GET** /dapps/curve/adminFeeChangeLogs/historical | AdminFeeChangeLogs (historical)
*CurveApi* | [**curveGetAmplificationCoeffChangeLogDTOsHistorical**](docs/CurveApi.md#curvegetamplificationcoeffchangelogdtoshistorical) | **GET** /dapps/curve/AmplificationCoeffChangeLogDTOs/historical | AmplificationCoeffChangeLogDTOs (historical) 🔥
*CurveApi* | [**curveGetAmplificationCoeffChangeLogsHistorical**](docs/CurveApi.md#curvegetamplificationcoeffchangelogshistorical) | **GET** /dapps/curve/amplificationCoeffChangeLogs/historical | AmplificationCoeffChangeLogs (historical)
*CurveApi* | [**curveGetCoinDTOsHistorical**](docs/CurveApi.md#curvegetcoindtoshistorical) | **GET** /dapps/curve/CoinDTOs/historical | CoinDTOs (historical) 🔥
*CurveApi* | [**curveGetCoinsHistorical**](docs/CurveApi.md#curvegetcoinshistorical) | **GET** /dapps/curve/coins/historical | Coins (historical)
*CurveApi* | [**curveGetContractDTOsHistorical**](docs/CurveApi.md#curvegetcontractdtoshistorical) | **GET** /dapps/curve/ContractDTOs/historical | ContractDTOs (historical) 🔥
*CurveApi* | [**curveGetContractVersionDTOsHistorical**](docs/CurveApi.md#curvegetcontractversiondtoshistorical) | **GET** /dapps/curve/ContractVersionDTOs/historical | ContractVersionDTOs (historical) 🔥
*CurveApi* | [**curveGetContractsHistorical**](docs/CurveApi.md#curvegetcontractshistorical) | **GET** /dapps/curve/contracts/historical | Contracts (historical)
*CurveApi* | [**curveGetContractsVersionsHistorical**](docs/CurveApi.md#curvegetcontractsversionshistorical) | **GET** /dapps/curve/contractsVersions/historical | ContractsVersions (historical)
*CurveApi* | [**curveGetDailyVolumeDTOsHistorical**](docs/CurveApi.md#curvegetdailyvolumedtoshistorical) | **GET** /dapps/curve/DailyVolumeDTOs/historical | DailyVolumeDTOs (historical) 🔥
*CurveApi* | [**curveGetDailyVolumesHistorical**](docs/CurveApi.md#curvegetdailyvolumeshistorical) | **GET** /dapps/curve/dailyVolumes/historical | DailyVolumes (historical)
*CurveApi* | [**curveGetExchangeDTOsHistorical**](docs/CurveApi.md#curvegetexchangedtoshistorical) | **GET** /dapps/curve/ExchangeDTOs/historical | ExchangeDTOs (historical) 🔥
*CurveApi* | [**curveGetExchangesHistorical**](docs/CurveApi.md#curvegetexchangeshistorical) | **GET** /dapps/curve/exchanges/historical | Exchanges (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogDTOsHistorical**](docs/CurveApi.md#curvegetfeechangelogdtoshistorical) | **GET** /dapps/curve/FeeChangeLogDTOs/historical | FeeChangeLogDTOs (historical) 🔥
*CurveApi* | [**curveGetFeeChangeLogsHistorical**](docs/CurveApi.md#curvegetfeechangelogshistorical) | **GET** /dapps/curve/feeChangeLogs/historical | FeeChangeLogs (historical)
*CurveApi* | [**curveGetGaugeDTOsHistorical**](docs/CurveApi.md#curvegetgaugedtoshistorical) | **GET** /dapps/curve/GaugeDTOs/historical | GaugeDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeDepositDTOsHistorical**](docs/CurveApi.md#curvegetgaugedepositdtoshistorical) | **GET** /dapps/curve/GaugeDepositDTOs/historical | GaugeDepositDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeLiquidityDTOsHistorical**](docs/CurveApi.md#curvegetgaugeliquiditydtoshistorical) | **GET** /dapps/curve/GaugeLiquidityDTOs/historical | GaugeLiquidityDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeTotalWeightDTOsHistorical**](docs/CurveApi.md#curvegetgaugetotalweightdtoshistorical) | **GET** /dapps/curve/GaugeTotalWeightDTOs/historical | GaugeTotalWeightDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeTypeDTOsHistorical**](docs/CurveApi.md#curvegetgaugetypedtoshistorical) | **GET** /dapps/curve/GaugeTypeDTOs/historical | GaugeTypeDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeTypeWeightDTOsHistorical**](docs/CurveApi.md#curvegetgaugetypeweightdtoshistorical) | **GET** /dapps/curve/GaugeTypeWeightDTOs/historical | GaugeTypeWeightDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightDTOsHistorical**](docs/CurveApi.md#curvegetgaugeweightdtoshistorical) | **GET** /dapps/curve/GaugeWeightDTOs/historical | GaugeWeightDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeWeightVoteDTOsHistorical**](docs/CurveApi.md#curvegetgaugeweightvotedtoshistorical) | **GET** /dapps/curve/GaugeWeightVoteDTOs/historical | GaugeWeightVoteDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugeWithdrawDTOsHistorical**](docs/CurveApi.md#curvegetgaugewithdrawdtoshistorical) | **GET** /dapps/curve/GaugeWithdrawDTOs/historical | GaugeWithdrawDTOs (historical) 🔥
*CurveApi* | [**curveGetGaugesDepositsHistorical**](docs/CurveApi.md#curvegetgaugesdepositshistorical) | **GET** /dapps/curve/gaugesDeposits/historical | GaugesDeposits (historical)
*CurveApi* | [**curveGetGaugesHistorical**](docs/CurveApi.md#curvegetgaugeshistorical) | **GET** /dapps/curve/gauges/historical | Gauges (historical)
*CurveApi* | [**curveGetGaugesLiquidityHistorical**](docs/CurveApi.md#curvegetgaugesliquidityhistorical) | **GET** /dapps/curve/gaugesLiquidity/historical | GaugesLiquidity (historical)
*CurveApi* | [**curveGetGaugesTotalWeightsHistorical**](docs/CurveApi.md#curvegetgaugestotalweightshistorical) | **GET** /dapps/curve/gaugesTotalWeights/historical | GaugesTotalWeights (historical)
*CurveApi* | [**curveGetGaugesTypesHistorical**](docs/CurveApi.md#curvegetgaugestypeshistorical) | **GET** /dapps/curve/gaugesTypes/historical | GaugesTypes (historical)
*CurveApi* | [**curveGetGaugesTypesWeightsHistorical**](docs/CurveApi.md#curvegetgaugestypesweightshistorical) | **GET** /dapps/curve/gaugesTypesWeights/historical | GaugesTypesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsHistorical**](docs/CurveApi.md#curvegetgaugesweightshistorical) | **GET** /dapps/curve/gaugesWeights/historical | GaugesWeights (historical)
*CurveApi* | [**curveGetGaugesWeightsVotesHistorical**](docs/CurveApi.md#curvegetgaugesweightsvoteshistorical) | **GET** /dapps/curve/gaugesWeightsVotes/historical | GaugesWeightsVotes (historical)
*CurveApi* | [**curveGetGaugesWithdrawHistorical**](docs/CurveApi.md#curvegetgaugeswithdrawhistorical) | **GET** /dapps/curve/gaugesWithdraws/historical | GaugesWithdraw (historical)
*CurveApi* | [**curveGetHourlyVolumeDTOsHistorical**](docs/CurveApi.md#curvegethourlyvolumedtoshistorical) | **GET** /dapps/curve/HourlyVolumeDTOs/historical | HourlyVolumeDTOs (historical) 🔥
*CurveApi* | [**curveGetHourlyVolumesHistorical**](docs/CurveApi.md#curvegethourlyvolumeshistorical) | **GET** /dapps/curve/hourlyVolumes/historical | HourlyVolumes (historical)
*CurveApi* | [**curveGetLpTokenDTOsHistorical**](docs/CurveApi.md#curvegetlptokendtoshistorical) | **GET** /dapps/curve/LpTokenDTOs/historical | LpTokenDTOs (historical) 🔥
*CurveApi* | [**curveGetLpTokensHistorical**](docs/CurveApi.md#curvegetlptokenshistorical) | **GET** /dapps/curve/lpTokens/historical | LpTokens (historical)
*CurveApi* | [**curveGetPoolDTOsHistorical**](docs/CurveApi.md#curvegetpooldtoshistorical) | **GET** /dapps/curve/PoolDTOs/historical | PoolDTOs (historical) 🔥
*CurveApi* | [**curveGetPoolsHistorical**](docs/CurveApi.md#curvegetpoolshistorical) | **GET** /dapps/curve/pools/historical | Pools (historical) 🔥
*CurveApi* | [**curveGetProposalDTOsHistorical**](docs/CurveApi.md#curvegetproposaldtoshistorical) | **GET** /dapps/curve/ProposalDTOs/historical | ProposalDTOs (historical) 🔥
*CurveApi* | [**curveGetProposalVoteDTOsHistorical**](docs/CurveApi.md#curvegetproposalvotedtoshistorical) | **GET** /dapps/curve/ProposalVoteDTOs/historical | ProposalVoteDTOs (historical) 🔥
*CurveApi* | [**curveGetProposalsHistorical**](docs/CurveApi.md#curvegetproposalshistorical) | **GET** /dapps/curve/proposals/historical | Proposals (historical)
*CurveApi* | [**curveGetProposalsVotesHistorical**](docs/CurveApi.md#curvegetproposalsvoteshistorical) | **GET** /dapps/curve/proposalsVotes/historical | ProposalsVotes (historical)
*CurveApi* | [**curveGetRemoveLiquidityEventDTOsHistorical**](docs/CurveApi.md#curvegetremoveliquidityeventdtoshistorical) | **GET** /dapps/curve/RemoveLiquidityEventDTOs/historical | RemoveLiquidityEventDTOs (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityEventsHistorical**](docs/CurveApi.md#curvegetremoveliquidityeventshistorical) | **GET** /dapps/curve/removeLiquidityEvents/historical | RemoveLiquidityEvents (historical)
*CurveApi* | [**curveGetRemoveLiquidityOneEventDTOsHistorical**](docs/CurveApi.md#curvegetremoveliquidityoneeventdtoshistorical) | **GET** /dapps/curve/RemoveLiquidityOneEventDTOs/historical | RemoveLiquidityOneEventDTOs (historical) 🔥
*CurveApi* | [**curveGetRemoveLiquidityOneEventsHistorical**](docs/CurveApi.md#curvegetremoveliquidityoneeventshistorical) | **GET** /dapps/curve/removeLiquidityOneEvents/historical | RemoveLiquidityOneEvents (historical)
*CurveApi* | [**curveGetSystemStateDTOsHistorical**](docs/CurveApi.md#curvegetsystemstatedtoshistorical) | **GET** /dapps/curve/SystemStateDTOs/historical | SystemStateDTOs (historical) 🔥
*CurveApi* | [**curveGetSystemStatesHistorical**](docs/CurveApi.md#curvegetsystemstateshistorical) | **GET** /dapps/curve/systemStates/historical | SystemStates (historical)
*CurveApi* | [**curveGetTokenDTOsHistorical**](docs/CurveApi.md#curvegettokendtoshistorical) | **GET** /dapps/curve/TokenDTOs/historical | TokenDTOs (historical) 🔥
*CurveApi* | [**curveGetTokensHistorical**](docs/CurveApi.md#curvegettokenshistorical) | **GET** /dapps/curve/tokens/historical | Tokens (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventDTOsHistorical**](docs/CurveApi.md#curvegettransferownershipeventdtoshistorical) | **GET** /dapps/curve/TransferOwnershipEventDTOs/historical | TransferOwnershipEventDTOs (historical) 🔥
*CurveApi* | [**curveGetTransferOwnershipEventsHistorical**](docs/CurveApi.md#curvegettransferownershipeventshistorical) | **GET** /dapps/curve/transferOwnershipEvents/historical | TransferOwnershipEvents (historical)
*CurveApi* | [**curveGetUnderlyingCoinDTOsHistorical**](docs/CurveApi.md#curvegetunderlyingcoindtoshistorical) | **GET** /dapps/curve/UnderlyingCoinDTOs/historical | UnderlyingCoinDTOs (historical) 🔥
*CurveApi* | [**curveGetUnderlyingCoinsHistorical**](docs/CurveApi.md#curvegetunderlyingcoinshistorical) | **GET** /dapps/curve/underlyingCoins/historical | UnderlyingCoins (historical)
*CurveApi* | [**curveGetVotingAppDTOsHistorical**](docs/CurveApi.md#curvegetvotingappdtoshistorical) | **GET** /dapps/curve/VotingAppDTOs/historical | VotingAppDTOs (historical) 🔥
*CurveApi* | [**curveGetVotingAppsHistorical**](docs/CurveApi.md#curvegetvotingappshistorical) | **GET** /dapps/curve/votingApps/historical | VotingApps (historical)
*CurveApi* | [**curveGetWeeklyVolumeDTOsHistorical**](docs/CurveApi.md#curvegetweeklyvolumedtoshistorical) | **GET** /dapps/curve/WeeklyVolumeDTOs/historical | WeeklyVolumeDTOs (historical) 🔥
*CurveApi* | [**curveGetWeeklyVolumesHistorical**](docs/CurveApi.md#curvegetweeklyvolumeshistorical) | **GET** /dapps/curve/weeklyVolumes/historical | WeeklyVolumes (historical)
*DexApi* | [**dexGetBatchDTOsHistorical**](docs/DexApi.md#dexgetbatchdtoshistorical) | **GET** /dapps/dex/BatchDTOs/historical | BatchDTOs (historical) 🔥
*DexApi* | [**dexGetBatchesHistorical**](docs/DexApi.md#dexgetbatcheshistorical) | **GET** /dapps/dex/batches/historical | Batches (historical)
*DexApi* | [**dexGetDepositDTOsHistorical**](docs/DexApi.md#dexgetdepositdtoshistorical) | **GET** /dapps/dex/DepositDTOs/historical | DepositDTOs (historical) 🔥
*DexApi* | [**dexGetDepositsHistorical**](docs/DexApi.md#dexgetdepositshistorical) | **GET** /dapps/dex/deposits/historical | Deposits (historical)
*DexApi* | [**dexGetOrderDTOsHistorical**](docs/DexApi.md#dexgetorderdtoshistorical) | **GET** /dapps/dex/OrderDTOs/historical | OrderDTOs (historical) 🔥
*DexApi* | [**dexGetOrdersHistorical**](docs/DexApi.md#dexgetordershistorical) | **GET** /dapps/dex/orders/historical | Orders (historical)
*DexApi* | [**dexGetPriceDTOsHistorical**](docs/DexApi.md#dexgetpricedtoshistorical) | **GET** /dapps/dex/PriceDTOs/historical | PriceDTOs (historical) 🔥
*DexApi* | [**dexGetPricesHistorical**](docs/DexApi.md#dexgetpriceshistorical) | **GET** /dapps/dex/prices/historical | Prices (historical)
*DexApi* | [**dexGetSolutionDTOsHistorical**](docs/DexApi.md#dexgetsolutiondtoshistorical) | **GET** /dapps/dex/SolutionDTOs/historical | SolutionDTOs (historical) 🔥
*DexApi* | [**dexGetSolutionsHistorical**](docs/DexApi.md#dexgetsolutionshistorical) | **GET** /dapps/dex/solutions/historical | Solutions (historical)
*DexApi* | [**dexGetStatsDTOsHistorical**](docs/DexApi.md#dexgetstatsdtoshistorical) | **GET** /dapps/dex/StatsDTOs/historical | StatsDTOs (historical) 🔥
*DexApi* | [**dexGetStatsHistorical**](docs/DexApi.md#dexgetstatshistorical) | **GET** /dapps/dex/stats/historical | Stats (historical)
*DexApi* | [**dexGetTokenDTOsHistorical**](docs/DexApi.md#dexgettokendtoshistorical) | **GET** /dapps/dex/TokenDTOs/historical | TokenDTOs (historical) 🔥
*DexApi* | [**dexGetTokensHistorical**](docs/DexApi.md#dexgettokenshistorical) | **GET** /dapps/dex/tokens/historical | Tokens (historical) 🔥
*DexApi* | [**dexGetTradeDTOsHistorical**](docs/DexApi.md#dexgettradedtoshistorical) | **GET** /dapps/dex/TradeDTOs/historical | TradeDTOs (historical) 🔥
*DexApi* | [**dexGetTradesHistorical**](docs/DexApi.md#dexgettradeshistorical) | **GET** /dapps/dex/trades/historical | Trades (historical) 🔥
*DexApi* | [**dexGetUserDTOsHistorical**](docs/DexApi.md#dexgetuserdtoshistorical) | **GET** /dapps/dex/UserDTOs/historical | UserDTOs (historical) 🔥
*DexApi* | [**dexGetUsersHistorical**](docs/DexApi.md#dexgetusershistorical) | **GET** /dapps/dex/users/historical | Users (historical)
*DexApi* | [**dexGetWithdrawDTOsHistorical**](docs/DexApi.md#dexgetwithdrawdtoshistorical) | **GET** /dapps/dex/WithdrawDTOs/historical | WithdrawDTOs (historical) 🔥
*DexApi* | [**dexGetWithdrawRequestDTOsHistorical**](docs/DexApi.md#dexgetwithdrawrequestdtoshistorical) | **GET** /dapps/dex/WithdrawRequestDTOs/historical | WithdrawRequestDTOs (historical) 🔥
*DexApi* | [**dexGetWithdrawsHistorical**](docs/DexApi.md#dexgetwithdrawshistorical) | **GET** /dapps/dex/withdraws/historical | Withdraws (historical)
*DexApi* | [**dexGetWithdrawsRequestsHistorical**](docs/DexApi.md#dexgetwithdrawsrequestshistorical) | **GET** /dapps/dex/withdrawsRequests/historical | WithdrawsRequests (historical)
*SushiswapApi* | [**curveGetExchangesCurrent**](docs/SushiswapApi.md#curvegetexchangescurrent) | **GET** /dapps/sushiswap/exchanges/current | Exchanges (current) 🔥
*SushiswapApi* | [**dexGetTradesCurrent**](docs/SushiswapApi.md#dexgettradescurrent) | **GET** /dapps/sushiswap/trades/current | Trades (current) 🔥
*SushiswapApi* | [**sushiswapGetBundleDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetbundledtoshistorical) | **GET** /dapps/sushiswap/BundleDTOs/historical | BundleDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetBundlesHistorical**](docs/SushiswapApi.md#sushiswapgetbundleshistorical) | **GET** /dapps/sushiswap/bundles/historical | Bundles (historical)
*SushiswapApi* | [**sushiswapGetBurnDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetburndtoshistorical) | **GET** /dapps/sushiswap/BurnDTOs/historical | BurnDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetBurnsHistorical**](docs/SushiswapApi.md#sushiswapgetburnshistorical) | **GET** /dapps/sushiswap/burns/historical | Burns (historical)
*SushiswapApi* | [**sushiswapGetDayDataDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetdaydatadtoshistorical) | **GET** /dapps/sushiswap/DayDataDTOs/historical | DayDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetDayDataHistorical**](docs/SushiswapApi.md#sushiswapgetdaydatahistorical) | **GET** /dapps/sushiswap/dayData/historical | DayData (historical)
*SushiswapApi* | [**sushiswapGetFactoryDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetfactorydtoshistorical) | **GET** /dapps/sushiswap/FactoryDTOs/historical | FactoryDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetFactoryHistorical**](docs/SushiswapApi.md#sushiswapgetfactoryhistorical) | **GET** /dapps/sushiswap/factory/historical | Factory (historical)
*SushiswapApi* | [**sushiswapGetHourDataDTOsHistorical**](docs/SushiswapApi.md#sushiswapgethourdatadtoshistorical) | **GET** /dapps/sushiswap/HourDataDTOs/historical | HourDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetHourDataHistorical**](docs/SushiswapApi.md#sushiswapgethourdatahistorical) | **GET** /dapps/sushiswap/hourData/historical | HourData (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetliquiditypositiondtoshistorical) | **GET** /dapps/sushiswap/LiquidityPositionDTOs/historical | LiquidityPositionDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionHistorical**](docs/SushiswapApi.md#sushiswapgetliquiditypositionhistorical) | **GET** /dapps/sushiswap/liquidityPosition/historical | LiquidityPosition (historical)
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetliquiditypositionsnapshotdtoshistorical) | **GET** /dapps/sushiswap/LiquidityPositionSnapshotDTOs/historical | LiquidityPositionSnapshotDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetLiquidityPositionSnapshotHistorical**](docs/SushiswapApi.md#sushiswapgetliquiditypositionsnapshothistorical) | **GET** /dapps/sushiswap/liquidityPositionSnapshots/historical | LiquidityPositionSnapshot (historical)
*SushiswapApi* | [**sushiswapGetMintDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetmintdtoshistorical) | **GET** /dapps/sushiswap/MintDTOs/historical | MintDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetMintsHistorical**](docs/SushiswapApi.md#sushiswapgetmintshistorical) | **GET** /dapps/sushiswap/mints/historical | Mints (historical)
*SushiswapApi* | [**sushiswapGetPairDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetpairdtoshistorical) | **GET** /dapps/sushiswap/PairDTOs/historical | PairDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairDayDataDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetpairdaydatadtoshistorical) | **GET** /dapps/sushiswap/PairDayDataDTOs/historical | PairDayDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPairHourDataDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetpairhourdatadtoshistorical) | **GET** /dapps/sushiswap/PairHourDataDTOs/historical | PairHourDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsCurrent**](docs/SushiswapApi.md#sushiswapgetpoolscurrent) | **GET** /dapps/sushiswap/pools/current | Pools (current) 🔥
*SushiswapApi* | [**sushiswapGetPoolsDayDataHistorical**](docs/SushiswapApi.md#sushiswapgetpoolsdaydatahistorical) | **GET** /dapps/sushiswap/poolsDayData/historical | PoolsDayData (historical)
*SushiswapApi* | [**sushiswapGetPoolsHistorical**](docs/SushiswapApi.md#sushiswapgetpoolshistorical) | **GET** /dapps/sushiswap/pools/historical | Pools (historical) 🔥
*SushiswapApi* | [**sushiswapGetPoolsHourDataHistorical**](docs/SushiswapApi.md#sushiswapgetpoolshourdatahistorical) | **GET** /dapps/sushiswap/poolsHourData/historical | PoolsHourData (historical)
*SushiswapApi* | [**sushiswapGetSwapDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetswapdtoshistorical) | **GET** /dapps/sushiswap/SwapDTOs/historical | SwapDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetSwapsCurrent**](docs/SushiswapApi.md#sushiswapgetswapscurrent) | **GET** /dapps/sushiswap/swaps/current | Swaps (current) 🔥
*SushiswapApi* | [**sushiswapGetSwapsHistorical**](docs/SushiswapApi.md#sushiswapgetswapshistorical) | **GET** /dapps/sushiswap/swaps/historical | Swaps (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokenDTOsHistorical**](docs/SushiswapApi.md#sushiswapgettokendtoshistorical) | **GET** /dapps/sushiswap/TokenDTOs/historical | TokenDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokenDayDataDTOsHistorical**](docs/SushiswapApi.md#sushiswapgettokendaydatadtoshistorical) | **GET** /dapps/sushiswap/TokenDayDataDTOs/historical | TokenDayDataDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetTokensCurrent**](docs/SushiswapApi.md#sushiswapgettokenscurrent) | **GET** /dapps/sushiswap/tokens/current | Tokens (current) 🔥
*SushiswapApi* | [**sushiswapGetTokensDayDataHistorical**](docs/SushiswapApi.md#sushiswapgettokensdaydatahistorical) | **GET** /dapps/sushiswap/tokensDayData/historical | TokensDayData (historical)
*SushiswapApi* | [**sushiswapGetTokensHistorical**](docs/SushiswapApi.md#sushiswapgettokenshistorical) | **GET** /dapps/sushiswap/tokens/historical | Tokens (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionDTOsHistorical**](docs/SushiswapApi.md#sushiswapgettransactiondtoshistorical) | **GET** /dapps/sushiswap/TransactionDTOs/historical | TransactionDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetTransactionsHistorical**](docs/SushiswapApi.md#sushiswapgettransactionshistorical) | **GET** /dapps/sushiswap/transactions/historical | Transactions (historical)
*SushiswapApi* | [**sushiswapGetUserDTOsHistorical**](docs/SushiswapApi.md#sushiswapgetuserdtoshistorical) | **GET** /dapps/sushiswap/UserDTOs/historical | UserDTOs (historical) 🔥
*SushiswapApi* | [**sushiswapGetUsersHistorical**](docs/SushiswapApi.md#sushiswapgetusershistorical) | **GET** /dapps/sushiswap/users/historical | Users (historical)
*UniswapV2Api* | [**uniswapV2GetBundleV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getbundlev2dtoshistorical) | **GET** /dapps/uniswapv2/BundleV2DTOs/historical | BundleV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBundlesHistorical**](docs/UniswapV2Api.md#uniswapv2getbundleshistorical) | **GET** /dapps/uniswapv2/bundles/historical | Bundles (historical)
*UniswapV2Api* | [**uniswapV2GetBurnV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getburnv2dtoshistorical) | **GET** /dapps/uniswapv2/BurnV2DTOs/historical | BurnV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetBurnsHistorical**](docs/UniswapV2Api.md#uniswapv2getburnshistorical) | **GET** /dapps/uniswapv2/burns/historical | Burns (historical)
*UniswapV2Api* | [**uniswapV2GetDayDataHistorical**](docs/UniswapV2Api.md#uniswapv2getdaydatahistorical) | **GET** /dapps/uniswapv2/dayData/historical | DayData (historical)
*UniswapV2Api* | [**uniswapV2GetFactoryHistorical**](docs/UniswapV2Api.md#uniswapv2getfactoryhistorical) | **GET** /dapps/uniswapv2/factory/historical | Factory (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getliquiditypositionsnapshotv2dtoshistorical) | **GET** /dapps/uniswapv2/LiquidityPositionSnapshotV2DTOs/historical | LiquidityPositionSnapshotV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getliquiditypositionv2dtoshistorical) | **GET** /dapps/uniswapv2/LiquidityPositionV2DTOs/historical | LiquidityPositionV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsHistorical**](docs/UniswapV2Api.md#uniswapv2getliquiditypositionshistorical) | **GET** /dapps/uniswapv2/liquidityPositions/historical | LiquidityPositions (historical)
*UniswapV2Api* | [**uniswapV2GetLiquidityPositionsSnapshotsHistorical**](docs/UniswapV2Api.md#uniswapv2getliquiditypositionssnapshotshistorical) | **GET** /dapps/uniswapv2/liquidityPositionsSnapshots/historical | LiquidityPositionsSnapshots (historical)
*UniswapV2Api* | [**uniswapV2GetMintV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getmintv2dtoshistorical) | **GET** /dapps/uniswapv2/MintV2DTOs/historical | MintV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetMintsHistorical**](docs/UniswapV2Api.md#uniswapv2getmintshistorical) | **GET** /dapps/uniswapv2/mints/historical | Mints (historical)
*UniswapV2Api* | [**uniswapV2GetPairDayDataV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getpairdaydatav2dtoshistorical) | **GET** /dapps/uniswapv2/PairDayDataV2DTOs/historical | PairDayDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairHourDataV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getpairhourdatav2dtoshistorical) | **GET** /dapps/uniswapv2/PairHourDataV2DTOs/historical | PairHourDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPairV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getpairv2dtoshistorical) | **GET** /dapps/uniswapv2/PairV2DTOs/historical | PairV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsCurrent**](docs/UniswapV2Api.md#uniswapv2getpoolscurrent) | **GET** /dapps/uniswapv2/pools/current | Pools (current) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsDayDataHistorical**](docs/UniswapV2Api.md#uniswapv2getpoolsdaydatahistorical) | **GET** /dapps/uniswapv2/poolsDayData/historical | PoolsDayData (historical)
*UniswapV2Api* | [**uniswapV2GetPoolsHistorical**](docs/UniswapV2Api.md#uniswapv2getpoolshistorical) | **GET** /dapps/uniswapv2/pools/historical | Pools (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetPoolsHourDataHistorical**](docs/UniswapV2Api.md#uniswapv2getpoolshourdatahistorical) | **GET** /dapps/uniswapv2/poolsHourData/historical | PoolsHourData (historical)
*UniswapV2Api* | [**uniswapV2GetSwapV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getswapv2dtoshistorical) | **GET** /dapps/uniswapv2/SwapV2DTOs/historical | SwapV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsCurrent**](docs/UniswapV2Api.md#uniswapv2getswapscurrent) | **GET** /dapps/uniswapv2/swaps/current | Swaps (current) 🔥
*UniswapV2Api* | [**uniswapV2GetSwapsHistorical**](docs/UniswapV2Api.md#uniswapv2getswapshistorical) | **GET** /dapps/uniswapv2/swaps/historical | Swaps (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenDayDataV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2gettokendaydatav2dtoshistorical) | **GET** /dapps/uniswapv2/TokenDayDataV2DTOs/historical | TokenDayDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokenV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2gettokenv2dtoshistorical) | **GET** /dapps/uniswapv2/TokenV2DTOs/historical | TokenV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensCurrent**](docs/UniswapV2Api.md#uniswapv2gettokenscurrent) | **GET** /dapps/uniswapv2/tokens/current | Tokens (current) 🔥
*UniswapV2Api* | [**uniswapV2GetTokensDayDataHistorical**](docs/UniswapV2Api.md#uniswapv2gettokensdaydatahistorical) | **GET** /dapps/uniswapv2/tokensDayData/historical | TokensDayData (historical)
*UniswapV2Api* | [**uniswapV2GetTokensHistorical**](docs/UniswapV2Api.md#uniswapv2gettokenshistorical) | **GET** /dapps/uniswapv2/tokens/historical | Tokens (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2gettransactionv2dtoshistorical) | **GET** /dapps/uniswapv2/TransactionV2DTOs/historical | TransactionV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetTransactionsHistorical**](docs/UniswapV2Api.md#uniswapv2gettransactionshistorical) | **GET** /dapps/uniswapv2/transactions/historical | Transactions (historical)
*UniswapV2Api* | [**uniswapV2GetUniswapDayDataV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getuniswapdaydatav2dtoshistorical) | **GET** /dapps/uniswapv2/UniswapDayDataV2DTOs/historical | UniswapDayDataV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUniswapFactoryV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getuniswapfactoryv2dtoshistorical) | **GET** /dapps/uniswapv2/UniswapFactoryV2DTOs/historical | UniswapFactoryV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUserV2DTOsHistorical**](docs/UniswapV2Api.md#uniswapv2getuserv2dtoshistorical) | **GET** /dapps/uniswapv2/UserV2DTOs/historical | UserV2DTOs (historical) 🔥
*UniswapV2Api* | [**uniswapV2GetUsersHistorical**](docs/UniswapV2Api.md#uniswapv2getusershistorical) | **GET** /dapps/uniswapv2/users/historical | Users (historical)
*UniswapV3Api* | [**uniswapV3GetBundleV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getbundlev3dtoshistorical) | **GET** /dapps/uniswapv3/BundleV3DTOs/historical | BundleV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBundlesCurrent**](docs/UniswapV3Api.md#uniswapv3getbundlescurrent) | **GET** /dapps/uniswapv3/bundles/current | Bundles (current)
*UniswapV3Api* | [**uniswapV3GetBundlesHistorical**](docs/UniswapV3Api.md#uniswapv3getbundleshistorical) | **GET** /dapps/uniswapv3/bundles/historical | Bundles (historical)
*UniswapV3Api* | [**uniswapV3GetBurnV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getburnv3dtoshistorical) | **GET** /dapps/uniswapv3/BurnV3DTOs/historical | BurnV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetBurnsCurrent**](docs/UniswapV3Api.md#uniswapv3getburnscurrent) | **GET** /dapps/uniswapv3/burns/current | Burns (current)
*UniswapV3Api* | [**uniswapV3GetBurnsHistorical**](docs/UniswapV3Api.md#uniswapv3getburnshistorical) | **GET** /dapps/uniswapv3/burns/historical | Burns (historical)
*UniswapV3Api* | [**uniswapV3GetDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3getdaydatacurrent) | **GET** /dapps/uniswapv3/dayData/current | DayData (current)
*UniswapV3Api* | [**uniswapV3GetDayDataHistorical**](docs/UniswapV3Api.md#uniswapv3getdaydatahistorical) | **GET** /dapps/uniswapv3/dayData/historical | DayData (historical)
*UniswapV3Api* | [**uniswapV3GetFactoryCurrent**](docs/UniswapV3Api.md#uniswapv3getfactorycurrent) | **GET** /dapps/uniswapv3/factory/current | Factory (current)
*UniswapV3Api* | [**uniswapV3GetFactoryHistorical**](docs/UniswapV3Api.md#uniswapv3getfactoryhistorical) | **GET** /dapps/uniswapv3/factory/historical | Factory (historical)
*UniswapV3Api* | [**uniswapV3GetFactoryV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getfactoryv3dtoshistorical) | **GET** /dapps/uniswapv3/FactoryV3DTOs/historical | FactoryV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getmintv3dtoshistorical) | **GET** /dapps/uniswapv3/MintV3DTOs/historical | MintV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetMintsCurrent**](docs/UniswapV3Api.md#uniswapv3getmintscurrent) | **GET** /dapps/uniswapv3/mints/current | Mints (current)
*UniswapV3Api* | [**uniswapV3GetMintsHistorical**](docs/UniswapV3Api.md#uniswapv3getmintshistorical) | **GET** /dapps/uniswapv3/mints/historical | Mints (historical)
*UniswapV3Api* | [**uniswapV3GetPoolDayDataV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getpooldaydatav3dtoshistorical) | **GET** /dapps/uniswapv3/PoolDayDataV3DTOs/historical | PoolDayDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolHourDataV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolhourdatav3dtoshistorical) | **GET** /dapps/uniswapv3/PoolHourDataV3DTOs/historical | PoolHourDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolv3dtoshistorical) | **GET** /dapps/uniswapv3/PoolV3DTOs/historical | PoolV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsCurrent**](docs/UniswapV3Api.md#uniswapv3getpoolscurrent) | **GET** /dapps/uniswapv3/pools/current | Pools (current) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3getpoolsdaydatacurrent) | **GET** /dapps/uniswapv3/poolsDayData/current | PoolsDayData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsDayDataHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolsdaydatahistorical) | **GET** /dapps/uniswapv3/poolsDayData/historical | PoolsDayData (historical)
*UniswapV3Api* | [**uniswapV3GetPoolsHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolshistorical) | **GET** /dapps/uniswapv3/pools/historical | Pools (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataCurrent**](docs/UniswapV3Api.md#uniswapv3getpoolshourdatacurrent) | **GET** /dapps/uniswapv3/poolsHourData/current | PoolsHourData (current)
*UniswapV3Api* | [**uniswapV3GetPoolsHourDataHistorical**](docs/UniswapV3Api.md#uniswapv3getpoolshourdatahistorical) | **GET** /dapps/uniswapv3/poolsHourData/historical | PoolsHourData (historical)
*UniswapV3Api* | [**uniswapV3GetPositionSnapshotV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getpositionsnapshotv3dtoshistorical) | **GET** /dapps/uniswapv3/PositionSnapshotV3DTOs/historical | PositionSnapshotV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getpositionv3dtoshistorical) | **GET** /dapps/uniswapv3/PositionV3DTOs/historical | PositionV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetPositionsCurrent**](docs/UniswapV3Api.md#uniswapv3getpositionscurrent) | **GET** /dapps/uniswapv3/positions/current | Positions (current)
*UniswapV3Api* | [**uniswapV3GetPositionsHistorical**](docs/UniswapV3Api.md#uniswapv3getpositionshistorical) | **GET** /dapps/uniswapv3/positions/historical | Positions (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnaphotsHistorical**](docs/UniswapV3Api.md#uniswapv3getpositionssnaphotshistorical) | **GET** /dapps/uniswapv3/positionsSnapshots/historical | PositionsSnaphots (historical)
*UniswapV3Api* | [**uniswapV3GetPositionsSnapshotsCurrent**](docs/UniswapV3Api.md#uniswapv3getpositionssnapshotscurrent) | **GET** /dapps/uniswapv3/positionSnapshots/current | PositionsSnapshots (current)
*UniswapV3Api* | [**uniswapV3GetSwapV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getswapv3dtoshistorical) | **GET** /dapps/uniswapv3/SwapV3DTOs/historical | SwapV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsCurrent**](docs/UniswapV3Api.md#uniswapv3getswapscurrent) | **GET** /dapps/uniswapv3/swaps/current | Swaps (current) 🔥
*UniswapV3Api* | [**uniswapV3GetSwapsHistorical**](docs/UniswapV3Api.md#uniswapv3getswapshistorical) | **GET** /dapps/uniswapv3/swaps/historical | Swaps (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTickDayDataV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3gettickdaydatav3dtoshistorical) | **GET** /dapps/uniswapv3/TickDayDataV3DTOs/historical | TickDayDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTickV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3gettickv3dtoshistorical) | **GET** /dapps/uniswapv3/TickV3DTOs/historical | TickV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTicksCurrent**](docs/UniswapV3Api.md#uniswapv3gettickscurrent) | **GET** /dapps/uniswapv3/ticks/current | Ticks (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3getticksdaydatacurrent) | **GET** /dapps/uniswapv3/ticksDayData/current | TicksDayData (current)
*UniswapV3Api* | [**uniswapV3GetTicksDayDataHistorical**](docs/UniswapV3Api.md#uniswapv3getticksdaydatahistorical) | **GET** /dapps/uniswapv3/ticksDayData/historical | TicksDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTicksHistorical**](docs/UniswapV3Api.md#uniswapv3gettickshistorical) | **GET** /dapps/uniswapv3/ticks/historical | Ticks (historical)
*UniswapV3Api* | [**uniswapV3GetTokenHourDataV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenhourdatav3dtoshistorical) | **GET** /dapps/uniswapv3/TokenHourDataV3DTOs/historical | TokenHourDataV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenv3dtoshistorical) | **GET** /dapps/uniswapv3/TokenV3DTOs/historical | TokenV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokenV3DayDataDTOsHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenv3daydatadtoshistorical) | **GET** /dapps/uniswapv3/TokenV3DayDataDTOs/historical | TokenV3DayDataDTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensCurrent**](docs/UniswapV3Api.md#uniswapv3gettokenscurrent) | **GET** /dapps/uniswapv3/tokens/current | Tokens (current) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensDayDataCurrent**](docs/UniswapV3Api.md#uniswapv3gettokensdaydatacurrent) | **GET** /dapps/uniswapv3/tokensDayData/current | TokensDayData (current)
*UniswapV3Api* | [**uniswapV3GetTokensDayDataHistorical**](docs/UniswapV3Api.md#uniswapv3gettokensdaydatahistorical) | **GET** /dapps/uniswapv3/tokensDayData/historical | TokensDayData (historical)
*UniswapV3Api* | [**uniswapV3GetTokensHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenshistorical) | **GET** /dapps/uniswapv3/tokens/historical | Tokens (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTokensHourDataCurrent**](docs/UniswapV3Api.md#uniswapv3gettokenshourdatacurrent) | **GET** /dapps/uniswapv3/tokensHourData/current | TokensHourData (current)
*UniswapV3Api* | [**uniswapV3GetTokensHourDataHistorical**](docs/UniswapV3Api.md#uniswapv3gettokenshourdatahistorical) | **GET** /dapps/uniswapv3/tokensHourData/historical | TokensHourData (historical)
*UniswapV3Api* | [**uniswapV3GetTransactionV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3gettransactionv3dtoshistorical) | **GET** /dapps/uniswapv3/TransactionV3DTOs/historical | TransactionV3DTOs (historical) 🔥
*UniswapV3Api* | [**uniswapV3GetTransactionsHistorical**](docs/UniswapV3Api.md#uniswapv3gettransactionshistorical) | **GET** /dapps/uniswapv3/transactions/historical | Transactions (historical)
*UniswapV3Api* | [**uniswapV3GetUniswapDayDataV3DTOsHistorical**](docs/UniswapV3Api.md#uniswapv3getuniswapdaydatav3dtoshistorical) | **GET** /dapps/uniswapv3/UniswapDayDataV3DTOs/historical | UniswapDayDataV3DTOs (historical) 🔥


## Documentation For Models

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


## Documentation For Authorization

 All endpoints do not require authorization.

