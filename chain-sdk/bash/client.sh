#!/usr/bin/env bash

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# !
# ! Note:
# !
# ! THIS SCRIPT HAS BEEN AUTOMATICALLY GENERATED USING
# ! openapi-generator (https://openapi-generator.tech)
# ! FROM OPENAPI SPECIFICATION IN JSON.
# !
# !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

#
# This is a Bash client for OnChain API.
#
# LICENSE:
# https://github.com/coinapi/coinapi-sdk/blob/master/LICENSE
#
# CONTACT:
# support@coinapi.io
#
# MORE INFORMATION:
# 
#

# For improved pattern matching in case statements
shopt -s extglob

###############################################################################
#
# Make sure Bash is at least in version 4.3
#
###############################################################################
if ! ( (("${BASH_VERSION:0:1}" == "4")) && (("${BASH_VERSION:2:1}" >= "3")) ) \
  && ! (("${BASH_VERSION:0:1}" >= "5")); then
    echo ""
    echo "Sorry - your Bash version is ${BASH_VERSION}"
    echo ""
    echo "You need at least Bash 4.3 to run this script."
    echo ""
    exit 1
fi

###############################################################################
#
# Global variables
#
###############################################################################

##
# The filename of this script for help messages
script_name=$(basename "$0")

##
# Map for headers passed after operation as KEY:VALUE
declare -A header_arguments


##
# Map for operation parameters passed after operation as PARAMETER=VALUE
# These will be mapped to appropriate path or query parameters
# The values in operation_parameters are arrays, so that multiple values
# can be provided for the same parameter if allowed by API specification
declare -A operation_parameters

##
# Declare colors with autodetection if output is terminal
if [ -t 1 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    MAGENTA="$(tput setaf 5)"
    CYAN="$(tput setaf 6)"
    WHITE="$(tput setaf 7)"
    BOLD="$(tput bold)"
    OFF="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    MAGENTA=""
    CYAN=""
    WHITE=""
    BOLD=""
    OFF=""
fi

declare -a result_color_table=( "$WHITE" "$WHITE" "$GREEN" "$YELLOW" "$WHITE" "$MAGENTA" "$WHITE" )

##
# This array stores the minimum number of required occurrences for parameter
# 0 - optional
# 1 - required
declare -A operation_parameters_minimum_occurrences
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetContractsVersionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractsVersionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractsVersionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetContractsVersionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetContractsVersionsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugesDepositsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesDepositsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesDepositsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesDepositsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugesLiquidityHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesLiquidityHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesLiquidityHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesLiquidityHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTotalWeightsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTotalWeightsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTotalWeightsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTotalWeightsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTypesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTypesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTypesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTypesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTypesWeightsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTypesWeightsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTypesWeightsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesTypesWeightsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWeightsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWeightsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWeightsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWeightsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWeightsVotesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWeightsVotesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWeightsVotesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWeightsVotesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWithdrawHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWithdrawHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWithdrawHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesWithdrawHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalsVotesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsVotesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsVotesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalsVotesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsRequestsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsRequestsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsRequestsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsRequestsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsRequestsHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsDayDataHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPoolsHourDataHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensDayDataHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetFactoryHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetFactoryHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetFactoryHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetFactoryHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsDayDataHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsHourDataHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensDayDataHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokensHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsDayDataCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsDayDataHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHourDataCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHourDataHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsSnaphotsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsSnaphotsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsSnaphotsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsSnaphotsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsSnaphotsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsSnapshotsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksDayDataCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksDayDataHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensCurrent:::filter_token_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensDayDataCurrent:::filter_token_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensDayDataHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHourDataCurrent:::filter_token_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHourDataHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::endDate"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetContractsVersionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractsVersionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractsVersionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetContractsVersionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetContractsVersionsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugesDepositsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesDepositsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesDepositsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesDepositsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugesLiquidityHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesLiquidityHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesLiquidityHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesLiquidityHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTotalWeightsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTotalWeightsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTotalWeightsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTotalWeightsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTypesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTypesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTypesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTypesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTypesWeightsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTypesWeightsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTypesWeightsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesTypesWeightsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWeightsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWeightsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWeightsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWeightsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWeightsVotesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWeightsVotesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWeightsVotesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWeightsVotesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWithdrawHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWithdrawHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWithdrawHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesWithdrawHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalsVotesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsVotesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsVotesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalsVotesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsRequestsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsRequestsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsRequestsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsRequestsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsRequestsHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsDayDataHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPoolsHourDataHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensDayDataHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetFactoryHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetFactoryHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetFactoryHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetFactoryHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsDayDataHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsHourDataHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensDayDataHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokensHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsDayDataCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsDayDataHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHourDataCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHourDataHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsSnaphotsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsSnaphotsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsSnaphotsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsSnaphotsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsSnaphotsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsSnapshotsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksDayDataCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksDayDataHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensCurrent:::filter_token_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensDayDataCurrent:::filter_token_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensDayDataHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHourDataCurrent:::filter_token_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHourDataHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::endDate"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["cowGetOrdersHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::tokenId"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetContractsVersionsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetContractsVersionsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetContractsVersionsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetContractsVersionsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetContractsVersionsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugesDepositsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesDepositsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesDepositsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesDepositsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugesLiquidityHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesLiquidityHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesLiquidityHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesLiquidityHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugesTotalWeightsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesTotalWeightsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesTotalWeightsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesTotalWeightsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugesTypesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesTypesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesTypesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesTypesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugesTypesWeightsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesTypesWeightsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesTypesWeightsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesTypesWeightsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugesWeightsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesWeightsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesWeightsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesWeightsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugesWeightsVotesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesWeightsVotesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesWeightsVotesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesWeightsVotesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugesWithdrawHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesWithdrawHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesWithdrawHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesWithdrawHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetProposalsVotesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetProposalsVotesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetProposalsVotesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetProposalsVotesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::tokenId"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetWithdrawsRequestsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetWithdrawsRequestsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetWithdrawsRequestsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetWithdrawsRequestsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetWithdrawsRequestsHistorical:::tokenId"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetFactoryHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetFactoryHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetFactoryHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetFactoryHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetPoolsDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPoolsDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPoolsDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPoolsDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPoolsDayDataHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetPoolsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPoolsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPoolsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPoolsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPoolsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetPoolsHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPoolsHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPoolsHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPoolsHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPoolsHourDataHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetTokensDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTokensDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTokensDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTokensDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTokensDayDataHistorical:::tokenId"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::tokenId"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBurnsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetFactoryHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetFactoryHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetFactoryHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetFactoryHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionsSnapshotsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetPoolsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV2GetPoolsDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPoolsDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPoolsDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPoolsDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPoolsDayDataHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetPoolsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPoolsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPoolsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPoolsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPoolsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetPoolsHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPoolsHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPoolsHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPoolsHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPoolsHourDataHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetTokensDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokensDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokensDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTokensDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTokensDayDataHistorical:::tokenId"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTokensHistorical:::tokenId"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBurnsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBurnsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetFactoryHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetFactoryHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetFactoryHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetFactoryHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetMintsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetPoolsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetPoolsDayDataCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetPoolsDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolsDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolsDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolsDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolsDayDataHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHourDataCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHourDataHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetPositionsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetPositionsSnaphotsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionsSnaphotsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionsSnaphotsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionsSnaphotsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionsSnaphotsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetPositionsSnapshotsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetSwapsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetTicksCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetTicksDayDataCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetTicksDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTicksDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTicksDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTicksDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTicksDayDataHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTicksHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetTokensCurrent:::filter_token_id"]=""
operation_parameters_collection_type["uniswapV3GetTokensDayDataCurrent:::filter_token_id"]=""
operation_parameters_collection_type["uniswapV3GetTokensDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokensDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokensDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokensDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokensDayDataHistorical:::tokenId"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokensHistorical:::tokenId"]=""
operation_parameters_collection_type["uniswapV3GetTokensHourDataCurrent:::filter_token_id"]=""
operation_parameters_collection_type["uniswapV3GetTokensHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokensHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokensHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokensHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokensHourDataHistorical:::tokenId"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::endDate"]=""


##
# Map for body parameters passed after operation as
# PARAMETER==STRING_VALUE or PARAMETER:=NUMERIC_VALUE
# These will be mapped to top level json keys ( { "PARAMETER": "VALUE" })
declare -A body_parameters

##
# These arguments will be directly passed to cURL
curl_arguments=""

##
# The host for making the request
host=""

##
# The user credentials for basic authentication
basic_auth_credential=""


##
# If true, the script will only output the actual cURL command that would be
# used
print_curl=false

##
# The operation ID passed on the command line
operation=""

##
# The provided Accept header value
header_accept=""

##
# The provided Content-type header value
header_content_type=""

##
# If there is any body content on the stdin pass it to the body of the request
body_content_temp_file=""

##
# If this variable is set to true, the request will be performed even
# if parameters for required query, header or body values are not provided
# (path parameters are still required).
force=false

##
# Declare some mime types abbreviations for easier content-type and accepts
# headers specification
declare -A mime_type_abbreviations
# text/*
mime_type_abbreviations["text"]="text/plain"
mime_type_abbreviations["html"]="text/html"
mime_type_abbreviations["md"]="text/x-markdown"
mime_type_abbreviations["csv"]="text/csv"
mime_type_abbreviations["css"]="text/css"
mime_type_abbreviations["rtf"]="text/rtf"
# application/*
mime_type_abbreviations["json"]="application/json"
mime_type_abbreviations["xml"]="application/xml"
mime_type_abbreviations["yaml"]="application/yaml"
mime_type_abbreviations["js"]="application/javascript"
mime_type_abbreviations["bin"]="application/octet-stream"
mime_type_abbreviations["rdf"]="application/rdf+xml"
# image/*
mime_type_abbreviations["jpg"]="image/jpeg"
mime_type_abbreviations["png"]="image/png"
mime_type_abbreviations["gif"]="image/gif"
mime_type_abbreviations["bmp"]="image/bmp"
mime_type_abbreviations["tiff"]="image/tiff"


##############################################################################
#
# Escape special URL characters
# Based on table at http://www.w3schools.com/tags/ref_urlencode.asp
#
##############################################################################
url_escape() {
    local raw_url="$1"

    value=$(sed -e 's/ /%20/g' \
       -e 's/!/%21/g' \
       -e 's/"/%22/g' \
       -e 's/#/%23/g' \
       -e 's/\&/%26/g' \
       -e 's/'\''/%28/g' \
       -e 's/(/%28/g' \
       -e 's/)/%29/g' \
       -e 's/:/%3A/g' \
       -e 's/\\t/%09/g' \
       -e 's/?/%3F/g' <<<"$raw_url");

    echo "$value"
}

##############################################################################
#
# Lookup the mime type abbreviation in the mime_type_abbreviations array.
# If not present assume the user provided a valid mime type
#
##############################################################################
lookup_mime_type() {
    local mime_type="$1"

    if [[ ${mime_type_abbreviations[$mime_type]} ]]; then
        echo "${mime_type_abbreviations[$mime_type]}"
    else
        echo "$mime_type"
    fi
}

##############################################################################
#
# Converts an associative array into a list of cURL header
# arguments (-H "KEY: VALUE")
#
##############################################################################
header_arguments_to_curl() {
    local headers_curl=""

    for key in "${!header_arguments[@]}"; do
        headers_curl+="-H \"${key}: ${header_arguments[${key}]}\" "
    done
    headers_curl+=" "

    echo "${headers_curl}"
}

##############################################################################
#
# Converts an associative array into a simple JSON with keys as top
# level object attributes
#
# \todo Add conversion of more complex attributes using paths
#
##############################################################################
body_parameters_to_json() {
    local body_json="-d '{"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_json+=", "
        fi
        body_json+="\"${key}\": ${body_parameters[${key}]}"
    done
    body_json+="}'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_json}"
    fi
}

##############################################################################
#
# Converts an associative array into form urlencoded string
#
##############################################################################
body_parameters_to_form_urlencoded() {
    local body_form_urlencoded="-d '"
    local count=0
    for key in "${!body_parameters[@]}"; do
        if [[ $((count++)) -gt 0 ]]; then
            body_form_urlencoded+="&"
        fi
        body_form_urlencoded+="${key}=${body_parameters[${key}]}"
    done
    body_form_urlencoded+="'"

    if [[ "${#body_parameters[@]}" -eq 0 ]]; then
        echo ""
    else
        echo "${body_form_urlencoded}"
    fi
}

##############################################################################
#
# Helper method for showing error because for example echo in
# build_request_path() is evaluated as part of command line not printed on
# output. Anyway better idea for resource clean up ;-).
#
##############################################################################
ERROR_MSG=""
function finish {
    if [[ -n "$ERROR_MSG" ]]; then
        echo >&2 "${OFF}${RED}$ERROR_MSG"
        echo >&2 "${OFF}Check usage: '${script_name} --help'"
    fi
}
trap finish EXIT


##############################################################################
#
# Validate and build request path including query parameters
#
##############################################################################
build_request_path() {
    local path_template=$1
    local -n path_params=$2
    local -n query_params=$3


    #
    # Check input parameters count against minimum and maximum required
    #
    if [[ "$force" = false ]]; then
        local was_error=""
        for qparam in "${query_params[@]}" "${path_params[@]}"; do
            local parameter_values
            mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")

            #
            # Check if the number of provided values is not less than minimum required
            #
            if [[ ${#parameter_values[@]} -lt ${operation_parameters_minimum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too few values provided for '${qparam}' parameter."
                was_error=true
            fi

            #
            # Check if the number of provided values is not more than maximum
            #
            if [[ ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} -gt 0 \
                  && ${#parameter_values[@]} -gt ${operation_parameters_maximum_occurrences["${operation}:::${qparam}"]} ]]; then
                echo "ERROR: Too many values provided for '${qparam}' parameter"
                was_error=true
            fi
        done
        if [[ -n "$was_error" ]]; then
            exit 1
        fi
    fi

    # First replace all path parameters in the path
    for pparam in "${path_params[@]}"; do
        local path_regex="(.*)(\\{$pparam\\})(.*)"
        if [[ $path_template =~ $path_regex ]]; then
            path_template=${BASH_REMATCH[1]}${operation_parameters[$pparam]}${BASH_REMATCH[3]}
        fi
    done

    local query_request_part=""

    for qparam in "${query_params[@]}"; do
        if [[ "${operation_parameters[$qparam]}" == "" ]]; then
            continue
        fi

        # Get the array of parameter values
        local parameter_value=""
        local parameter_values
        mapfile -t parameter_values < <(sed -e 's/'":::"'/\n/g' <<<"${operation_parameters[$qparam]}")



        #
        # Append parameters without specific cardinality
        #
        local collection_type="${operation_parameters_collection_type["${operation}:::${qparam}"]}"
        if [[ "${collection_type}" == "" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'multi' collections i.e. param=value1&param=value2&...
        #
        elif [[ "${collection_type}" == "multi" ]]; then
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="&"
                fi
                parameter_value+="${qparam}=${qvalue}"
            done
        #
        # Append parameters specified as 'csv' collections i.e. param=value1,value2,...
        #
        elif [[ "${collection_type}" == "csv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=","
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'ssv' collections i.e. param="value1 value2 ..."
        #
        elif [[ "${collection_type}" == "ssv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+=" "
                fi
                parameter_value+="${qvalue}"
            done
        #
        # Append parameters specified as 'tsv' collections i.e. param="value1\tvalue2\t..."
        #
        elif [[ "${collection_type}" == "tsv" ]]; then
            parameter_value+="${qparam}="
            local vcount=0
            for qvalue in "${parameter_values[@]}"; do
                if [[ $((vcount++)) -gt 0 ]]; then
                    parameter_value+="\\t"
                fi
                parameter_value+="${qvalue}"
            done
        else
            echo "Unsupported collection format \"${collection_type}\""
            exit 1
        fi

        if [[ -n "${parameter_value}" ]]; then
            if [[ -n "${query_request_part}" ]]; then
                query_request_part+="&"
            fi
            query_request_part+="${parameter_value}"
        fi

    done


    # Now append query parameters - if any
    if [[ -n "${query_request_part}" ]]; then
        path_template+="?${query_request_part}"
    fi

    echo "$path_template"
}



###############################################################################
#
# Print main help message
#
###############################################################################
print_help() {
cat <<EOF

${BOLD}${WHITE}OnChain API command line client (API version v1)${OFF}

${BOLD}${WHITE}Usage${OFF}

  ${GREEN}${script_name}${OFF} [-h|--help] [-V|--version] [--about] [${RED}<curl-options>${OFF}]
           [-ac|--accept ${GREEN}<mime-type>${OFF}] [-ct,--content-type ${GREEN}<mime-type>${OFF}]
           [--host ${CYAN}<url>${OFF}] [--dry-run] [-nc|--no-colors] ${YELLOW}<operation>${OFF} [-h|--help]
           [${BLUE}<headers>${OFF}] [${MAGENTA}<parameters>${OFF}] [${MAGENTA}<body-parameters>${OFF}]

  - ${CYAN}<url>${OFF} - endpoint of the REST service without basepath

  - ${RED}<curl-options>${OFF} - any valid cURL options can be passed before ${YELLOW}<operation>${OFF}
  - ${GREEN}<mime-type>${OFF} - either full mime-type or one of supported abbreviations:
                   (text, html, md, csv, css, rtf, json, xml, yaml, js, bin,
                    rdf, jpg, png, gif, bmp, tiff)
  - ${BLUE}<headers>${OFF} - HTTP headers can be passed in the form ${YELLOW}HEADER${OFF}:${BLUE}VALUE${OFF}
  - ${MAGENTA}<parameters>${OFF} - REST operation parameters can be passed in the following
                   forms:
                   * ${YELLOW}KEY${OFF}=${BLUE}VALUE${OFF} - path or query parameters
  - ${MAGENTA}<body-parameters>${OFF} - simple JSON body content (first level only) can be build
                        using the following arguments:
                        * ${YELLOW}KEY${OFF}==${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": "${BLUE}VALUE${OFF}", ... }'
                        * ${YELLOW}KEY${OFF}:=${BLUE}VALUE${OFF} - body parameters which will be added to body
                                      JSON as '{ ..., "${YELLOW}KEY${OFF}": ${BLUE}VALUE${OFF}, ... }'

EOF
    echo -e "${BOLD}${WHITE}Operations (grouped by tags)${OFF}"
    echo ""
    echo -e "${BOLD}${WHITE}[cow]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}cowGetOrdersHistorical${OFF};GetOrders (historical)
  ${CYAN}cowGetSettlementsHistorical${OFF};GetSettlements (historical)
  ${CYAN}cowGetTokensHistorical${OFF};GetTokens (historical) 🔥
  ${CYAN}cowGetTradesHistorical${OFF};GetTrades (historical) 🔥
  ${CYAN}cowGetUsersHistorical${OFF};GetUsers (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[curve]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}curveGetAccountsHistorical${OFF};GetAccounts (historical)
  ${CYAN}curveGetAddLiquidityEventsHistorical${OFF};GetAddLiquidityEvents (historical)
  ${CYAN}curveGetAdminFeeChangeLogsHistorical${OFF};GetAdminFeeChangeLogs (historical)
  ${CYAN}curveGetAmplificationCoeffChangeLogsHistorical${OFF};GetAmplificationCoeffChangeLogs (historical)
  ${CYAN}curveGetCoinsHistorical${OFF};GetCoins (historical)
  ${CYAN}curveGetContractsHistorical${OFF};GetContracts (historical)
  ${CYAN}curveGetContractsVersionsHistorical${OFF};GetContractsVersions (historical)
  ${CYAN}curveGetDailyVolumesHistorical${OFF};GetDailyVolumes (historical)
  ${CYAN}curveGetExchangesHistorical${OFF};GetExchanges (historical) 🔥
  ${CYAN}curveGetFeeChangeLogsHistorical${OFF};GetFeeChangeLogs (historical)
  ${CYAN}curveGetGaugesDepositsHistorical${OFF};GetGaugesDeposits (historical)
  ${CYAN}curveGetGaugesHistorical${OFF};GetGauges (historical)
  ${CYAN}curveGetGaugesLiquidityHistorical${OFF};GetGaugesLiquidity (historical)
  ${CYAN}curveGetGaugesTotalWeightsHistorical${OFF};GetGaugesTotalWeights (historical)
  ${CYAN}curveGetGaugesTypesHistorical${OFF};GetGaugesTypes (historical)
  ${CYAN}curveGetGaugesTypesWeightsHistorical${OFF};GetGaugesTypesWeights (historical)
  ${CYAN}curveGetGaugesWeightsHistorical${OFF};GetGaugesWeights (historical)
  ${CYAN}curveGetGaugesWeightsVotesHistorical${OFF};GetGaugesWeightsVotes (historical)
  ${CYAN}curveGetGaugesWithdrawHistorical${OFF};GetGaugesWithdraw (historical)
  ${CYAN}curveGetHourlyVolumesHistorical${OFF};GetHourlyVolumes (historical)
  ${CYAN}curveGetLpTokensHistorical${OFF};GetLpTokens (historical)
  ${CYAN}curveGetPoolsHistorical${OFF};GetPools (historical) 🔥
  ${CYAN}curveGetProposalsHistorical${OFF};GetProposals (historical)
  ${CYAN}curveGetProposalsVotesHistorical${OFF};GetProposalsVotes (historical)
  ${CYAN}curveGetRemoveLiquidityEventsHistorical${OFF};GetRemoveLiquidityEvents (historical)
  ${CYAN}curveGetRemoveLiquidityOneEventsHistorical${OFF};GetRemoveLiquidityOneEvents (historical)
  ${CYAN}curveGetSystemStatesHistorical${OFF};GetSystemStates (historical)
  ${CYAN}curveGetTokensHistorical${OFF};GetTokens (historical) 🔥
  ${CYAN}curveGetTransferOwnershipEventsHistorical${OFF};GetTransferOwnershipEvents (historical)
  ${CYAN}curveGetUnderlyingCoinsHistorical${OFF};GetUnderlyingCoins (historical)
  ${CYAN}curveGetVotingAppsHistorical${OFF};GetVotingApps (historical)
  ${CYAN}curveGetWeeklyVolumesHistorical${OFF};GetWeeklyVolumes (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[dex]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}dexGetBatchesHistorical${OFF};GetBatches (historical)
  ${CYAN}dexGetDepositsHistorical${OFF};GetDeposits (historical)
  ${CYAN}dexGetOrdersHistorical${OFF};GetOrders (historical)
  ${CYAN}dexGetPricesHistorical${OFF};GetPrices (historical)
  ${CYAN}dexGetSolutionsHistorical${OFF};GetSolutions (historical)
  ${CYAN}dexGetStatsHistorical${OFF};GetStats (historical)
  ${CYAN}dexGetTokensHistorical${OFF};GetTokens (historical) 🔥
  ${CYAN}dexGetTradesHistorical${OFF};GetTrades (historical) 🔥
  ${CYAN}dexGetUsersHistorical${OFF};GetUsers (historical)
  ${CYAN}dexGetWithdrawsHistorical${OFF};GetWithdraws (historical)
  ${CYAN}dexGetWithdrawsRequestsHistorical${OFF};GetWithdrawsRequests (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sushiswap]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}curveGetExchangesCurrent${OFF};GetExchanges (current) 🔥
  ${CYAN}dexGetTradesCurrent${OFF};GetTrades (current) 🔥
  ${CYAN}sushiswapGetBundlesHistorical${OFF};GetBundles (historical)
  ${CYAN}sushiswapGetBurnsHistorical${OFF};GetBurns (historical)
  ${CYAN}sushiswapGetDayDataHistorical${OFF};GetDayData (historical)
  ${CYAN}sushiswapGetFactoryHistorical${OFF};GetFactory (historical)
  ${CYAN}sushiswapGetHourDataHistorical${OFF};GetHourData (historical)
  ${CYAN}sushiswapGetLiquidityPositionHistorical${OFF};GetLiquidityPosition (historical)
  ${CYAN}sushiswapGetLiquidityPositionSnapshotHistorical${OFF};GetLiquidityPositionSnapshot (historical)
  ${CYAN}sushiswapGetMintsHistorical${OFF};GetMints (historical)
  ${CYAN}sushiswapGetPoolsCurrent${OFF};GetPools (current) 🔥
  ${CYAN}sushiswapGetPoolsDayDataHistorical${OFF};GetPoolsDayData (historical)
  ${CYAN}sushiswapGetPoolsHistorical${OFF};GetPools (historical) 🔥
  ${CYAN}sushiswapGetPoolsHourDataHistorical${OFF};GetPoolsHourData (historical)
  ${CYAN}sushiswapGetSwapsCurrent${OFF};GetSwaps (current) 🔥
  ${CYAN}sushiswapGetSwapsHistorical${OFF};GetSwaps (historical) 🔥
  ${CYAN}sushiswapGetTokensCurrent${OFF};GetTokens (current) 🔥
  ${CYAN}sushiswapGetTokensDayDataHistorical${OFF};GetTokensDayData (historical)
  ${CYAN}sushiswapGetTokensHistorical${OFF};GetTokens (historical) 🔥
  ${CYAN}sushiswapGetTransactionsHistorical${OFF};GetTransactions (historical)
  ${CYAN}sushiswapGetUsersHistorical${OFF};GetUsers (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV2]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}uniswapV2GetBundlesHistorical${OFF};GetBundles (historical)
  ${CYAN}uniswapV2GetBurnsHistorical${OFF};GetBurns (historical)
  ${CYAN}uniswapV2GetDayDataHistorical${OFF};GetDayData (historical)
  ${CYAN}uniswapV2GetFactoryHistorical${OFF};GetFactory (historical)
  ${CYAN}uniswapV2GetLiquidityPositionsHistorical${OFF};GetLiquidityPositions (historical)
  ${CYAN}uniswapV2GetLiquidityPositionsSnapshotsHistorical${OFF};GetLiquidityPositionsSnapshots (historical)
  ${CYAN}uniswapV2GetMintsHistorical${OFF};GetMints (historical)
  ${CYAN}uniswapV2GetPoolsCurrent${OFF};GetPools (current) 🔥
  ${CYAN}uniswapV2GetPoolsDayDataHistorical${OFF};GetPoolsDayData (historical)
  ${CYAN}uniswapV2GetPoolsHistorical${OFF};GetPools (historical) 🔥
  ${CYAN}uniswapV2GetPoolsHourDataHistorical${OFF};GetPoolsHourData (historical)
  ${CYAN}uniswapV2GetSwapsCurrent${OFF};GetSwaps (current) 🔥
  ${CYAN}uniswapV2GetSwapsHistorical${OFF};GetSwaps (historical) 🔥
  ${CYAN}uniswapV2GetTokensCurrent${OFF};GetTokens (current) 🔥
  ${CYAN}uniswapV2GetTokensDayDataHistorical${OFF};GetTokensDayData (historical)
  ${CYAN}uniswapV2GetTokensHistorical${OFF};GetTokens (historical) 🔥
  ${CYAN}uniswapV2GetTransactionsHistorical${OFF};GetTransactions (historical)
  ${CYAN}uniswapV2GetUsersHistorical${OFF};GetUsers (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV3]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}uniswapV3GetBundlesCurrent${OFF};GetBundles (current)
  ${CYAN}uniswapV3GetBundlesHistorical${OFF};GetBundles (historical)
  ${CYAN}uniswapV3GetBurnsCurrent${OFF};GetBurns (current)
  ${CYAN}uniswapV3GetBurnsHistorical${OFF};GetBurns (historical)
  ${CYAN}uniswapV3GetDayDataCurrent${OFF};GetDayData (current)
  ${CYAN}uniswapV3GetDayDataHistorical${OFF};GetDayData (historical)
  ${CYAN}uniswapV3GetFactoryCurrent${OFF};GetFactory (current)
  ${CYAN}uniswapV3GetFactoryHistorical${OFF};GetFactory (historical)
  ${CYAN}uniswapV3GetMintsCurrent${OFF};GetMints (current)
  ${CYAN}uniswapV3GetMintsHistorical${OFF};GetMints (historical)
  ${CYAN}uniswapV3GetPoolsCurrent${OFF};GetPools (current) 🔥
  ${CYAN}uniswapV3GetPoolsDayDataCurrent${OFF};GetPoolsDayData (current)
  ${CYAN}uniswapV3GetPoolsDayDataHistorical${OFF};GetPoolsDayData (historical)
  ${CYAN}uniswapV3GetPoolsHistorical${OFF};GetPools (historical) 🔥
  ${CYAN}uniswapV3GetPoolsHourDataCurrent${OFF};GetPoolsHourData (current)
  ${CYAN}uniswapV3GetPoolsHourDataHistorical${OFF};GetPoolsHourData (historical)
  ${CYAN}uniswapV3GetPositionsCurrent${OFF};GetPositions (current)
  ${CYAN}uniswapV3GetPositionsHistorical${OFF};GetPositions (historical)
  ${CYAN}uniswapV3GetPositionsSnaphotsHistorical${OFF};GetPositionsSnaphots (historical)
  ${CYAN}uniswapV3GetPositionsSnapshotsCurrent${OFF};GetPositionsSnapshots (current)
  ${CYAN}uniswapV3GetSwapsCurrent${OFF};GetSwaps (current) 🔥
  ${CYAN}uniswapV3GetSwapsHistorical${OFF};GetSwaps (historical) 🔥
  ${CYAN}uniswapV3GetTicksCurrent${OFF};GetTicks (current)
  ${CYAN}uniswapV3GetTicksDayDataCurrent${OFF};GetTicksDayData (current)
  ${CYAN}uniswapV3GetTicksDayDataHistorical${OFF};GetTicksDayData (historical)
  ${CYAN}uniswapV3GetTicksHistorical${OFF};GetTicks (historical)
  ${CYAN}uniswapV3GetTokensCurrent${OFF};GetTokens (current) 🔥
  ${CYAN}uniswapV3GetTokensDayDataCurrent${OFF};GetTokensDayData (current)
  ${CYAN}uniswapV3GetTokensDayDataHistorical${OFF};GetTokensDayData (historical)
  ${CYAN}uniswapV3GetTokensHistorical${OFF};GetTokens (historical) 🔥
  ${CYAN}uniswapV3GetTokensHourDataCurrent${OFF};GetTokensHourData (current)
  ${CYAN}uniswapV3GetTokensHourDataHistorical${OFF};GetTokensHourData (historical)
  ${CYAN}uniswapV3GetTransactionsHistorical${OFF};GetTransactions (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}Options${OFF}"
    echo -e "  -h,--help\\t\\t\\t\\tPrint this help"
    echo -e "  -V,--version\\t\\t\\t\\tPrint API version"
    echo -e "  --about\\t\\t\\t\\tPrint the information about service"
    echo -e "  --host ${CYAN}<url>${OFF}\\t\\t\\t\\tSpecify the host URL "
echo -e "              \\t\\t\\t\\t(e.g. 'https://onchain.coinapi.io')"

    echo -e "  --force\\t\\t\\t\\tForce command invocation in spite of missing"
    echo -e "         \\t\\t\\t\\trequired parameters or wrong content type"
    echo -e "  --dry-run\\t\\t\\t\\tPrint out the cURL command without"
    echo -e "           \\t\\t\\t\\texecuting it"
    echo -e "  -nc,--no-colors\\t\\t\\tEnforce print without colors, otherwise autodetected"
    echo -e "  -ac,--accept ${YELLOW}<mime-type>${OFF}\\t\\tSet the 'Accept' header in the request"
    echo -e "  -ct,--content-type ${YELLOW}<mime-type>${OFF}\\tSet the 'Content-type' header in "
    echo -e "                                \\tthe request"
    echo ""
}


##############################################################################
#
# Print REST service description
#
##############################################################################
print_about() {
    echo ""
    echo -e "${BOLD}${WHITE}OnChain API command line client (API version v1)${OFF}"
    echo ""
    echo -e "License: MIT License"
    echo -e "Contact: support@coinapi.io"
    echo ""
read -r -d '' appdescription <<EOF

This section will provide necessary information about the 'OnChain API' protocol. 
<br/><br/>
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
EOF
echo "$appdescription" | paste -sd' ' | fold -sw 80
}


##############################################################################
#
# Print REST api version
#
##############################################################################
print_version() {
    echo ""
    echo -e "${BOLD}OnChain API command line client (API version v1)${OFF}"
    echo ""
}

##############################################################################
#
# Print help for cowGetOrdersHistorical operation
#
##############################################################################
print_cowGetOrdersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetOrdersHistorical - GetOrders (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets orders." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowGetSettlementsHistorical operation
#
##############################################################################
print_cowGetSettlementsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetSettlementsHistorical - GetSettlements (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets settlements." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowGetTokensHistorical operation
#
##############################################################################
print_cowGetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetTokensHistorical - GetTokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowGetTradesHistorical operation
#
##############################################################################
print_cowGetTradesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetTradesHistorical - GetTrades (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets trades." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowGetUsersHistorical operation
#
##############################################################################
print_cowGetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetUsersHistorical - GetUsers (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetAccountsHistorical operation
#
##############################################################################
print_curveGetAccountsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAccountsHistorical - GetAccounts (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets accounts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetAddLiquidityEventsHistorical operation
#
##############################################################################
print_curveGetAddLiquidityEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAddLiquidityEventsHistorical - GetAddLiquidityEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets add liquidity events." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetAdminFeeChangeLogsHistorical operation
#
##############################################################################
print_curveGetAdminFeeChangeLogsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAdminFeeChangeLogsHistorical - GetAdminFeeChangeLogs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets admin fee change logs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetAmplificationCoeffChangeLogsHistorical operation
#
##############################################################################
print_curveGetAmplificationCoeffChangeLogsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAmplificationCoeffChangeLogsHistorical - GetAmplificationCoeffChangeLogs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets amplification coeff change logs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetCoinsHistorical operation
#
##############################################################################
print_curveGetCoinsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetCoinsHistorical - GetCoins (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets coins." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetContractsHistorical operation
#
##############################################################################
print_curveGetContractsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetContractsHistorical - GetContracts (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets contracts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetContractsVersionsHistorical operation
#
##############################################################################
print_curveGetContractsVersionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetContractsVersionsHistorical - GetContractsVersions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets contracts versions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetDailyVolumesHistorical operation
#
##############################################################################
print_curveGetDailyVolumesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetDailyVolumesHistorical - GetDailyVolumes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets daily volumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetExchangesHistorical operation
#
##############################################################################
print_curveGetExchangesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetExchangesHistorical - GetExchanges (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets exchanges." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetFeeChangeLogsHistorical operation
#
##############################################################################
print_curveGetFeeChangeLogsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetFeeChangeLogsHistorical - GetFeeChangeLogs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets fee change logs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugesDepositsHistorical operation
#
##############################################################################
print_curveGetGaugesDepositsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugesDepositsHistorical - GetGaugesDeposits (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges deposits." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugesHistorical operation
#
##############################################################################
print_curveGetGaugesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugesHistorical - GetGauges (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugesLiquidityHistorical operation
#
##############################################################################
print_curveGetGaugesLiquidityHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugesLiquidityHistorical - GetGaugesLiquidity (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges liquidity." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugesTotalWeightsHistorical operation
#
##############################################################################
print_curveGetGaugesTotalWeightsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugesTotalWeightsHistorical - GetGaugesTotalWeights (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges total weights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugesTypesHistorical operation
#
##############################################################################
print_curveGetGaugesTypesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugesTypesHistorical - GetGaugesTypes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges types." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugesTypesWeightsHistorical operation
#
##############################################################################
print_curveGetGaugesTypesWeightsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugesTypesWeightsHistorical - GetGaugesTypesWeights (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges types weights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugesWeightsHistorical operation
#
##############################################################################
print_curveGetGaugesWeightsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugesWeightsHistorical - GetGaugesWeights (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges weights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugesWeightsVotesHistorical operation
#
##############################################################################
print_curveGetGaugesWeightsVotesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugesWeightsVotesHistorical - GetGaugesWeightsVotes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges weights votes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugesWithdrawHistorical operation
#
##############################################################################
print_curveGetGaugesWithdrawHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugesWithdrawHistorical - GetGaugesWithdraw (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges withdraws." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetHourlyVolumesHistorical operation
#
##############################################################################
print_curveGetHourlyVolumesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetHourlyVolumesHistorical - GetHourlyVolumes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets hourly volumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetLpTokensHistorical operation
#
##############################################################################
print_curveGetLpTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetLpTokensHistorical - GetLpTokens (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets lp tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetPoolsHistorical operation
#
##############################################################################
print_curveGetPoolsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetPoolsHistorical - GetPools (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetProposalsHistorical operation
#
##############################################################################
print_curveGetProposalsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetProposalsHistorical - GetProposals (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets proposals." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetProposalsVotesHistorical operation
#
##############################################################################
print_curveGetProposalsVotesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetProposalsVotesHistorical - GetProposalsVotes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets proposals votes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetRemoveLiquidityEventsHistorical operation
#
##############################################################################
print_curveGetRemoveLiquidityEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetRemoveLiquidityEventsHistorical - GetRemoveLiquidityEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets remove liquidity events." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetRemoveLiquidityOneEventsHistorical operation
#
##############################################################################
print_curveGetRemoveLiquidityOneEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetRemoveLiquidityOneEventsHistorical - GetRemoveLiquidityOneEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets remove liquidity one events." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetSystemStatesHistorical operation
#
##############################################################################
print_curveGetSystemStatesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetSystemStatesHistorical - GetSystemStates (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets system states." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetTokensHistorical operation
#
##############################################################################
print_curveGetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetTokensHistorical - GetTokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetTransferOwnershipEventsHistorical operation
#
##############################################################################
print_curveGetTransferOwnershipEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetTransferOwnershipEventsHistorical - GetTransferOwnershipEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transfer ownership events." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetUnderlyingCoinsHistorical operation
#
##############################################################################
print_curveGetUnderlyingCoinsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetUnderlyingCoinsHistorical - GetUnderlyingCoins (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets underlying coins." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetVotingAppsHistorical operation
#
##############################################################################
print_curveGetVotingAppsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetVotingAppsHistorical - GetVotingApps (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets voting apps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetWeeklyVolumesHistorical operation
#
##############################################################################
print_curveGetWeeklyVolumesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetWeeklyVolumesHistorical - GetWeeklyVolumes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets weekly volumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetBatchesHistorical operation
#
##############################################################################
print_dexGetBatchesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetBatchesHistorical - GetBatches (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets batches." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetDepositsHistorical operation
#
##############################################################################
print_dexGetDepositsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetDepositsHistorical - GetDeposits (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets deposits." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetOrdersHistorical operation
#
##############################################################################
print_dexGetOrdersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetOrdersHistorical - GetOrders (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets orders." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetPricesHistorical operation
#
##############################################################################
print_dexGetPricesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetPricesHistorical - GetPrices (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets prices." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetSolutionsHistorical operation
#
##############################################################################
print_dexGetSolutionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetSolutionsHistorical - GetSolutions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets solutions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetStatsHistorical operation
#
##############################################################################
print_dexGetStatsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetStatsHistorical - GetStats (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets stats." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetTokensHistorical operation
#
##############################################################################
print_dexGetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetTokensHistorical - GetTokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetTradesHistorical operation
#
##############################################################################
print_dexGetTradesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetTradesHistorical - GetTrades (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets trades." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetUsersHistorical operation
#
##############################################################################
print_dexGetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetUsersHistorical - GetUsers (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetWithdrawsHistorical operation
#
##############################################################################
print_dexGetWithdrawsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetWithdrawsHistorical - GetWithdraws (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets withdraws." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetWithdrawsRequestsHistorical operation
#
##############################################################################
print_dexGetWithdrawsRequestsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetWithdrawsRequestsHistorical - GetWithdrawsRequests (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets withdraws requests." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetExchangesCurrent operation
#
##############################################################################
print_curveGetExchangesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetExchangesCurrent - GetExchanges (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets exchanges." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetTradesCurrent operation
#
##############################################################################
print_dexGetTradesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetTradesCurrent - GetTrades (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets trades." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetBundlesHistorical operation
#
##############################################################################
print_sushiswapGetBundlesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetBundlesHistorical - GetBundles (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - AAAAAAAAAA${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - BBBBBBBBBBBB${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - CCCCCCCCC${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - DDDDDDDDDDD${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetBurnsHistorical operation
#
##############################################################################
print_sushiswapGetBurnsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetBurnsHistorical - GetBurns (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burns." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetDayDataHistorical operation
#
##############################################################################
print_sushiswapGetDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetDayDataHistorical - GetDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetFactoryHistorical operation
#
##############################################################################
print_sushiswapGetFactoryHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetFactoryHistorical - GetFactory (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets factory." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetHourDataHistorical operation
#
##############################################################################
print_sushiswapGetHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetHourDataHistorical - GetHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets hour data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetLiquidityPositionHistorical operation
#
##############################################################################
print_sushiswapGetLiquidityPositionHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetLiquidityPositionHistorical - GetLiquidityPosition (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidity position." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetLiquidityPositionSnapshotHistorical operation
#
##############################################################################
print_sushiswapGetLiquidityPositionSnapshotHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetLiquidityPositionSnapshotHistorical - GetLiquidityPositionSnapshot (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidity position snapshot." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetMintsHistorical operation
#
##############################################################################
print_sushiswapGetMintsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetMintsHistorical - GetMints (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetPoolsCurrent operation
#
##############################################################################
print_sushiswapGetPoolsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPoolsCurrent - GetPools (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetPoolsDayDataHistorical operation
#
##############################################################################
print_sushiswapGetPoolsDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPoolsDayDataHistorical - GetPoolsDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetPoolsHistorical operation
#
##############################################################################
print_sushiswapGetPoolsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPoolsHistorical - GetPools (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets list of pools for given filters." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The pool address.${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetPoolsHourDataHistorical operation
#
##############################################################################
print_sushiswapGetPoolsHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPoolsHourDataHistorical - GetPoolsHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools tracked each our." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetSwapsCurrent operation
#
##############################################################################
print_sushiswapGetSwapsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetSwapsCurrent - GetSwaps (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetSwapsHistorical operation
#
##############################################################################
print_sushiswapGetSwapsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetSwapsHistorical - GetSwaps (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets list of swaps for given filters." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The pool address.${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetTokensCurrent operation
#
##############################################################################
print_sushiswapGetTokensCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTokensCurrent - GetTokens (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetTokensDayDataHistorical operation
#
##############################################################################
print_sushiswapGetTokensDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTokensDayDataHistorical - GetTokensDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetTokensHistorical operation
#
##############################################################################
print_sushiswapGetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTokensHistorical - GetTokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets list of tokens for given filters." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The token address.${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetTransactionsHistorical operation
#
##############################################################################
print_sushiswapGetTransactionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTransactionsHistorical - GetTransactions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetUsersHistorical operation
#
##############################################################################
print_sushiswapGetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetUsersHistorical - GetUsers (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetBundlesHistorical operation
#
##############################################################################
print_uniswapV2GetBundlesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetBundlesHistorical - GetBundles (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetBurnsHistorical operation
#
##############################################################################
print_uniswapV2GetBurnsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetBurnsHistorical - GetBurns (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burns." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetDayDataHistorical operation
#
##############################################################################
print_uniswapV2GetDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetDayDataHistorical - GetDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapv2 day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetFactoryHistorical operation
#
##############################################################################
print_uniswapV2GetFactoryHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetFactoryHistorical - GetFactory (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets factory." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetLiquidityPositionsHistorical operation
#
##############################################################################
print_uniswapV2GetLiquidityPositionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetLiquidityPositionsHistorical - GetLiquidityPositions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidity positions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetLiquidityPositionsSnapshotsHistorical operation
#
##############################################################################
print_uniswapV2GetLiquidityPositionsSnapshotsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetLiquidityPositionsSnapshotsHistorical - GetLiquidityPositionsSnapshots (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquidity positions snapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetMintsHistorical operation
#
##############################################################################
print_uniswapV2GetMintsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetMintsHistorical - GetMints (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetPoolsCurrent operation
#
##############################################################################
print_uniswapV2GetPoolsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPoolsCurrent - GetPools (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetPoolsDayDataHistorical operation
#
##############################################################################
print_uniswapV2GetPoolsDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPoolsDayDataHistorical - GetPoolsDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetPoolsHistorical operation
#
##############################################################################
print_uniswapV2GetPoolsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPoolsHistorical - GetPools (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetPoolsHourDataHistorical operation
#
##############################################################################
print_uniswapV2GetPoolsHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPoolsHourDataHistorical - GetPoolsHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools tracked each our." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetSwapsCurrent operation
#
##############################################################################
print_uniswapV2GetSwapsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetSwapsCurrent - GetSwaps (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetSwapsHistorical operation
#
##############################################################################
print_uniswapV2GetSwapsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetSwapsHistorical - GetSwaps (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetTokensCurrent operation
#
##############################################################################
print_uniswapV2GetTokensCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTokensCurrent - GetTokens (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetTokensDayDataHistorical operation
#
##############################################################################
print_uniswapV2GetTokensDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTokensDayDataHistorical - GetTokensDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetTokensHistorical operation
#
##############################################################################
print_uniswapV2GetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTokensHistorical - GetTokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetTransactionsHistorical operation
#
##############################################################################
print_uniswapV2GetTransactionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTransactionsHistorical - GetTransactions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetUsersHistorical operation
#
##############################################################################
print_uniswapV2GetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUsersHistorical - GetUsers (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetBundlesCurrent operation
#
##############################################################################
print_uniswapV3GetBundlesCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBundlesCurrent - GetBundles (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetBundlesHistorical operation
#
##############################################################################
print_uniswapV3GetBundlesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBundlesHistorical - GetBundles (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetBurnsCurrent operation
#
##############################################################################
print_uniswapV3GetBurnsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBurnsCurrent - GetBurns (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burns." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetBurnsHistorical operation
#
##############################################################################
print_uniswapV3GetBurnsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBurnsHistorical - GetBurns (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burns." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetDayDataCurrent operation
#
##############################################################################
print_uniswapV3GetDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetDayDataCurrent - GetDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapv3 day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetDayDataHistorical - GetDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapv3 day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetFactoryCurrent operation
#
##############################################################################
print_uniswapV3GetFactoryCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetFactoryCurrent - GetFactory (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets factory." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetFactoryHistorical operation
#
##############################################################################
print_uniswapV3GetFactoryHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetFactoryHistorical - GetFactory (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets factory." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetMintsCurrent operation
#
##############################################################################
print_uniswapV3GetMintsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetMintsCurrent - GetMints (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetMintsHistorical operation
#
##############################################################################
print_uniswapV3GetMintsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetMintsHistorical - GetMints (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mints." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolsCurrent operation
#
##############################################################################
print_uniswapV3GetPoolsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsCurrent - GetPools (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolsDayDataCurrent operation
#
##############################################################################
print_uniswapV3GetPoolsDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsDayDataCurrent - GetPoolsDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolsDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetPoolsDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsDayDataHistorical - GetPoolsDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolsHistorical operation
#
##############################################################################
print_uniswapV3GetPoolsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsHistorical - GetPools (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolsHourDataCurrent operation
#
##############################################################################
print_uniswapV3GetPoolsHourDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsHourDataCurrent - GetPoolsHourData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools hour data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolsHourDataHistorical operation
#
##############################################################################
print_uniswapV3GetPoolsHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsHourDataHistorical - GetPoolsHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools hour data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPositionsCurrent operation
#
##############################################################################
print_uniswapV3GetPositionsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionsCurrent - GetPositions (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets positions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPositionsHistorical operation
#
##############################################################################
print_uniswapV3GetPositionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionsHistorical - GetPositions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets positions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPositionsSnaphotsHistorical operation
#
##############################################################################
print_uniswapV3GetPositionsSnaphotsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionsSnaphotsHistorical - GetPositionsSnaphots (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets positions snapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPositionsSnapshotsCurrent operation
#
##############################################################################
print_uniswapV3GetPositionsSnapshotsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionsSnapshotsCurrent - GetPositionsSnapshots (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets positions snapshots." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetSwapsCurrent operation
#
##############################################################################
print_uniswapV3GetSwapsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetSwapsCurrent - GetSwaps (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetSwapsHistorical operation
#
##############################################################################
print_uniswapV3GetSwapsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetSwapsHistorical - GetSwaps (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTicksCurrent operation
#
##############################################################################
print_uniswapV3GetTicksCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTicksCurrent - GetTicks (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ticks." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTicksDayDataCurrent operation
#
##############################################################################
print_uniswapV3GetTicksDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTicksDayDataCurrent - GetTicksDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ticks day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTicksDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetTicksDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTicksDayDataHistorical - GetTicksDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ticks day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTicksHistorical operation
#
##############################################################################
print_uniswapV3GetTicksHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTicksHistorical - GetTicks (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ticks." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}poolId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: poolId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokensCurrent operation
#
##############################################################################
print_uniswapV3GetTokensCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensCurrent - GetTokens (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_token_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_token_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokensDayDataCurrent operation
#
##############################################################################
print_uniswapV3GetTokensDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensDayDataCurrent - GetTokensDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_token_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_token_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokensDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetTokensDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensDayDataHistorical - GetTokensDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens day data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokensHistorical operation
#
##############################################################################
print_uniswapV3GetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensHistorical - GetTokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokensHourDataCurrent operation
#
##############################################################################
print_uniswapV3GetTokensHourDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensHourDataCurrent - GetTokensHourData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens hour data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_token_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_token_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokensHourDataHistorical operation
#
##############################################################################
print_uniswapV3GetTokensHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensHourDataHistorical - GetTokensHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens hour data." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}tokenId${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: tokenId=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTransactionsHistorical operation
#
##############################################################################
print_uniswapV3GetTransactionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTransactionsHistorical - GetTransactions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call cowGetOrdersHistorical operation
#
##############################################################################
call_cowGetOrdersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/cow/orders/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call cowGetSettlementsHistorical operation
#
##############################################################################
call_cowGetSettlementsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/cow/settlements/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call cowGetTokensHistorical operation
#
##############################################################################
call_cowGetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/cow/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call cowGetTradesHistorical operation
#
##############################################################################
call_cowGetTradesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/cow/trades/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call cowGetUsersHistorical operation
#
##############################################################################
call_cowGetUsersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/cow/users/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetAccountsHistorical operation
#
##############################################################################
call_curveGetAccountsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/accounts/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetAddLiquidityEventsHistorical operation
#
##############################################################################
call_curveGetAddLiquidityEventsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/addLiquidityEvents/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetAdminFeeChangeLogsHistorical operation
#
##############################################################################
call_curveGetAdminFeeChangeLogsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/adminFeeChangeLogs/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetAmplificationCoeffChangeLogsHistorical operation
#
##############################################################################
call_curveGetAmplificationCoeffChangeLogsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/amplificationCoeffChangeLogs/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetCoinsHistorical operation
#
##############################################################################
call_curveGetCoinsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/coins/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetContractsHistorical operation
#
##############################################################################
call_curveGetContractsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/contracts/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetContractsVersionsHistorical operation
#
##############################################################################
call_curveGetContractsVersionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/contractsVersions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetDailyVolumesHistorical operation
#
##############################################################################
call_curveGetDailyVolumesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/dailyVolumes/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetExchangesHistorical operation
#
##############################################################################
call_curveGetExchangesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/exchanges/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetFeeChangeLogsHistorical operation
#
##############################################################################
call_curveGetFeeChangeLogsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/feeChangeLogs/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetGaugesDepositsHistorical operation
#
##############################################################################
call_curveGetGaugesDepositsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugesDeposits/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetGaugesHistorical operation
#
##############################################################################
call_curveGetGaugesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/gauges/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetGaugesLiquidityHistorical operation
#
##############################################################################
call_curveGetGaugesLiquidityHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugesLiquidity/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetGaugesTotalWeightsHistorical operation
#
##############################################################################
call_curveGetGaugesTotalWeightsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugesTotalWeights/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetGaugesTypesHistorical operation
#
##############################################################################
call_curveGetGaugesTypesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugesTypes/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetGaugesTypesWeightsHistorical operation
#
##############################################################################
call_curveGetGaugesTypesWeightsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugesTypesWeights/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetGaugesWeightsHistorical operation
#
##############################################################################
call_curveGetGaugesWeightsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugesWeights/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetGaugesWeightsVotesHistorical operation
#
##############################################################################
call_curveGetGaugesWeightsVotesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugesWeightsVotes/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetGaugesWithdrawHistorical operation
#
##############################################################################
call_curveGetGaugesWithdrawHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugesWithdraws/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetHourlyVolumesHistorical operation
#
##############################################################################
call_curveGetHourlyVolumesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/hourlyVolumes/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetLpTokensHistorical operation
#
##############################################################################
call_curveGetLpTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/lpTokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetPoolsHistorical operation
#
##############################################################################
call_curveGetPoolsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/pools/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetProposalsHistorical operation
#
##############################################################################
call_curveGetProposalsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/proposals/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetProposalsVotesHistorical operation
#
##############################################################################
call_curveGetProposalsVotesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/proposalsVotes/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetRemoveLiquidityEventsHistorical operation
#
##############################################################################
call_curveGetRemoveLiquidityEventsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/removeLiquidityEvents/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetRemoveLiquidityOneEventsHistorical operation
#
##############################################################################
call_curveGetRemoveLiquidityOneEventsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/removeLiquidityOneEvents/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetSystemStatesHistorical operation
#
##############################################################################
call_curveGetSystemStatesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/systemStates/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetTokensHistorical operation
#
##############################################################################
call_curveGetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/curve/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetTransferOwnershipEventsHistorical operation
#
##############################################################################
call_curveGetTransferOwnershipEventsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/transferOwnershipEvents/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetUnderlyingCoinsHistorical operation
#
##############################################################################
call_curveGetUnderlyingCoinsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/underlyingCoins/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetVotingAppsHistorical operation
#
##############################################################################
call_curveGetVotingAppsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/votingApps/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetWeeklyVolumesHistorical operation
#
##############################################################################
call_curveGetWeeklyVolumesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/weeklyVolumes/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetBatchesHistorical operation
#
##############################################################################
call_dexGetBatchesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/dex/batches/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetDepositsHistorical operation
#
##############################################################################
call_dexGetDepositsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/dex/deposits/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetOrdersHistorical operation
#
##############################################################################
call_dexGetOrdersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/dex/orders/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetPricesHistorical operation
#
##############################################################################
call_dexGetPricesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/dex/prices/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetSolutionsHistorical operation
#
##############################################################################
call_dexGetSolutionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/dex/solutions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetStatsHistorical operation
#
##############################################################################
call_dexGetStatsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/dex/stats/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetTokensHistorical operation
#
##############################################################################
call_dexGetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/dex/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetTradesHistorical operation
#
##############################################################################
call_dexGetTradesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/dex/trades/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetUsersHistorical operation
#
##############################################################################
call_dexGetUsersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/dex/users/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetWithdrawsHistorical operation
#
##############################################################################
call_dexGetWithdrawsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/dex/withdraws/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetWithdrawsRequestsHistorical operation
#
##############################################################################
call_dexGetWithdrawsRequestsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/dex/withdrawsRequests/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call curveGetExchangesCurrent operation
#
##############################################################################
call_curveGetExchangesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/exchanges/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dexGetTradesCurrent operation
#
##############################################################################
call_dexGetTradesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/trades/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetBundlesHistorical operation
#
##############################################################################
call_sushiswapGetBundlesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/bundles/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetBurnsHistorical operation
#
##############################################################################
call_sushiswapGetBurnsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/burns/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetDayDataHistorical operation
#
##############################################################################
call_sushiswapGetDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/dayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetFactoryHistorical operation
#
##############################################################################
call_sushiswapGetFactoryHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/factory/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetHourDataHistorical operation
#
##############################################################################
call_sushiswapGetHourDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/hourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetLiquidityPositionHistorical operation
#
##############################################################################
call_sushiswapGetLiquidityPositionHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/liquidityPosition/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetLiquidityPositionSnapshotHistorical operation
#
##############################################################################
call_sushiswapGetLiquidityPositionSnapshotHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/liquidityPositionSnapshots/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetMintsHistorical operation
#
##############################################################################
call_sushiswapGetMintsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/mints/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetPoolsCurrent operation
#
##############################################################################
call_sushiswapGetPoolsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pools/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetPoolsDayDataHistorical operation
#
##############################################################################
call_sushiswapGetPoolsDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/poolsDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetPoolsHistorical operation
#
##############################################################################
call_sushiswapGetPoolsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pools/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetPoolsHourDataHistorical operation
#
##############################################################################
call_sushiswapGetPoolsHourDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/poolsHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetSwapsCurrent operation
#
##############################################################################
call_sushiswapGetSwapsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/swaps/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetSwapsHistorical operation
#
##############################################################################
call_sushiswapGetSwapsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/swaps/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetTokensCurrent operation
#
##############################################################################
call_sushiswapGetTokensCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/tokens/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetTokensDayDataHistorical operation
#
##############################################################################
call_sushiswapGetTokensDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/tokensDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetTokensHistorical operation
#
##############################################################################
call_sushiswapGetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetTransactionsHistorical operation
#
##############################################################################
call_sushiswapGetTransactionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/transactions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call sushiswapGetUsersHistorical operation
#
##############################################################################
call_sushiswapGetUsersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/users/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetBundlesHistorical operation
#
##############################################################################
call_uniswapV2GetBundlesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/bundles/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetBurnsHistorical operation
#
##############################################################################
call_uniswapV2GetBurnsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/burns/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetDayDataHistorical operation
#
##############################################################################
call_uniswapV2GetDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/dayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetFactoryHistorical operation
#
##############################################################################
call_uniswapV2GetFactoryHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/factory/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetLiquidityPositionsHistorical operation
#
##############################################################################
call_uniswapV2GetLiquidityPositionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/liquidityPositions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetLiquidityPositionsSnapshotsHistorical operation
#
##############################################################################
call_uniswapV2GetLiquidityPositionsSnapshotsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/liquidityPositionsSnapshots/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetMintsHistorical operation
#
##############################################################################
call_uniswapV2GetMintsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/mints/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetPoolsCurrent operation
#
##############################################################################
call_uniswapV2GetPoolsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pools/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetPoolsDayDataHistorical operation
#
##############################################################################
call_uniswapV2GetPoolsDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/poolsDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetPoolsHistorical operation
#
##############################################################################
call_uniswapV2GetPoolsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pools/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetPoolsHourDataHistorical operation
#
##############################################################################
call_uniswapV2GetPoolsHourDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/poolsHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetSwapsCurrent operation
#
##############################################################################
call_uniswapV2GetSwapsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/swaps/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetSwapsHistorical operation
#
##############################################################################
call_uniswapV2GetSwapsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/swaps/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetTokensCurrent operation
#
##############################################################################
call_uniswapV2GetTokensCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/tokens/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetTokensDayDataHistorical operation
#
##############################################################################
call_uniswapV2GetTokensDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/tokensDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetTokensHistorical operation
#
##############################################################################
call_uniswapV2GetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetTransactionsHistorical operation
#
##############################################################################
call_uniswapV2GetTransactionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/transactions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV2GetUsersHistorical operation
#
##############################################################################
call_uniswapV2GetUsersHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/users/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetBundlesCurrent operation
#
##############################################################################
call_uniswapV3GetBundlesCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/bundles/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetBundlesHistorical operation
#
##############################################################################
call_uniswapV3GetBundlesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/bundles/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetBurnsCurrent operation
#
##############################################################################
call_uniswapV3GetBurnsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/burns/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetBurnsHistorical operation
#
##############################################################################
call_uniswapV3GetBurnsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/burns/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetDayDataCurrent operation
#
##############################################################################
call_uniswapV3GetDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/dayData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetDayDataHistorical operation
#
##############################################################################
call_uniswapV3GetDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/dayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetFactoryCurrent operation
#
##############################################################################
call_uniswapV3GetFactoryCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/factory/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetFactoryHistorical operation
#
##############################################################################
call_uniswapV3GetFactoryHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/factory/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetMintsCurrent operation
#
##############################################################################
call_uniswapV3GetMintsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/mints/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetMintsHistorical operation
#
##############################################################################
call_uniswapV3GetMintsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/mints/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetPoolsCurrent operation
#
##############################################################################
call_uniswapV3GetPoolsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/pools/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetPoolsDayDataCurrent operation
#
##############################################################################
call_uniswapV3GetPoolsDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolsDayData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetPoolsDayDataHistorical operation
#
##############################################################################
call_uniswapV3GetPoolsDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolsDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetPoolsHistorical operation
#
##############################################################################
call_uniswapV3GetPoolsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/pools/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetPoolsHourDataCurrent operation
#
##############################################################################
call_uniswapV3GetPoolsHourDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolsHourData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetPoolsHourDataHistorical operation
#
##############################################################################
call_uniswapV3GetPoolsHourDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolsHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetPositionsCurrent operation
#
##############################################################################
call_uniswapV3GetPositionsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positions/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetPositionsHistorical operation
#
##############################################################################
call_uniswapV3GetPositionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetPositionsSnaphotsHistorical operation
#
##############################################################################
call_uniswapV3GetPositionsSnaphotsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positionsSnapshots/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetPositionsSnapshotsCurrent operation
#
##############################################################################
call_uniswapV3GetPositionsSnapshotsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positionSnapshots/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetSwapsCurrent operation
#
##############################################################################
call_uniswapV3GetSwapsCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/swaps/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetSwapsHistorical operation
#
##############################################################################
call_uniswapV3GetSwapsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/swaps/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTicksCurrent operation
#
##############################################################################
call_uniswapV3GetTicksCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/ticks/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTicksDayDataCurrent operation
#
##############################################################################
call_uniswapV3GetTicksDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/ticksDayData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTicksDayDataHistorical operation
#
##############################################################################
call_uniswapV3GetTicksDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/ticksDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTicksHistorical operation
#
##############################################################################
call_uniswapV3GetTicksHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/ticks/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTokensCurrent operation
#
##############################################################################
call_uniswapV3GetTokensCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_token_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokens/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTokensDayDataCurrent operation
#
##############################################################################
call_uniswapV3GetTokensDayDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_token_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokensDayData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTokensDayDataHistorical operation
#
##############################################################################
call_uniswapV3GetTokensDayDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokensDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTokensHistorical operation
#
##############################################################################
call_uniswapV3GetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTokensHourDataCurrent operation
#
##############################################################################
call_uniswapV3GetTokensHourDataCurrent() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_token_id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokensHourData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTokensHourDataHistorical operation
#
##############################################################################
call_uniswapV3GetTokensHourDataHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokensHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call uniswapV3GetTransactionsHistorical operation
#
##############################################################################
call_uniswapV3GetTransactionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/transactions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}



##############################################################################
#
# Main
#
##############################################################################


# Check dependencies
type curl >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'cURL' installed."; exit 1; }
type sed >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'sed' installed."; exit 1; }
type column >/dev/null 2>&1 || { echo >&2 "ERROR: You do not have 'bsdmainutils' installed."; exit 1; }

#
# Process command line
#
# Pass all arguments before 'operation' to cURL except the ones we override
#
take_user=false
take_host=false
take_accept_header=false
take_contenttype_header=false

for key in "$@"; do
# Take the value of -u|--user argument
if [[ "$take_user" = true ]]; then
    basic_auth_credential="$key"
    take_user=false
    continue
fi
# Take the value of --host argument
if [[ "$take_host" = true ]]; then
    host="$key"
    take_host=false
    continue
fi
# Take the value of --accept argument
if [[ "$take_accept_header" = true ]]; then
    header_accept=$(lookup_mime_type "$key")
    take_accept_header=false
    continue
fi
# Take the value of --content-type argument
if [[ "$take_contenttype_header" = true ]]; then
    header_content_type=$(lookup_mime_type "$key")
    take_contenttype_header=false
    continue
fi
case $key in
    -h|--help)
    if [[ "x$operation" == "x" ]]; then
        print_help
        exit 0
    else
        eval "print_${operation}_help"
        exit 0
    fi
    ;;
    -V|--version)
    print_version
    exit 0
    ;;
    --about)
    print_about
    exit 0
    ;;
    -u|--user)
    take_user=true
    ;;
    --host)
    take_host=true
    ;;
    --force)
    force=true
    ;;
    -ac|--accept)
    take_accept_header=true
    ;;
    -ct|--content-type)
    take_contenttype_header=true
    ;;
    --dry-run)
    print_curl=true
    ;;
    -nc|--no-colors)
        RED=""
        GREEN=""
        YELLOW=""
        BLUE=""
        MAGENTA=""
        CYAN=""
        WHITE=""
        BOLD=""
        OFF=""
        result_color_table=( "" "" "" "" "" "" "" )
    ;;
    cowGetOrdersHistorical)
    operation="cowGetOrdersHistorical"
    ;;
    cowGetSettlementsHistorical)
    operation="cowGetSettlementsHistorical"
    ;;
    cowGetTokensHistorical)
    operation="cowGetTokensHistorical"
    ;;
    cowGetTradesHistorical)
    operation="cowGetTradesHistorical"
    ;;
    cowGetUsersHistorical)
    operation="cowGetUsersHistorical"
    ;;
    curveGetAccountsHistorical)
    operation="curveGetAccountsHistorical"
    ;;
    curveGetAddLiquidityEventsHistorical)
    operation="curveGetAddLiquidityEventsHistorical"
    ;;
    curveGetAdminFeeChangeLogsHistorical)
    operation="curveGetAdminFeeChangeLogsHistorical"
    ;;
    curveGetAmplificationCoeffChangeLogsHistorical)
    operation="curveGetAmplificationCoeffChangeLogsHistorical"
    ;;
    curveGetCoinsHistorical)
    operation="curveGetCoinsHistorical"
    ;;
    curveGetContractsHistorical)
    operation="curveGetContractsHistorical"
    ;;
    curveGetContractsVersionsHistorical)
    operation="curveGetContractsVersionsHistorical"
    ;;
    curveGetDailyVolumesHistorical)
    operation="curveGetDailyVolumesHistorical"
    ;;
    curveGetExchangesHistorical)
    operation="curveGetExchangesHistorical"
    ;;
    curveGetFeeChangeLogsHistorical)
    operation="curveGetFeeChangeLogsHistorical"
    ;;
    curveGetGaugesDepositsHistorical)
    operation="curveGetGaugesDepositsHistorical"
    ;;
    curveGetGaugesHistorical)
    operation="curveGetGaugesHistorical"
    ;;
    curveGetGaugesLiquidityHistorical)
    operation="curveGetGaugesLiquidityHistorical"
    ;;
    curveGetGaugesTotalWeightsHistorical)
    operation="curveGetGaugesTotalWeightsHistorical"
    ;;
    curveGetGaugesTypesHistorical)
    operation="curveGetGaugesTypesHistorical"
    ;;
    curveGetGaugesTypesWeightsHistorical)
    operation="curveGetGaugesTypesWeightsHistorical"
    ;;
    curveGetGaugesWeightsHistorical)
    operation="curveGetGaugesWeightsHistorical"
    ;;
    curveGetGaugesWeightsVotesHistorical)
    operation="curveGetGaugesWeightsVotesHistorical"
    ;;
    curveGetGaugesWithdrawHistorical)
    operation="curveGetGaugesWithdrawHistorical"
    ;;
    curveGetHourlyVolumesHistorical)
    operation="curveGetHourlyVolumesHistorical"
    ;;
    curveGetLpTokensHistorical)
    operation="curveGetLpTokensHistorical"
    ;;
    curveGetPoolsHistorical)
    operation="curveGetPoolsHistorical"
    ;;
    curveGetProposalsHistorical)
    operation="curveGetProposalsHistorical"
    ;;
    curveGetProposalsVotesHistorical)
    operation="curveGetProposalsVotesHistorical"
    ;;
    curveGetRemoveLiquidityEventsHistorical)
    operation="curveGetRemoveLiquidityEventsHistorical"
    ;;
    curveGetRemoveLiquidityOneEventsHistorical)
    operation="curveGetRemoveLiquidityOneEventsHistorical"
    ;;
    curveGetSystemStatesHistorical)
    operation="curveGetSystemStatesHistorical"
    ;;
    curveGetTokensHistorical)
    operation="curveGetTokensHistorical"
    ;;
    curveGetTransferOwnershipEventsHistorical)
    operation="curveGetTransferOwnershipEventsHistorical"
    ;;
    curveGetUnderlyingCoinsHistorical)
    operation="curveGetUnderlyingCoinsHistorical"
    ;;
    curveGetVotingAppsHistorical)
    operation="curveGetVotingAppsHistorical"
    ;;
    curveGetWeeklyVolumesHistorical)
    operation="curveGetWeeklyVolumesHistorical"
    ;;
    dexGetBatchesHistorical)
    operation="dexGetBatchesHistorical"
    ;;
    dexGetDepositsHistorical)
    operation="dexGetDepositsHistorical"
    ;;
    dexGetOrdersHistorical)
    operation="dexGetOrdersHistorical"
    ;;
    dexGetPricesHistorical)
    operation="dexGetPricesHistorical"
    ;;
    dexGetSolutionsHistorical)
    operation="dexGetSolutionsHistorical"
    ;;
    dexGetStatsHistorical)
    operation="dexGetStatsHistorical"
    ;;
    dexGetTokensHistorical)
    operation="dexGetTokensHistorical"
    ;;
    dexGetTradesHistorical)
    operation="dexGetTradesHistorical"
    ;;
    dexGetUsersHistorical)
    operation="dexGetUsersHistorical"
    ;;
    dexGetWithdrawsHistorical)
    operation="dexGetWithdrawsHistorical"
    ;;
    dexGetWithdrawsRequestsHistorical)
    operation="dexGetWithdrawsRequestsHistorical"
    ;;
    curveGetExchangesCurrent)
    operation="curveGetExchangesCurrent"
    ;;
    dexGetTradesCurrent)
    operation="dexGetTradesCurrent"
    ;;
    sushiswapGetBundlesHistorical)
    operation="sushiswapGetBundlesHistorical"
    ;;
    sushiswapGetBurnsHistorical)
    operation="sushiswapGetBurnsHistorical"
    ;;
    sushiswapGetDayDataHistorical)
    operation="sushiswapGetDayDataHistorical"
    ;;
    sushiswapGetFactoryHistorical)
    operation="sushiswapGetFactoryHistorical"
    ;;
    sushiswapGetHourDataHistorical)
    operation="sushiswapGetHourDataHistorical"
    ;;
    sushiswapGetLiquidityPositionHistorical)
    operation="sushiswapGetLiquidityPositionHistorical"
    ;;
    sushiswapGetLiquidityPositionSnapshotHistorical)
    operation="sushiswapGetLiquidityPositionSnapshotHistorical"
    ;;
    sushiswapGetMintsHistorical)
    operation="sushiswapGetMintsHistorical"
    ;;
    sushiswapGetPoolsCurrent)
    operation="sushiswapGetPoolsCurrent"
    ;;
    sushiswapGetPoolsDayDataHistorical)
    operation="sushiswapGetPoolsDayDataHistorical"
    ;;
    sushiswapGetPoolsHistorical)
    operation="sushiswapGetPoolsHistorical"
    ;;
    sushiswapGetPoolsHourDataHistorical)
    operation="sushiswapGetPoolsHourDataHistorical"
    ;;
    sushiswapGetSwapsCurrent)
    operation="sushiswapGetSwapsCurrent"
    ;;
    sushiswapGetSwapsHistorical)
    operation="sushiswapGetSwapsHistorical"
    ;;
    sushiswapGetTokensCurrent)
    operation="sushiswapGetTokensCurrent"
    ;;
    sushiswapGetTokensDayDataHistorical)
    operation="sushiswapGetTokensDayDataHistorical"
    ;;
    sushiswapGetTokensHistorical)
    operation="sushiswapGetTokensHistorical"
    ;;
    sushiswapGetTransactionsHistorical)
    operation="sushiswapGetTransactionsHistorical"
    ;;
    sushiswapGetUsersHistorical)
    operation="sushiswapGetUsersHistorical"
    ;;
    uniswapV2GetBundlesHistorical)
    operation="uniswapV2GetBundlesHistorical"
    ;;
    uniswapV2GetBurnsHistorical)
    operation="uniswapV2GetBurnsHistorical"
    ;;
    uniswapV2GetDayDataHistorical)
    operation="uniswapV2GetDayDataHistorical"
    ;;
    uniswapV2GetFactoryHistorical)
    operation="uniswapV2GetFactoryHistorical"
    ;;
    uniswapV2GetLiquidityPositionsHistorical)
    operation="uniswapV2GetLiquidityPositionsHistorical"
    ;;
    uniswapV2GetLiquidityPositionsSnapshotsHistorical)
    operation="uniswapV2GetLiquidityPositionsSnapshotsHistorical"
    ;;
    uniswapV2GetMintsHistorical)
    operation="uniswapV2GetMintsHistorical"
    ;;
    uniswapV2GetPoolsCurrent)
    operation="uniswapV2GetPoolsCurrent"
    ;;
    uniswapV2GetPoolsDayDataHistorical)
    operation="uniswapV2GetPoolsDayDataHistorical"
    ;;
    uniswapV2GetPoolsHistorical)
    operation="uniswapV2GetPoolsHistorical"
    ;;
    uniswapV2GetPoolsHourDataHistorical)
    operation="uniswapV2GetPoolsHourDataHistorical"
    ;;
    uniswapV2GetSwapsCurrent)
    operation="uniswapV2GetSwapsCurrent"
    ;;
    uniswapV2GetSwapsHistorical)
    operation="uniswapV2GetSwapsHistorical"
    ;;
    uniswapV2GetTokensCurrent)
    operation="uniswapV2GetTokensCurrent"
    ;;
    uniswapV2GetTokensDayDataHistorical)
    operation="uniswapV2GetTokensDayDataHistorical"
    ;;
    uniswapV2GetTokensHistorical)
    operation="uniswapV2GetTokensHistorical"
    ;;
    uniswapV2GetTransactionsHistorical)
    operation="uniswapV2GetTransactionsHistorical"
    ;;
    uniswapV2GetUsersHistorical)
    operation="uniswapV2GetUsersHistorical"
    ;;
    uniswapV3GetBundlesCurrent)
    operation="uniswapV3GetBundlesCurrent"
    ;;
    uniswapV3GetBundlesHistorical)
    operation="uniswapV3GetBundlesHistorical"
    ;;
    uniswapV3GetBurnsCurrent)
    operation="uniswapV3GetBurnsCurrent"
    ;;
    uniswapV3GetBurnsHistorical)
    operation="uniswapV3GetBurnsHistorical"
    ;;
    uniswapV3GetDayDataCurrent)
    operation="uniswapV3GetDayDataCurrent"
    ;;
    uniswapV3GetDayDataHistorical)
    operation="uniswapV3GetDayDataHistorical"
    ;;
    uniswapV3GetFactoryCurrent)
    operation="uniswapV3GetFactoryCurrent"
    ;;
    uniswapV3GetFactoryHistorical)
    operation="uniswapV3GetFactoryHistorical"
    ;;
    uniswapV3GetMintsCurrent)
    operation="uniswapV3GetMintsCurrent"
    ;;
    uniswapV3GetMintsHistorical)
    operation="uniswapV3GetMintsHistorical"
    ;;
    uniswapV3GetPoolsCurrent)
    operation="uniswapV3GetPoolsCurrent"
    ;;
    uniswapV3GetPoolsDayDataCurrent)
    operation="uniswapV3GetPoolsDayDataCurrent"
    ;;
    uniswapV3GetPoolsDayDataHistorical)
    operation="uniswapV3GetPoolsDayDataHistorical"
    ;;
    uniswapV3GetPoolsHistorical)
    operation="uniswapV3GetPoolsHistorical"
    ;;
    uniswapV3GetPoolsHourDataCurrent)
    operation="uniswapV3GetPoolsHourDataCurrent"
    ;;
    uniswapV3GetPoolsHourDataHistorical)
    operation="uniswapV3GetPoolsHourDataHistorical"
    ;;
    uniswapV3GetPositionsCurrent)
    operation="uniswapV3GetPositionsCurrent"
    ;;
    uniswapV3GetPositionsHistorical)
    operation="uniswapV3GetPositionsHistorical"
    ;;
    uniswapV3GetPositionsSnaphotsHistorical)
    operation="uniswapV3GetPositionsSnaphotsHistorical"
    ;;
    uniswapV3GetPositionsSnapshotsCurrent)
    operation="uniswapV3GetPositionsSnapshotsCurrent"
    ;;
    uniswapV3GetSwapsCurrent)
    operation="uniswapV3GetSwapsCurrent"
    ;;
    uniswapV3GetSwapsHistorical)
    operation="uniswapV3GetSwapsHistorical"
    ;;
    uniswapV3GetTicksCurrent)
    operation="uniswapV3GetTicksCurrent"
    ;;
    uniswapV3GetTicksDayDataCurrent)
    operation="uniswapV3GetTicksDayDataCurrent"
    ;;
    uniswapV3GetTicksDayDataHistorical)
    operation="uniswapV3GetTicksDayDataHistorical"
    ;;
    uniswapV3GetTicksHistorical)
    operation="uniswapV3GetTicksHistorical"
    ;;
    uniswapV3GetTokensCurrent)
    operation="uniswapV3GetTokensCurrent"
    ;;
    uniswapV3GetTokensDayDataCurrent)
    operation="uniswapV3GetTokensDayDataCurrent"
    ;;
    uniswapV3GetTokensDayDataHistorical)
    operation="uniswapV3GetTokensDayDataHistorical"
    ;;
    uniswapV3GetTokensHistorical)
    operation="uniswapV3GetTokensHistorical"
    ;;
    uniswapV3GetTokensHourDataCurrent)
    operation="uniswapV3GetTokensHourDataCurrent"
    ;;
    uniswapV3GetTokensHourDataHistorical)
    operation="uniswapV3GetTokensHourDataHistorical"
    ;;
    uniswapV3GetTransactionsHistorical)
    operation="uniswapV3GetTransactionsHistorical"
    ;;
    *==*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content as strings
    if [[ "$operation" ]]; then
        IFS='==' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]="\"${body_value}\""
    fi
    ;;
    *:=*)
    # Parse body arguments and convert them into top level
    # JSON properties passed in the body content without quotes
    if [[ "$operation" ]]; then
        # ignore error about 'sep' being unused
        # shellcheck disable=SC2034
        IFS=':=' read -r body_key sep body_value <<< "$key"
        body_parameters[${body_key}]=${body_value}
    fi
    ;;
    +([^=]):*)
    # Parse header arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS=':' read -r header_name header_value <<< "$key"
        header_arguments[$header_name]=$header_value
    else
        curl_arguments+=" $key"
    fi
    ;;
    -)
    body_content_temp_file=$(mktemp)
    cat - > "$body_content_temp_file"
    ;;
    *=*)
    # Parse operation arguments and convert them into curl
    # only after the operation argument
    if [[ "$operation" ]]; then
        IFS='=' read -r parameter_name parameter_value <<< "$key"
        if [[ -z "${operation_parameters[$parameter_name]+foo}" ]]; then
            operation_parameters[$parameter_name]=$(url_escape "${parameter_value}")
        else
            operation_parameters[$parameter_name]+=":::"$(url_escape "${parameter_value}")
        fi
    else
        curl_arguments+=" $key"
    fi
    ;;
    *)
    # If we are before the operation, treat the arguments as cURL arguments
    if [[ "x$operation" == "x" ]]; then
        # Maintain quotes around cURL arguments if necessary
        space_regexp="[[:space:]]"
        if [[ $key =~ $space_regexp ]]; then
            curl_arguments+=" \"$key\""
        else
            curl_arguments+=" $key"
        fi
    fi
    ;;
esac
done


# Check if user provided host name
if [[ -z "$host" ]]; then
    ERROR_MSG="ERROR: No hostname provided!!! You have to  provide on command line option '--host ...'"
    exit 1
fi

# Check if user specified operation ID
if [[ -z "$operation" ]]; then
    ERROR_MSG="ERROR: No operation specified!!!"
    exit 1
fi


# Run cURL command based on the operation ID
case $operation in
    cowGetOrdersHistorical)
    call_cowGetOrdersHistorical
    ;;
    cowGetSettlementsHistorical)
    call_cowGetSettlementsHistorical
    ;;
    cowGetTokensHistorical)
    call_cowGetTokensHistorical
    ;;
    cowGetTradesHistorical)
    call_cowGetTradesHistorical
    ;;
    cowGetUsersHistorical)
    call_cowGetUsersHistorical
    ;;
    curveGetAccountsHistorical)
    call_curveGetAccountsHistorical
    ;;
    curveGetAddLiquidityEventsHistorical)
    call_curveGetAddLiquidityEventsHistorical
    ;;
    curveGetAdminFeeChangeLogsHistorical)
    call_curveGetAdminFeeChangeLogsHistorical
    ;;
    curveGetAmplificationCoeffChangeLogsHistorical)
    call_curveGetAmplificationCoeffChangeLogsHistorical
    ;;
    curveGetCoinsHistorical)
    call_curveGetCoinsHistorical
    ;;
    curveGetContractsHistorical)
    call_curveGetContractsHistorical
    ;;
    curveGetContractsVersionsHistorical)
    call_curveGetContractsVersionsHistorical
    ;;
    curveGetDailyVolumesHistorical)
    call_curveGetDailyVolumesHistorical
    ;;
    curveGetExchangesHistorical)
    call_curveGetExchangesHistorical
    ;;
    curveGetFeeChangeLogsHistorical)
    call_curveGetFeeChangeLogsHistorical
    ;;
    curveGetGaugesDepositsHistorical)
    call_curveGetGaugesDepositsHistorical
    ;;
    curveGetGaugesHistorical)
    call_curveGetGaugesHistorical
    ;;
    curveGetGaugesLiquidityHistorical)
    call_curveGetGaugesLiquidityHistorical
    ;;
    curveGetGaugesTotalWeightsHistorical)
    call_curveGetGaugesTotalWeightsHistorical
    ;;
    curveGetGaugesTypesHistorical)
    call_curveGetGaugesTypesHistorical
    ;;
    curveGetGaugesTypesWeightsHistorical)
    call_curveGetGaugesTypesWeightsHistorical
    ;;
    curveGetGaugesWeightsHistorical)
    call_curveGetGaugesWeightsHistorical
    ;;
    curveGetGaugesWeightsVotesHistorical)
    call_curveGetGaugesWeightsVotesHistorical
    ;;
    curveGetGaugesWithdrawHistorical)
    call_curveGetGaugesWithdrawHistorical
    ;;
    curveGetHourlyVolumesHistorical)
    call_curveGetHourlyVolumesHistorical
    ;;
    curveGetLpTokensHistorical)
    call_curveGetLpTokensHistorical
    ;;
    curveGetPoolsHistorical)
    call_curveGetPoolsHistorical
    ;;
    curveGetProposalsHistorical)
    call_curveGetProposalsHistorical
    ;;
    curveGetProposalsVotesHistorical)
    call_curveGetProposalsVotesHistorical
    ;;
    curveGetRemoveLiquidityEventsHistorical)
    call_curveGetRemoveLiquidityEventsHistorical
    ;;
    curveGetRemoveLiquidityOneEventsHistorical)
    call_curveGetRemoveLiquidityOneEventsHistorical
    ;;
    curveGetSystemStatesHistorical)
    call_curveGetSystemStatesHistorical
    ;;
    curveGetTokensHistorical)
    call_curveGetTokensHistorical
    ;;
    curveGetTransferOwnershipEventsHistorical)
    call_curveGetTransferOwnershipEventsHistorical
    ;;
    curveGetUnderlyingCoinsHistorical)
    call_curveGetUnderlyingCoinsHistorical
    ;;
    curveGetVotingAppsHistorical)
    call_curveGetVotingAppsHistorical
    ;;
    curveGetWeeklyVolumesHistorical)
    call_curveGetWeeklyVolumesHistorical
    ;;
    dexGetBatchesHistorical)
    call_dexGetBatchesHistorical
    ;;
    dexGetDepositsHistorical)
    call_dexGetDepositsHistorical
    ;;
    dexGetOrdersHistorical)
    call_dexGetOrdersHistorical
    ;;
    dexGetPricesHistorical)
    call_dexGetPricesHistorical
    ;;
    dexGetSolutionsHistorical)
    call_dexGetSolutionsHistorical
    ;;
    dexGetStatsHistorical)
    call_dexGetStatsHistorical
    ;;
    dexGetTokensHistorical)
    call_dexGetTokensHistorical
    ;;
    dexGetTradesHistorical)
    call_dexGetTradesHistorical
    ;;
    dexGetUsersHistorical)
    call_dexGetUsersHistorical
    ;;
    dexGetWithdrawsHistorical)
    call_dexGetWithdrawsHistorical
    ;;
    dexGetWithdrawsRequestsHistorical)
    call_dexGetWithdrawsRequestsHistorical
    ;;
    curveGetExchangesCurrent)
    call_curveGetExchangesCurrent
    ;;
    dexGetTradesCurrent)
    call_dexGetTradesCurrent
    ;;
    sushiswapGetBundlesHistorical)
    call_sushiswapGetBundlesHistorical
    ;;
    sushiswapGetBurnsHistorical)
    call_sushiswapGetBurnsHistorical
    ;;
    sushiswapGetDayDataHistorical)
    call_sushiswapGetDayDataHistorical
    ;;
    sushiswapGetFactoryHistorical)
    call_sushiswapGetFactoryHistorical
    ;;
    sushiswapGetHourDataHistorical)
    call_sushiswapGetHourDataHistorical
    ;;
    sushiswapGetLiquidityPositionHistorical)
    call_sushiswapGetLiquidityPositionHistorical
    ;;
    sushiswapGetLiquidityPositionSnapshotHistorical)
    call_sushiswapGetLiquidityPositionSnapshotHistorical
    ;;
    sushiswapGetMintsHistorical)
    call_sushiswapGetMintsHistorical
    ;;
    sushiswapGetPoolsCurrent)
    call_sushiswapGetPoolsCurrent
    ;;
    sushiswapGetPoolsDayDataHistorical)
    call_sushiswapGetPoolsDayDataHistorical
    ;;
    sushiswapGetPoolsHistorical)
    call_sushiswapGetPoolsHistorical
    ;;
    sushiswapGetPoolsHourDataHistorical)
    call_sushiswapGetPoolsHourDataHistorical
    ;;
    sushiswapGetSwapsCurrent)
    call_sushiswapGetSwapsCurrent
    ;;
    sushiswapGetSwapsHistorical)
    call_sushiswapGetSwapsHistorical
    ;;
    sushiswapGetTokensCurrent)
    call_sushiswapGetTokensCurrent
    ;;
    sushiswapGetTokensDayDataHistorical)
    call_sushiswapGetTokensDayDataHistorical
    ;;
    sushiswapGetTokensHistorical)
    call_sushiswapGetTokensHistorical
    ;;
    sushiswapGetTransactionsHistorical)
    call_sushiswapGetTransactionsHistorical
    ;;
    sushiswapGetUsersHistorical)
    call_sushiswapGetUsersHistorical
    ;;
    uniswapV2GetBundlesHistorical)
    call_uniswapV2GetBundlesHistorical
    ;;
    uniswapV2GetBurnsHistorical)
    call_uniswapV2GetBurnsHistorical
    ;;
    uniswapV2GetDayDataHistorical)
    call_uniswapV2GetDayDataHistorical
    ;;
    uniswapV2GetFactoryHistorical)
    call_uniswapV2GetFactoryHistorical
    ;;
    uniswapV2GetLiquidityPositionsHistorical)
    call_uniswapV2GetLiquidityPositionsHistorical
    ;;
    uniswapV2GetLiquidityPositionsSnapshotsHistorical)
    call_uniswapV2GetLiquidityPositionsSnapshotsHistorical
    ;;
    uniswapV2GetMintsHistorical)
    call_uniswapV2GetMintsHistorical
    ;;
    uniswapV2GetPoolsCurrent)
    call_uniswapV2GetPoolsCurrent
    ;;
    uniswapV2GetPoolsDayDataHistorical)
    call_uniswapV2GetPoolsDayDataHistorical
    ;;
    uniswapV2GetPoolsHistorical)
    call_uniswapV2GetPoolsHistorical
    ;;
    uniswapV2GetPoolsHourDataHistorical)
    call_uniswapV2GetPoolsHourDataHistorical
    ;;
    uniswapV2GetSwapsCurrent)
    call_uniswapV2GetSwapsCurrent
    ;;
    uniswapV2GetSwapsHistorical)
    call_uniswapV2GetSwapsHistorical
    ;;
    uniswapV2GetTokensCurrent)
    call_uniswapV2GetTokensCurrent
    ;;
    uniswapV2GetTokensDayDataHistorical)
    call_uniswapV2GetTokensDayDataHistorical
    ;;
    uniswapV2GetTokensHistorical)
    call_uniswapV2GetTokensHistorical
    ;;
    uniswapV2GetTransactionsHistorical)
    call_uniswapV2GetTransactionsHistorical
    ;;
    uniswapV2GetUsersHistorical)
    call_uniswapV2GetUsersHistorical
    ;;
    uniswapV3GetBundlesCurrent)
    call_uniswapV3GetBundlesCurrent
    ;;
    uniswapV3GetBundlesHistorical)
    call_uniswapV3GetBundlesHistorical
    ;;
    uniswapV3GetBurnsCurrent)
    call_uniswapV3GetBurnsCurrent
    ;;
    uniswapV3GetBurnsHistorical)
    call_uniswapV3GetBurnsHistorical
    ;;
    uniswapV3GetDayDataCurrent)
    call_uniswapV3GetDayDataCurrent
    ;;
    uniswapV3GetDayDataHistorical)
    call_uniswapV3GetDayDataHistorical
    ;;
    uniswapV3GetFactoryCurrent)
    call_uniswapV3GetFactoryCurrent
    ;;
    uniswapV3GetFactoryHistorical)
    call_uniswapV3GetFactoryHistorical
    ;;
    uniswapV3GetMintsCurrent)
    call_uniswapV3GetMintsCurrent
    ;;
    uniswapV3GetMintsHistorical)
    call_uniswapV3GetMintsHistorical
    ;;
    uniswapV3GetPoolsCurrent)
    call_uniswapV3GetPoolsCurrent
    ;;
    uniswapV3GetPoolsDayDataCurrent)
    call_uniswapV3GetPoolsDayDataCurrent
    ;;
    uniswapV3GetPoolsDayDataHistorical)
    call_uniswapV3GetPoolsDayDataHistorical
    ;;
    uniswapV3GetPoolsHistorical)
    call_uniswapV3GetPoolsHistorical
    ;;
    uniswapV3GetPoolsHourDataCurrent)
    call_uniswapV3GetPoolsHourDataCurrent
    ;;
    uniswapV3GetPoolsHourDataHistorical)
    call_uniswapV3GetPoolsHourDataHistorical
    ;;
    uniswapV3GetPositionsCurrent)
    call_uniswapV3GetPositionsCurrent
    ;;
    uniswapV3GetPositionsHistorical)
    call_uniswapV3GetPositionsHistorical
    ;;
    uniswapV3GetPositionsSnaphotsHistorical)
    call_uniswapV3GetPositionsSnaphotsHistorical
    ;;
    uniswapV3GetPositionsSnapshotsCurrent)
    call_uniswapV3GetPositionsSnapshotsCurrent
    ;;
    uniswapV3GetSwapsCurrent)
    call_uniswapV3GetSwapsCurrent
    ;;
    uniswapV3GetSwapsHistorical)
    call_uniswapV3GetSwapsHistorical
    ;;
    uniswapV3GetTicksCurrent)
    call_uniswapV3GetTicksCurrent
    ;;
    uniswapV3GetTicksDayDataCurrent)
    call_uniswapV3GetTicksDayDataCurrent
    ;;
    uniswapV3GetTicksDayDataHistorical)
    call_uniswapV3GetTicksDayDataHistorical
    ;;
    uniswapV3GetTicksHistorical)
    call_uniswapV3GetTicksHistorical
    ;;
    uniswapV3GetTokensCurrent)
    call_uniswapV3GetTokensCurrent
    ;;
    uniswapV3GetTokensDayDataCurrent)
    call_uniswapV3GetTokensDayDataCurrent
    ;;
    uniswapV3GetTokensDayDataHistorical)
    call_uniswapV3GetTokensDayDataHistorical
    ;;
    uniswapV3GetTokensHistorical)
    call_uniswapV3GetTokensHistorical
    ;;
    uniswapV3GetTokensHourDataCurrent)
    call_uniswapV3GetTokensHourDataCurrent
    ;;
    uniswapV3GetTokensHourDataHistorical)
    call_uniswapV3GetTokensHourDataHistorical
    ;;
    uniswapV3GetTransactionsHistorical)
    call_uniswapV3GetTransactionsHistorical
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
