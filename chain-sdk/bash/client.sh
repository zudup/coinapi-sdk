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
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::address"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::sell_token"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::buy_token"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::id"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionsHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetContractsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditysHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditysHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditysHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditysHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditysHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquiditysHistorical:::user"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypesHistorical:::name"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVotesHistorical:::user"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetGaugesHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::name"]=0
operation_parameters_minimum_occurrences["curveGetProposalVotesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalVotesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalVotesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalVotesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalVotesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::pool"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::address"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::id"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::pool"]=0
operation_parameters_minimum_occurrences["dexGetBatchsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetBatchsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetBatchsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetBatchsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetBatchsHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::user"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::buy_token"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::sell_token"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetStatssHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetStatssHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetStatssHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetStatssHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetStatssHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::address"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::buy_token"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::sell_token"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestsHistorical:::user"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::id"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawsHistorical:::user"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDatasHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDatasHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDatasHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDatasHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDatasHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactorysHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactorysHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactorysHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactorysHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactorysHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDatasHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDatasHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDatasHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDatasHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDatasHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::user"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::user"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDatasHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDatasHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDatasHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDatasHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDatasHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDatasHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDatasHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDatasHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDatasHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDatasHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDatasHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDatasHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDatasHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDatasHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::name"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairsHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::pair"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDatasHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDatasHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDatasHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDatasHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDatasHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokensHistorical:::name"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::id"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundleV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundleV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundleV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundleV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundleV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2sHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::user"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::user"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintV2sHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2sHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2sHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPoolsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2sHistorical:::pair"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2sHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2sHistorical:::name"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoryV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoryV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoryV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoryV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoryV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUserV2sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUserV2sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUserV2sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUserV2sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUserV2sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundleV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundleV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundleV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundleV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundleV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3sHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3sHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3sHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3sHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3sHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3sHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3sHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3sHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsDayDataCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolsHourDataCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3sHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3sHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3sHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionsSnapshotsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3sHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3sHistorical:::token_0"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3sHistorical:::token_1"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3sHistorical:::pool"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTicksDayDataCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDatasHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDatasHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDatasHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDatasHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDatasHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3sHistorical:::symbol"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3sHistorical:::name"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensCurrent:::filter_token_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensDayDataCurrent:::filter_token_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokensHourDataCurrent:::filter_token_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionV3sHistorical:::id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataV3sHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataV3sHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataV3sHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataV3sHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataV3sHistorical:::id"]=0

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
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::address"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::sell_token"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::buy_token"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::id"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionsHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetContractsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditysHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditysHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditysHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditysHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditysHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquiditysHistorical:::user"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypesHistorical:::name"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVotesHistorical:::user"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetGaugesHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::name"]=0
operation_parameters_maximum_occurrences["curveGetProposalVotesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalVotesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalVotesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalVotesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalVotesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::pool"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::address"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::id"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::pool"]=0
operation_parameters_maximum_occurrences["dexGetBatchsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetBatchsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetBatchsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetBatchsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetBatchsHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::user"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::buy_token"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::sell_token"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetStatssHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetStatssHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetStatssHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetStatssHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetStatssHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::address"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::buy_token"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::sell_token"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestsHistorical:::user"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::id"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawsHistorical:::user"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDatasHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDatasHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDatasHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDatasHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDatasHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactorysHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactorysHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactorysHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactorysHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactorysHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDatasHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDatasHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDatasHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDatasHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDatasHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::user"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::user"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDatasHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDatasHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDatasHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDatasHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDatasHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDatasHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDatasHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDatasHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDatasHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDatasHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDatasHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDatasHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDatasHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDatasHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::name"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairsHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::pair"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDatasHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDatasHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDatasHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDatasHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDatasHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokensHistorical:::name"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::id"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundleV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundleV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundleV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundleV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundleV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2sHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::user"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::user"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2sHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintV2sHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2sHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2sHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2sHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2sHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPoolsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2sHistorical:::pair"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2sHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2sHistorical:::name"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoryV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoryV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoryV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoryV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoryV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUserV2sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUserV2sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUserV2sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUserV2sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUserV2sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundleV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundleV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundleV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundleV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundleV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3sHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3sHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3sHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3sHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3sHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3sHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3sHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3sHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3sHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3sHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsDayDataCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolsHourDataCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3sHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3sHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3sHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3sHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionsSnapshotsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3sHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3sHistorical:::token_0"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3sHistorical:::token_1"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3sHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3sHistorical:::pool"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTicksDayDataCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDatasHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDatasHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDatasHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDatasHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDatasHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3sHistorical:::symbol"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3sHistorical:::name"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensCurrent:::filter_token_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensDayDataCurrent:::filter_token_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokensHourDataCurrent:::filter_token_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionV3sHistorical:::id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataV3sHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataV3sHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataV3sHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataV3sHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataV3sHistorical:::id"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["cowGetOrdersHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::id"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::id"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::id"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::address"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::name"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::symbol"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::id"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::sell_token"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::buy_token"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::id"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::address"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::id"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::address"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::id"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::id"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::id"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::id"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::id"]=""
operation_parameters_collection_type["curveGetContractVersionsHistorical:::address"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetContractsHistorical:::id"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::id"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::pool"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::id"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::pool"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::id"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetGaugeDepositsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeDepositsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeDepositsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeDepositsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeDepositsHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditysHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditysHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditysHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditysHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditysHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeLiquiditysHistorical:::user"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightsHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightsHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeTypesHistorical:::name"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeWeightVotesHistorical:::user"]=""
operation_parameters_collection_type["curveGetGaugeWeightsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightsHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawsHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::id"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::address"]=""
operation_parameters_collection_type["curveGetGaugesHistorical:::pool"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::id"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::pool"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::id"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::address"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::name"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::symbol"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::pool"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::id"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::name"]=""
operation_parameters_collection_type["curveGetProposalVotesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetProposalVotesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetProposalVotesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetProposalVotesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetProposalVotesHistorical:::id"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::id"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::id"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::id"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::id"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::id"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::address"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::name"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::symbol"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::id"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::id"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::pool"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::id"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::address"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::id"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::pool"]=""
operation_parameters_collection_type["dexGetBatchsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetBatchsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetBatchsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetBatchsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetBatchsHistorical:::id"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::id"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::user"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::id"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::buy_token"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::sell_token"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::id"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::id"]=""
operation_parameters_collection_type["dexGetStatssHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetStatssHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetStatssHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetStatssHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetStatssHistorical:::id"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::id"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::address"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::symbol"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::name"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::id"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::buy_token"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::sell_token"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::id"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::id"]=""
operation_parameters_collection_type["dexGetWithdrawRequestsHistorical:::user"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::id"]=""
operation_parameters_collection_type["dexGetWithdrawsHistorical:::user"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetDayDatasHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetDayDatasHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetDayDatasHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetDayDatasHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetDayDatasHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetFactorysHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetFactorysHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetFactorysHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetFactorysHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetFactorysHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetHourDatasHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetHourDatasHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetHourDatasHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetHourDatasHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetHourDatasHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::user"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotsHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::user"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionsHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetPairDayDatasHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPairDayDatasHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPairDayDatasHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPairDayDatasHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPairDayDatasHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetPairDayDatasHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetPairDayDatasHistorical:::token_0"]=""
operation_parameters_collection_type["sushiswapGetPairDayDatasHistorical:::token_1"]=""
operation_parameters_collection_type["sushiswapGetPairHourDatasHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPairHourDatasHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPairHourDatasHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPairHourDatasHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPairHourDatasHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetPairHourDatasHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::name"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::token_0"]=""
operation_parameters_collection_type["sushiswapGetPairsHistorical:::token_1"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::pair"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDatasHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDatasHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDatasHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDatasHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDatasHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::symbol"]=""
operation_parameters_collection_type["sushiswapGetTokensHistorical:::name"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::id"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetBundleV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetBundleV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetBundleV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetBundleV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBundleV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2sHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::user"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2sHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2sHistorical:::user"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2sHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetMintV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetMintV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetMintV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetMintV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetMintV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetMintV2sHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2sHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2sHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2sHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetPairV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPairV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPairV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetPairV2sHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV2GetPairV2sHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV2GetPoolsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV2GetSwapV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetSwapV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetSwapV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetSwapV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetSwapV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetSwapV2sHistorical:::pair"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2sHistorical:::symbol"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2sHistorical:::name"]=""
operation_parameters_collection_type["uniswapV2GetTransactionV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTransactionV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTransactionV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTransactionV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTransactionV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoryV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoryV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoryV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoryV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoryV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV2GetUserV2sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUserV2sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUserV2sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUserV2sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUserV2sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetBundleV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetBundleV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetBundleV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetBundleV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBundleV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3sHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3sHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3sHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV3GetBurnsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetFactoryV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetFactoryV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetFactoryV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetFactoryV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetFactoryV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetMintV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetMintV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetMintV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetMintV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetMintV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetMintV3sHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetMintV3sHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV3GetMintV3sHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV3GetMintsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3sHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3sHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3sHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3sHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV3GetPoolsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetPoolsDayDataCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetPoolsHourDataCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3sHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3sHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3sHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3sHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV3GetPositionsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetPositionsSnapshotsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3sHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3sHistorical:::token_0"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3sHistorical:::token_1"]=""
operation_parameters_collection_type["uniswapV3GetSwapsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3sHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetTickV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTickV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTickV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTickV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTickV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetTickV3sHistorical:::pool"]=""
operation_parameters_collection_type["uniswapV3GetTicksCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetTicksDayDataCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDatasHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDatasHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDatasHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDatasHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDatasHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3sHistorical:::symbol"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3sHistorical:::name"]=""
operation_parameters_collection_type["uniswapV3GetTokensCurrent:::filter_token_id"]=""
operation_parameters_collection_type["uniswapV3GetTokensDayDataCurrent:::filter_token_id"]=""
operation_parameters_collection_type["uniswapV3GetTokensHourDataCurrent:::filter_token_id"]=""
operation_parameters_collection_type["uniswapV3GetTransactionV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTransactionV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTransactionV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTransactionV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTransactionV3sHistorical:::id"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataV3sHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataV3sHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataV3sHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataV3sHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataV3sHistorical:::id"]=""


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
  ${CYAN}cowGetOrdersHistorical${OFF};Orders (historical) 🔥
  ${CYAN}cowGetSettlementsHistorical${OFF};Settlements (historical) 🔥
  ${CYAN}cowGetTokensHistorical${OFF};Tokens (historical) 🔥
  ${CYAN}cowGetTradesHistorical${OFF};Trades (historical) 🔥
  ${CYAN}cowGetUsersHistorical${OFF};Users (historical) 🔥
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[curve]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}curveGetAccountsHistorical${OFF};Accounts (historical) 🔥
  ${CYAN}curveGetAddLiquidityEventsHistorical${OFF};AddLiquidityEvents (historical) 🔥
  ${CYAN}curveGetAdminFeeChangeLogsHistorical${OFF};AdminFeeChangeLogs (historical) 🔥
  ${CYAN}curveGetAmplificationCoeffChangeLogsHistorical${OFF};AmplificationCoeffChangeLogs (historical) 🔥
  ${CYAN}curveGetCoinsHistorical${OFF};Coins (historical) 🔥
  ${CYAN}curveGetContractVersionsHistorical${OFF};ContractVersions (historical) 🔥
  ${CYAN}curveGetContractsHistorical${OFF};Contracts (historical) 🔥
  ${CYAN}curveGetDailyVolumesHistorical${OFF};DailyVolumes (historical) 🔥
  ${CYAN}curveGetExchangesHistorical${OFF};Exchanges (historical) 🔥
  ${CYAN}curveGetFeeChangeLogsHistorical${OFF};FeeChangeLogs (historical) 🔥
  ${CYAN}curveGetGaugeDepositsHistorical${OFF};GaugeDeposits (historical) 🔥
  ${CYAN}curveGetGaugeLiquiditysHistorical${OFF};GaugeLiquiditys (historical) 🔥
  ${CYAN}curveGetGaugeTotalWeightsHistorical${OFF};GaugeTotalWeights (historical) 🔥
  ${CYAN}curveGetGaugeTypeWeightsHistorical${OFF};GaugeTypeWeights (historical) 🔥
  ${CYAN}curveGetGaugeTypesHistorical${OFF};GaugeTypes (historical) 🔥
  ${CYAN}curveGetGaugeWeightVotesHistorical${OFF};GaugeWeightVotes (historical) 🔥
  ${CYAN}curveGetGaugeWeightsHistorical${OFF};GaugeWeights (historical) 🔥
  ${CYAN}curveGetGaugeWithdrawsHistorical${OFF};GaugeWithdraws (historical) 🔥
  ${CYAN}curveGetGaugesHistorical${OFF};Gauges (historical) 🔥
  ${CYAN}curveGetHourlyVolumesHistorical${OFF};HourlyVolumes (historical) 🔥
  ${CYAN}curveGetLpTokensHistorical${OFF};LpTokens (historical) 🔥
  ${CYAN}curveGetPoolsHistorical${OFF};Pools (historical) 🔥
  ${CYAN}curveGetProposalVotesHistorical${OFF};ProposalVotes (historical) 🔥
  ${CYAN}curveGetProposalsHistorical${OFF};Proposals (historical) 🔥
  ${CYAN}curveGetRemoveLiquidityEventsHistorical${OFF};RemoveLiquidityEvents (historical) 🔥
  ${CYAN}curveGetRemoveLiquidityOneEventsHistorical${OFF};RemoveLiquidityOneEvents (historical) 🔥
  ${CYAN}curveGetSystemStatesHistorical${OFF};SystemStates (historical) 🔥
  ${CYAN}curveGetTokensHistorical${OFF};Tokens (historical) 🔥
  ${CYAN}curveGetTransferOwnershipEventsHistorical${OFF};TransferOwnershipEvents (historical) 🔥
  ${CYAN}curveGetUnderlyingCoinsHistorical${OFF};UnderlyingCoins (historical) 🔥
  ${CYAN}curveGetVotingAppsHistorical${OFF};VotingApps (historical) 🔥
  ${CYAN}curveGetWeeklyVolumesHistorical${OFF};WeeklyVolumes (historical) 🔥
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[dex]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}dexGetBatchsHistorical${OFF};Batchs (historical) 🔥
  ${CYAN}dexGetDepositsHistorical${OFF};Deposits (historical) 🔥
  ${CYAN}dexGetOrdersHistorical${OFF};Orders (historical) 🔥
  ${CYAN}dexGetPricesHistorical${OFF};Prices (historical) 🔥
  ${CYAN}dexGetSolutionsHistorical${OFF};Solutions (historical) 🔥
  ${CYAN}dexGetStatssHistorical${OFF};Statss (historical) 🔥
  ${CYAN}dexGetTokensHistorical${OFF};Tokens (historical) 🔥
  ${CYAN}dexGetTradesHistorical${OFF};Trades (historical) 🔥
  ${CYAN}dexGetUsersHistorical${OFF};Users (historical) 🔥
  ${CYAN}dexGetWithdrawRequestsHistorical${OFF};WithdrawRequests (historical) 🔥
  ${CYAN}dexGetWithdrawsHistorical${OFF};Withdraws (historical) 🔥
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sushiswap]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}curveGetExchangesCurrent${OFF};Exchanges (current) 🔥
  ${CYAN}dexGetTradesCurrent${OFF};Trades (current) 🔥
  ${CYAN}sushiswapGetBundlesHistorical${OFF};Bundles (historical) 🔥
  ${CYAN}sushiswapGetBurnsHistorical${OFF};Burns (historical) 🔥
  ${CYAN}sushiswapGetDayDatasHistorical${OFF};DayDatas (historical) 🔥
  ${CYAN}sushiswapGetFactorysHistorical${OFF};Factorys (historical) 🔥
  ${CYAN}sushiswapGetHourDatasHistorical${OFF};HourDatas (historical) 🔥
  ${CYAN}sushiswapGetLiquidityPositionSnapshotsHistorical${OFF};LiquidityPositionSnapshots (historical) 🔥
  ${CYAN}sushiswapGetLiquidityPositionsHistorical${OFF};LiquidityPositions (historical) 🔥
  ${CYAN}sushiswapGetMintsHistorical${OFF};Mints (historical) 🔥
  ${CYAN}sushiswapGetPairDayDatasHistorical${OFF};PairDayDatas (historical) 🔥
  ${CYAN}sushiswapGetPairHourDatasHistorical${OFF};PairHourDatas (historical) 🔥
  ${CYAN}sushiswapGetPairsHistorical${OFF};Pairs (historical) 🔥
  ${CYAN}sushiswapGetPoolsCurrent${OFF};Pools (current) 🔥
  ${CYAN}sushiswapGetSwapsCurrent${OFF};Swaps (current) 🔥
  ${CYAN}sushiswapGetSwapsHistorical${OFF};Swaps (historical) 🔥
  ${CYAN}sushiswapGetTokenDayDatasHistorical${OFF};TokenDayDatas (historical) 🔥
  ${CYAN}sushiswapGetTokensCurrent${OFF};Tokens (current) 🔥
  ${CYAN}sushiswapGetTokensHistorical${OFF};Tokens (historical) 🔥
  ${CYAN}sushiswapGetTransactionsHistorical${OFF};Transactions (historical) 🔥
  ${CYAN}sushiswapGetUsersHistorical${OFF};Users (historical) 🔥
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV2]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}uniswapV2GetBundleV2sHistorical${OFF};BundleV2s (historical) 🔥
  ${CYAN}uniswapV2GetBurnV2sHistorical${OFF};BurnV2s (historical) 🔥
  ${CYAN}uniswapV2GetLiquidityPositionSnapshotV2sHistorical${OFF};LiquidityPositionSnapshotV2s (historical) 🔥
  ${CYAN}uniswapV2GetLiquidityPositionV2sHistorical${OFF};LiquidityPositionV2s (historical) 🔥
  ${CYAN}uniswapV2GetMintV2sHistorical${OFF};MintV2s (historical) 🔥
  ${CYAN}uniswapV2GetPairDayDataV2sHistorical${OFF};PairDayDataV2s (historical) 🔥
  ${CYAN}uniswapV2GetPairHourDataV2sHistorical${OFF};PairHourDataV2s (historical) 🔥
  ${CYAN}uniswapV2GetPairV2sHistorical${OFF};PairV2s (historical) 🔥
  ${CYAN}uniswapV2GetPoolsCurrent${OFF};Pools (current) 🔥
  ${CYAN}uniswapV2GetSwapV2sHistorical${OFF};SwapV2s (historical) 🔥
  ${CYAN}uniswapV2GetSwapsCurrent${OFF};Swaps (current) 🔥
  ${CYAN}uniswapV2GetTokenDayDataV2sHistorical${OFF};TokenDayDataV2s (historical) 🔥
  ${CYAN}uniswapV2GetTokenV2sHistorical${OFF};TokenV2s (historical) 🔥
  ${CYAN}uniswapV2GetTokensCurrent${OFF};Tokens (current) 🔥
  ${CYAN}uniswapV2GetTransactionV2sHistorical${OFF};TransactionV2s (historical) 🔥
  ${CYAN}uniswapV2GetUniswapDayDataV2sHistorical${OFF};UniswapDayDataV2s (historical) 🔥
  ${CYAN}uniswapV2GetUniswapFactoryV2sHistorical${OFF};UniswapFactoryV2s (historical) 🔥
  ${CYAN}uniswapV2GetUserV2sHistorical${OFF};UserV2s (historical) 🔥
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV3]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}uniswapV3GetBundleV3sHistorical${OFF};BundleV3s (historical) 🔥
  ${CYAN}uniswapV3GetBundlesCurrent${OFF};Bundles (current)
  ${CYAN}uniswapV3GetBurnV3sHistorical${OFF};BurnV3s (historical) 🔥
  ${CYAN}uniswapV3GetBurnsCurrent${OFF};Burns (current)
  ${CYAN}uniswapV3GetDayDataCurrent${OFF};DayData (current)
  ${CYAN}uniswapV3GetFactoryCurrent${OFF};Factory (current)
  ${CYAN}uniswapV3GetFactoryV3sHistorical${OFF};FactoryV3s (historical) 🔥
  ${CYAN}uniswapV3GetMintV3sHistorical${OFF};MintV3s (historical) 🔥
  ${CYAN}uniswapV3GetMintsCurrent${OFF};Mints (current)
  ${CYAN}uniswapV3GetPoolDayDataV3sHistorical${OFF};PoolDayDataV3s (historical) 🔥
  ${CYAN}uniswapV3GetPoolHourDataV3sHistorical${OFF};PoolHourDataV3s (historical) 🔥
  ${CYAN}uniswapV3GetPoolV3sHistorical${OFF};PoolV3s (historical) 🔥
  ${CYAN}uniswapV3GetPoolsCurrent${OFF};Pools (current) 🔥
  ${CYAN}uniswapV3GetPoolsDayDataCurrent${OFF};PoolsDayData (current)
  ${CYAN}uniswapV3GetPoolsHourDataCurrent${OFF};PoolsHourData (current)
  ${CYAN}uniswapV3GetPositionSnapshotV3sHistorical${OFF};PositionSnapshotV3s (historical) 🔥
  ${CYAN}uniswapV3GetPositionV3sHistorical${OFF};PositionV3s (historical) 🔥
  ${CYAN}uniswapV3GetPositionsCurrent${OFF};Positions (current)
  ${CYAN}uniswapV3GetPositionsSnapshotsCurrent${OFF};PositionsSnapshots (current)
  ${CYAN}uniswapV3GetSwapV3sHistorical${OFF};SwapV3s (historical) 🔥
  ${CYAN}uniswapV3GetSwapsCurrent${OFF};Swaps (current) 🔥
  ${CYAN}uniswapV3GetTickDayDataV3sHistorical${OFF};TickDayDataV3s (historical) 🔥
  ${CYAN}uniswapV3GetTickV3sHistorical${OFF};TickV3s (historical) 🔥
  ${CYAN}uniswapV3GetTicksCurrent${OFF};Ticks (current)
  ${CYAN}uniswapV3GetTicksDayDataCurrent${OFF};TicksDayData (current)
  ${CYAN}uniswapV3GetTokenHourDataV3sHistorical${OFF};TokenHourDataV3s (historical) 🔥
  ${CYAN}uniswapV3GetTokenV3DayDatasHistorical${OFF};TokenV3DayDatas (historical) 🔥
  ${CYAN}uniswapV3GetTokenV3sHistorical${OFF};TokenV3s (historical) 🔥
  ${CYAN}uniswapV3GetTokensCurrent${OFF};Tokens (current) 🔥
  ${CYAN}uniswapV3GetTokensDayDataCurrent${OFF};TokensDayData (current)
  ${CYAN}uniswapV3GetTokensHourDataCurrent${OFF};TokensHourData (current)
  ${CYAN}uniswapV3GetTransactionV3sHistorical${OFF};TransactionV3s (historical) 🔥
  ${CYAN}uniswapV3GetUniswapDayDataV3sHistorical${OFF};UniswapDayDataV3s (historical) 🔥
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
    echo -e "${BOLD}${WHITE}cowGetOrdersHistorical - Orders (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets orders." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User's address.${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}cowGetSettlementsHistorical - Settlements (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets settlements." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash.${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}cowGetTokensHistorical - Tokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token's address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token's address.${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token name fetched by ERC20 contract call.${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token symbol fetched by contract call.${YELLOW} Specify as: symbol=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}cowGetTradesHistorical - Trades (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sell_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: sell_token=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}buy_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: buy_token=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}cowGetUsersHistorical - Users (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User's address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User's address.${YELLOW} Specify as: address=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetAccountsHistorical - Accounts (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets accounts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetAddLiquidityEventsHistorical - AddLiquidityEvents (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets addliquidityevents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetAdminFeeChangeLogsHistorical - AdminFeeChangeLogs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets adminfeechangelogs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetAmplificationCoeffChangeLogsHistorical - AmplificationCoeffChangeLogs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets amplificationcoeffchangelogs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetCoinsHistorical - Coins (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetContractVersionsHistorical operation
#
##############################################################################
print_curveGetContractVersionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetContractVersionsHistorical - ContractVersions (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets contractversions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetContractsHistorical - Contracts (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets contracts." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetDailyVolumesHistorical - DailyVolumes (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets dailyvolumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetExchangesHistorical - Exchanges (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets exchanges." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetFeeChangeLogsHistorical - FeeChangeLogs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets feechangelogs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeDepositsHistorical operation
#
##############################################################################
print_curveGetGaugeDepositsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeDepositsHistorical - GaugeDeposits (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugedeposits." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeLiquiditysHistorical operation
#
##############################################################################
print_curveGetGaugeLiquiditysHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeLiquiditysHistorical - GaugeLiquiditys (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeliquiditys." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeTotalWeightsHistorical operation
#
##############################################################################
print_curveGetGaugeTotalWeightsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeTotalWeightsHistorical - GaugeTotalWeights (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugetotalweights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeTypeWeightsHistorical operation
#
##############################################################################
print_curveGetGaugeTypeWeightsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeTypeWeightsHistorical - GaugeTypeWeights (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugetypeweights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeTypesHistorical operation
#
##############################################################################
print_curveGetGaugeTypesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeTypesHistorical - GaugeTypes (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugetypes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeWeightVotesHistorical operation
#
##############################################################################
print_curveGetGaugeWeightVotesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeWeightVotesHistorical - GaugeWeightVotes (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeweightvotes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeWeightsHistorical operation
#
##############################################################################
print_curveGetGaugeWeightsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeWeightsHistorical - GaugeWeights (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugeweights." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetGaugeWithdrawsHistorical operation
#
##############################################################################
print_curveGetGaugeWithdrawsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeWithdrawsHistorical - GaugeWithdraws (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gaugewithdraws." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetGaugesHistorical - Gauges (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets gauges." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetHourlyVolumesHistorical - HourlyVolumes (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets hourlyvolumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetLpTokensHistorical - LpTokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets lptokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetPoolsHistorical - Pools (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pools." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool's human-readable name.${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for curveGetProposalVotesHistorical operation
#
##############################################################################
print_curveGetProposalVotesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetProposalVotesHistorical - ProposalVotes (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets proposalvotes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetProposalsHistorical - Proposals (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets proposals." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetRemoveLiquidityEventsHistorical - RemoveLiquidityEvents (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets removeliquidityevents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetRemoveLiquidityOneEventsHistorical - RemoveLiquidityOneEvents (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets removeliquidityoneevents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetSystemStatesHistorical - SystemStates (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets systemstates." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Singleton ID, equals to 'current'.${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetTokensHistorical - Tokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: symbol=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetTransferOwnershipEventsHistorical - TransferOwnershipEvents (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transferownershipevents." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetUnderlyingCoinsHistorical - UnderlyingCoins (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets underlyingcoins." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetVotingAppsHistorical - VotingApps (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets votingapps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - App address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetWeeklyVolumesHistorical - WeeklyVolumes (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets weeklyvolumes." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetBatchsHistorical operation
#
##############################################################################
print_dexGetBatchsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetBatchsHistorical - Batchs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets batchs." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier.${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}dexGetDepositsHistorical - Deposits (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}dexGetOrdersHistorical - Orders (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}buy_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: buy_token=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sell_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: sell_token=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}dexGetPricesHistorical - Prices (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}dexGetSolutionsHistorical - Solutions (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets solutions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetStatssHistorical operation
#
##############################################################################
print_dexGetStatssHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetStatssHistorical - Statss (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets statss." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}dexGetTokensHistorical - Tokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}address${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: address=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: name=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}dexGetTradesHistorical - Trades (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets trades." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}buy_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: buy_token=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}sell_token${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: sell_token=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}dexGetUsersHistorical - Users (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dexGetWithdrawRequestsHistorical operation
#
##############################################################################
print_dexGetWithdrawRequestsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetWithdrawRequestsHistorical - WithdrawRequests (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets withdrawrequests." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}dexGetWithdrawsHistorical - Withdraws (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}curveGetExchangesCurrent - Exchanges (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}dexGetTradesCurrent - Trades (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}sushiswapGetBundlesHistorical - Bundles (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundles." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Hardcoded to '1'.${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}sushiswapGetBurnsHistorical - Burns (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetDayDatasHistorical operation
#
##############################################################################
print_sushiswapGetDayDatasHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetDayDatasHistorical - DayDatas (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets daydatas." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp for start of day / 86400 giving a unique day index.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetFactorysHistorical operation
#
##############################################################################
print_sushiswapGetFactorysHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetFactorysHistorical - Factorys (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets factorys." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Factory address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetHourDatasHistorical operation
#
##############################################################################
print_sushiswapGetHourDatasHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetHourDatasHistorical - HourDatas (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets hourdatas." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Start of hour timestamp.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetLiquidityPositionSnapshotsHistorical operation
#
##############################################################################
print_sushiswapGetLiquidityPositionSnapshotsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetLiquidityPositionSnapshotsHistorical - LiquidityPositionSnapshots (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquiditypositionsnapshots." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetLiquidityPositionsHistorical operation
#
##############################################################################
print_sushiswapGetLiquidityPositionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetLiquidityPositionsHistorical - LiquidityPositions (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquiditypositions." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pair=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}sushiswapGetMintsHistorical - Mints (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetPairDayDatasHistorical operation
#
##############################################################################
print_sushiswapGetPairDayDatasHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPairDayDatasHistorical - PairDayDatas (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairdaydatas." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetPairHourDatasHistorical operation
#
##############################################################################
print_sushiswapGetPairHourDatasHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPairHourDatasHistorical - PairHourDatas (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairhourdatas." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetPairsHistorical operation
#
##############################################################################
print_sushiswapGetPairsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPairsHistorical - Pairs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairs." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: name=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: token_1=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}sushiswapGetPoolsCurrent - Pools (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetSwapsCurrent operation
#
##############################################################################
print_sushiswapGetSwapsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetSwapsCurrent - Swaps (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}sushiswapGetSwapsHistorical - Swaps (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swaps." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash plus index in Transaction swap array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for sushiswapGetTokenDayDatasHistorical operation
#
##############################################################################
print_sushiswapGetTokenDayDatasHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTokenDayDatasHistorical - TokenDayDatas (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokendaydatas." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, day start timestamp in unix / 86400.${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}sushiswapGetTokensCurrent - Tokens (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetTokensHistorical operation
#
##############################################################################
print_sushiswapGetTokensHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTokensHistorical - Tokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokens." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token symbol.${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token name.${YELLOW} Specify as: name=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}sushiswapGetTransactionsHistorical - Transactions (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactions." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Ethereum transaction hash.${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}sushiswapGetUsersHistorical - Users (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets users." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetBundleV2sHistorical operation
#
##############################################################################
print_uniswapV2GetBundleV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetBundleV2sHistorical - BundleV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundlev2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Constant 1.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetBurnV2sHistorical operation
#
##############################################################################
print_uniswapV2GetBurnV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetBurnV2sHistorical - BurnV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burnv2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash plus index in the transaction burn array${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetLiquidityPositionSnapshotV2sHistorical operation
#
##############################################################################
print_uniswapV2GetLiquidityPositionSnapshotV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetLiquidityPositionSnapshotV2sHistorical - LiquidityPositionSnapshotV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquiditypositionsnapshotv2s." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetLiquidityPositionV2sHistorical operation
#
##############################################################################
print_uniswapV2GetLiquidityPositionV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetLiquidityPositionV2sHistorical - LiquidityPositionV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets liquiditypositionv2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User address and pair address concatenated with a dash.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}user${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to user.${YELLOW} Specify as: user=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to the pair liquidity is being provided on.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetMintV2sHistorical operation
#
##############################################################################
print_uniswapV2GetMintV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetMintV2sHistorical - MintV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mintv2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash plus index in the transaction mint array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetPairDayDataV2sHistorical operation
#
##############################################################################
print_uniswapV2GetPairDayDataV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPairDayDataV2sHistorical - PairDayDataV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairdaydatav2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1.${YELLOW} Specify as: token_1=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetPairHourDataV2sHistorical operation
#
##############################################################################
print_uniswapV2GetPairHourDataV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPairHourDataV2sHistorical - PairHourDataV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairhourdatav2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Address for pair contract.${YELLOW} Specify as: pair=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetPairV2sHistorical operation
#
##############################################################################
print_uniswapV2GetPairV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPairV2sHistorical - PairV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pairv2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pair contract address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pair contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pair contract.${YELLOW} Specify as: token_1=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV2GetPoolsCurrent - Pools (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetSwapV2sHistorical operation
#
##############################################################################
print_uniswapV2GetSwapV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetSwapV2sHistorical - SwapV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swapv2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash plus index in Transaction swap array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pair${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to pair.${YELLOW} Specify as: pair=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV2GetSwapsCurrent - Swaps (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetTokenDayDataV2sHistorical operation
#
##############################################################################
print_uniswapV2GetTokenDayDataV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTokenDayDataV2sHistorical - TokenDayDataV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokendaydatav2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address and day id (day start timestamp in unix / 86400) concatenated with a dash.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetTokenV2sHistorical operation
#
##############################################################################
print_uniswapV2GetTokenV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTokenV2sHistorical - TokenV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenv2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token symbol.${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token name.${YELLOW} Specify as: name=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV2GetTokensCurrent - Tokens (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetTransactionV2sHistorical operation
#
##############################################################################
print_uniswapV2GetTransactionV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTransactionV2sHistorical - TransactionV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactionv2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Ethereum transaction hash.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetUniswapDayDataV2sHistorical operation
#
##############################################################################
print_uniswapV2GetUniswapDayDataV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUniswapDayDataV2sHistorical - UniswapDayDataV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapdaydatav2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Unix timestamp for start of day / 86400 giving a unique day index.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetUniswapFactoryV2sHistorical operation
#
##############################################################################
print_uniswapV2GetUniswapFactoryV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUniswapFactoryV2sHistorical - UniswapFactoryV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapfactoryv2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Factory address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV2GetUserV2sHistorical operation
#
##############################################################################
print_uniswapV2GetUserV2sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUserV2sHistorical - UserV2s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets userv2s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - User address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetBundleV3sHistorical operation
#
##############################################################################
print_uniswapV3GetBundleV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBundleV3sHistorical - BundleV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets bundlev3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV3GetBundlesCurrent - Bundles (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetBurnV3sHistorical operation
#
##############################################################################
print_uniswapV3GetBurnV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBurnV3sHistorical - BurnV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets burnv3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash + '#' + index in mints Transaction array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool position is within.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pool contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pool contract.${YELLOW} Specify as: token_1=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV3GetBurnsCurrent - Burns (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetDayDataCurrent operation
#
##############################################################################
print_uniswapV3GetDayDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetDayDataCurrent - DayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetFactoryCurrent operation
#
##############################################################################
print_uniswapV3GetFactoryCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetFactoryCurrent - Factory (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetFactoryV3sHistorical operation
#
##############################################################################
print_uniswapV3GetFactoryV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetFactoryV3sHistorical - FactoryV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets factoryv3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Factory address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetMintV3sHistorical operation
#
##############################################################################
print_uniswapV3GetMintV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetMintV3sHistorical - MintV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets mintv3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash + '#' + index in mints Transaction array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool address.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pool contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pool contract.${YELLOW} Specify as: token_1=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV3GetMintsCurrent - Mints (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetPoolDayDataV3sHistorical operation
#
##############################################################################
print_uniswapV3GetPoolDayDataV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolDayDataV3sHistorical - PoolDayDataV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets pooldaydatav3s." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolHourDataV3sHistorical operation
#
##############################################################################
print_uniswapV3GetPoolHourDataV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolHourDataV3sHistorical - PoolHourDataV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets poolhourdatav3s." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPoolV3sHistorical operation
#
##############################################################################
print_uniswapV3GetPoolV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolV3sHistorical - PoolV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets poolv3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pool contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pool contract.${YELLOW} Specify as: token_1=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsCurrent - Pools (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsDayDataCurrent - PoolsDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetPoolsHourDataCurrent operation
#
##############################################################################
print_uniswapV3GetPoolsHourDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsHourDataCurrent - PoolsHourData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetPositionSnapshotV3sHistorical operation
#
##############################################################################
print_uniswapV3GetPositionSnapshotV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionSnapshotV3sHistorical - PositionSnapshotV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets positionsnapshotv3s." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetPositionV3sHistorical operation
#
##############################################################################
print_uniswapV3GetPositionV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionV3sHistorical - PositionV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets positionv3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - NFT token identifier.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool position is within.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pair contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pair contract.${YELLOW} Specify as: token_1=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionsCurrent - Positions (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetPositionsSnapshotsCurrent operation
#
##############################################################################
print_uniswapV3GetPositionsSnapshotsCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionsSnapshotsCurrent - PositionsSnapshots (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetSwapV3sHistorical operation
#
##############################################################################
print_uniswapV3GetSwapV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetSwapV3sHistorical - SwapV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets swapv3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Identifier, format: transaction hash + \"#\" + index in swaps Transaction array.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Pool swap occured within.${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_0${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token0 as stored in pair contract.${YELLOW} Specify as: token_0=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}token_1${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Reference to token1 as stored in pair contract.${YELLOW} Specify as: token_1=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV3GetSwapsCurrent - Swaps (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetTickDayDataV3sHistorical operation
#
##############################################################################
print_uniswapV3GetTickDayDataV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTickDayDataV3sHistorical - TickDayDataV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tickdaydatav3s." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTickV3sHistorical operation
#
##############################################################################
print_uniswapV3GetTickV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTickV3sHistorical - TickV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tickv3s." | paste -sd' ' | fold -sw 80
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
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}pool${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: pool=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV3GetTicksCurrent - Ticks (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV3GetTicksDayDataCurrent - TicksDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetTokenHourDataV3sHistorical operation
#
##############################################################################
print_uniswapV3GetTokenHourDataV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokenHourDataV3sHistorical - TokenHourDataV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenhourdatav3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address concatendated with date.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokenV3DayDatasHistorical operation
#
##############################################################################
print_uniswapV3GetTokenV3DayDatasHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokenV3DayDatasHistorical - TokenV3DayDatas (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenv3daydatas." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address concatendated with date.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetTokenV3sHistorical operation
#
##############################################################################
print_uniswapV3GetTokenV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokenV3sHistorical - TokenV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets tokenv3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token address.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}symbol${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token symbol.${YELLOW} Specify as: symbol=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}name${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Token name.${YELLOW} Specify as: name=value${OFF}" \
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
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensCurrent - Tokens (current) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensDayDataCurrent - TokensDayData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetTokensHourDataCurrent operation
#
##############################################################################
print_uniswapV3GetTokensHourDataCurrent_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensHourDataCurrent - TokensHourData (current)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetTransactionV3sHistorical operation
#
##############################################################################
print_uniswapV3GetTransactionV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTransactionV3sHistorical - TransactionV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets transactionv3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Transaction hash.${YELLOW} Specify as: id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for uniswapV3GetUniswapDayDataV3sHistorical operation
#
##############################################################################
print_uniswapV3GetUniswapDayDataV3sHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetUniswapDayDataV3sHistorical - UniswapDayDataV3s (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets uniswapdaydatav3s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}startBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The start block. If endblock is not given, only those entities will be included that were exactly created in startBlock.${YELLOW} Specify as: startBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endBlock${OFF} ${BLUE}[integer]${OFF} ${CYAN}(default: null)${OFF} - The end block. Useful to filter data in range of blocks (FROM startBlock TO endBlock).${YELLOW} Specify as: endBlock=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}startDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The start date of timeframe. If endDate is not given, entities created FROM startDate TO startDate plus 24 hours will be included.${YELLOW} Specify as: startDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}endDate${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - The end date of timeframe.${YELLOW} Specify as: endDate=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Timestamp rounded to current day by dividing by 86400.${YELLOW} Specify as: id=value${OFF}" \
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id address name symbol)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id sell_token buy_token)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id address)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id address)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/addliquidityevents/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/adminfeechangelogs/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/amplificationcoeffchangelogs/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
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
# Call curveGetContractVersionsHistorical operation
#
##############################################################################
call_curveGetContractVersionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id address)
    local path

    if ! path=$(build_request_path "/dapps/curve/contractversions/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
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
# Call curveGetDailyVolumesHistorical operation
#
##############################################################################
call_curveGetDailyVolumesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/dailyvolumes/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/feechangelogs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeDepositsHistorical operation
#
##############################################################################
call_curveGetGaugeDepositsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugedeposits/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeLiquiditysHistorical operation
#
##############################################################################
call_curveGetGaugeLiquiditysHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeliquiditys/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeTotalWeightsHistorical operation
#
##############################################################################
call_curveGetGaugeTotalWeightsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugetotalweights/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeTypeWeightsHistorical operation
#
##############################################################################
call_curveGetGaugeTypeWeightsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugetypeweights/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeTypesHistorical operation
#
##############################################################################
call_curveGetGaugeTypesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id name)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugetypes/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeWeightVotesHistorical operation
#
##############################################################################
call_curveGetGaugeWeightVotesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeweightvotes/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeWeightsHistorical operation
#
##############################################################################
call_curveGetGaugeWeightsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeweights/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeWithdrawsHistorical operation
#
##############################################################################
call_curveGetGaugeWithdrawsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugewithdraws/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id address pool)
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
# Call curveGetHourlyVolumesHistorical operation
#
##############################################################################
call_curveGetHourlyVolumesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/hourlyvolumes/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id address name symbol pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/lptokens/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id name)
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
# Call curveGetProposalVotesHistorical operation
#
##############################################################################
call_curveGetProposalVotesHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/proposalvotes/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
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
# Call curveGetRemoveLiquidityEventsHistorical operation
#
##############################################################################
call_curveGetRemoveLiquidityEventsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/removeliquidityevents/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/removeliquidityoneevents/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/curve/systemstates/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id address name symbol)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/transferownershipevents/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/underlyingcoins/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id address)
    local path

    if ! path=$(build_request_path "/dapps/curve/votingapps/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/curve/weeklyvolumes/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetBatchsHistorical operation
#
##############################################################################
call_dexGetBatchsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/dex/batchs/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id user)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id buy_token sell_token)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
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
# Call dexGetStatssHistorical operation
#
##############################################################################
call_dexGetStatssHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/dex/statss/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id address symbol name)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id buy_token sell_token)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
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
# Call dexGetWithdrawRequestsHistorical operation
#
##############################################################################
call_dexGetWithdrawRequestsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user)
    local path

    if ! path=$(build_request_path "/dapps/dex/withdrawrequests/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id user)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
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
# Call sushiswapGetDayDatasHistorical operation
#
##############################################################################
call_sushiswapGetDayDatasHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/daydatas/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetFactorysHistorical operation
#
##############################################################################
call_sushiswapGetFactorysHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/factorys/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetHourDatasHistorical operation
#
##############################################################################
call_sushiswapGetHourDatasHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/hourdatas/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetLiquidityPositionSnapshotsHistorical operation
#
##############################################################################
call_sushiswapGetLiquidityPositionSnapshotsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user pair)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/liquiditypositionsnapshots/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetLiquidityPositionsHistorical operation
#
##############################################################################
call_sushiswapGetLiquidityPositionsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user pair)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/liquiditypositions/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
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
# Call sushiswapGetPairDayDatasHistorical operation
#
##############################################################################
call_sushiswapGetPairDayDatasHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pairdaydatas/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetPairHourDatasHistorical operation
#
##############################################################################
call_sushiswapGetPairHourDatasHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pairhourdatas/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetPairsHistorical operation
#
##############################################################################
call_sushiswapGetPairsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id name token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/pairs/historical" path_parameter_names query_parameter_names); then
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
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
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
# Call sushiswapGetTokenDayDatasHistorical operation
#
##############################################################################
call_sushiswapGetTokenDayDatasHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/tokendaydatas/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetTokensHistorical operation
#
##############################################################################
call_sushiswapGetTokensHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id symbol name)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
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
    local query_parameter_names=(startBlock endBlock startDate endDate id)
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
# Call uniswapV2GetBundleV2sHistorical operation
#
##############################################################################
call_uniswapV2GetBundleV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/bundlev2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetBurnV2sHistorical operation
#
##############################################################################
call_uniswapV2GetBurnV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/burnv2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetLiquidityPositionSnapshotV2sHistorical operation
#
##############################################################################
call_uniswapV2GetLiquidityPositionSnapshotV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/liquiditypositionsnapshotv2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetLiquidityPositionV2sHistorical operation
#
##############################################################################
call_uniswapV2GetLiquidityPositionV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id user pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/liquiditypositionv2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetMintV2sHistorical operation
#
##############################################################################
call_uniswapV2GetMintV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/mintv2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetPairDayDataV2sHistorical operation
#
##############################################################################
call_uniswapV2GetPairDayDataV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pairdaydatav2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetPairHourDataV2sHistorical operation
#
##############################################################################
call_uniswapV2GetPairHourDataV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pairhourdatav2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetPairV2sHistorical operation
#
##############################################################################
call_uniswapV2GetPairV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/pairv2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetSwapV2sHistorical operation
#
##############################################################################
call_uniswapV2GetSwapV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pair)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/swapv2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetTokenDayDataV2sHistorical operation
#
##############################################################################
call_uniswapV2GetTokenDayDataV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/tokendaydatav2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetTokenV2sHistorical operation
#
##############################################################################
call_uniswapV2GetTokenV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id symbol name)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/tokenv2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetTransactionV2sHistorical operation
#
##############################################################################
call_uniswapV2GetTransactionV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/transactionv2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetUniswapDayDataV2sHistorical operation
#
##############################################################################
call_uniswapV2GetUniswapDayDataV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/uniswapdaydatav2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetUniswapFactoryV2sHistorical operation
#
##############################################################################
call_uniswapV2GetUniswapFactoryV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/uniswapfactoryv2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetUserV2sHistorical operation
#
##############################################################################
call_uniswapV2GetUserV2sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/userv2s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetBundleV3sHistorical operation
#
##############################################################################
call_uniswapV3GetBundleV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/bundlev3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetBurnV3sHistorical operation
#
##############################################################################
call_uniswapV3GetBurnV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/burnv3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetFactoryV3sHistorical operation
#
##############################################################################
call_uniswapV3GetFactoryV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/factoryv3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetMintV3sHistorical operation
#
##############################################################################
call_uniswapV3GetMintV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/mintv3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPoolDayDataV3sHistorical operation
#
##############################################################################
call_uniswapV3GetPoolDayDataV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/pooldaydatav3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPoolHourDataV3sHistorical operation
#
##############################################################################
call_uniswapV3GetPoolHourDataV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolhourdatav3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPoolV3sHistorical operation
#
##############################################################################
call_uniswapV3GetPoolV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolv3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPositionSnapshotV3sHistorical operation
#
##############################################################################
call_uniswapV3GetPositionSnapshotV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positionsnapshotv3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPositionV3sHistorical operation
#
##############################################################################
call_uniswapV3GetPositionV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positionv3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetSwapV3sHistorical operation
#
##############################################################################
call_uniswapV3GetSwapV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool token_0 token_1)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/swapv3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTickDayDataV3sHistorical operation
#
##############################################################################
call_uniswapV3GetTickDayDataV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tickdaydatav3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTickV3sHistorical operation
#
##############################################################################
call_uniswapV3GetTickV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id pool)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tickv3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTokenHourDataV3sHistorical operation
#
##############################################################################
call_uniswapV3GetTokenHourDataV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokenhourdatav3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTokenV3DayDatasHistorical operation
#
##############################################################################
call_uniswapV3GetTokenV3DayDatasHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokenv3daydatas/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTokenV3sHistorical operation
#
##############################################################################
call_uniswapV3GetTokenV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id symbol name)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokenv3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTransactionV3sHistorical operation
#
##############################################################################
call_uniswapV3GetTransactionV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/transactionv3s/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetUniswapDayDataV3sHistorical operation
#
##############################################################################
call_uniswapV3GetUniswapDayDataV3sHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate id)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/uniswapdaydatav3s/historical" path_parameter_names query_parameter_names); then
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
    curveGetContractVersionsHistorical)
    operation="curveGetContractVersionsHistorical"
    ;;
    curveGetContractsHistorical)
    operation="curveGetContractsHistorical"
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
    curveGetGaugeDepositsHistorical)
    operation="curveGetGaugeDepositsHistorical"
    ;;
    curveGetGaugeLiquiditysHistorical)
    operation="curveGetGaugeLiquiditysHistorical"
    ;;
    curveGetGaugeTotalWeightsHistorical)
    operation="curveGetGaugeTotalWeightsHistorical"
    ;;
    curveGetGaugeTypeWeightsHistorical)
    operation="curveGetGaugeTypeWeightsHistorical"
    ;;
    curveGetGaugeTypesHistorical)
    operation="curveGetGaugeTypesHistorical"
    ;;
    curveGetGaugeWeightVotesHistorical)
    operation="curveGetGaugeWeightVotesHistorical"
    ;;
    curveGetGaugeWeightsHistorical)
    operation="curveGetGaugeWeightsHistorical"
    ;;
    curveGetGaugeWithdrawsHistorical)
    operation="curveGetGaugeWithdrawsHistorical"
    ;;
    curveGetGaugesHistorical)
    operation="curveGetGaugesHistorical"
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
    curveGetProposalVotesHistorical)
    operation="curveGetProposalVotesHistorical"
    ;;
    curveGetProposalsHistorical)
    operation="curveGetProposalsHistorical"
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
    dexGetBatchsHistorical)
    operation="dexGetBatchsHistorical"
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
    dexGetStatssHistorical)
    operation="dexGetStatssHistorical"
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
    dexGetWithdrawRequestsHistorical)
    operation="dexGetWithdrawRequestsHistorical"
    ;;
    dexGetWithdrawsHistorical)
    operation="dexGetWithdrawsHistorical"
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
    sushiswapGetDayDatasHistorical)
    operation="sushiswapGetDayDatasHistorical"
    ;;
    sushiswapGetFactorysHistorical)
    operation="sushiswapGetFactorysHistorical"
    ;;
    sushiswapGetHourDatasHistorical)
    operation="sushiswapGetHourDatasHistorical"
    ;;
    sushiswapGetLiquidityPositionSnapshotsHistorical)
    operation="sushiswapGetLiquidityPositionSnapshotsHistorical"
    ;;
    sushiswapGetLiquidityPositionsHistorical)
    operation="sushiswapGetLiquidityPositionsHistorical"
    ;;
    sushiswapGetMintsHistorical)
    operation="sushiswapGetMintsHistorical"
    ;;
    sushiswapGetPairDayDatasHistorical)
    operation="sushiswapGetPairDayDatasHistorical"
    ;;
    sushiswapGetPairHourDatasHistorical)
    operation="sushiswapGetPairHourDatasHistorical"
    ;;
    sushiswapGetPairsHistorical)
    operation="sushiswapGetPairsHistorical"
    ;;
    sushiswapGetPoolsCurrent)
    operation="sushiswapGetPoolsCurrent"
    ;;
    sushiswapGetSwapsCurrent)
    operation="sushiswapGetSwapsCurrent"
    ;;
    sushiswapGetSwapsHistorical)
    operation="sushiswapGetSwapsHistorical"
    ;;
    sushiswapGetTokenDayDatasHistorical)
    operation="sushiswapGetTokenDayDatasHistorical"
    ;;
    sushiswapGetTokensCurrent)
    operation="sushiswapGetTokensCurrent"
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
    uniswapV2GetBundleV2sHistorical)
    operation="uniswapV2GetBundleV2sHistorical"
    ;;
    uniswapV2GetBurnV2sHistorical)
    operation="uniswapV2GetBurnV2sHistorical"
    ;;
    uniswapV2GetLiquidityPositionSnapshotV2sHistorical)
    operation="uniswapV2GetLiquidityPositionSnapshotV2sHistorical"
    ;;
    uniswapV2GetLiquidityPositionV2sHistorical)
    operation="uniswapV2GetLiquidityPositionV2sHistorical"
    ;;
    uniswapV2GetMintV2sHistorical)
    operation="uniswapV2GetMintV2sHistorical"
    ;;
    uniswapV2GetPairDayDataV2sHistorical)
    operation="uniswapV2GetPairDayDataV2sHistorical"
    ;;
    uniswapV2GetPairHourDataV2sHistorical)
    operation="uniswapV2GetPairHourDataV2sHistorical"
    ;;
    uniswapV2GetPairV2sHistorical)
    operation="uniswapV2GetPairV2sHistorical"
    ;;
    uniswapV2GetPoolsCurrent)
    operation="uniswapV2GetPoolsCurrent"
    ;;
    uniswapV2GetSwapV2sHistorical)
    operation="uniswapV2GetSwapV2sHistorical"
    ;;
    uniswapV2GetSwapsCurrent)
    operation="uniswapV2GetSwapsCurrent"
    ;;
    uniswapV2GetTokenDayDataV2sHistorical)
    operation="uniswapV2GetTokenDayDataV2sHistorical"
    ;;
    uniswapV2GetTokenV2sHistorical)
    operation="uniswapV2GetTokenV2sHistorical"
    ;;
    uniswapV2GetTokensCurrent)
    operation="uniswapV2GetTokensCurrent"
    ;;
    uniswapV2GetTransactionV2sHistorical)
    operation="uniswapV2GetTransactionV2sHistorical"
    ;;
    uniswapV2GetUniswapDayDataV2sHistorical)
    operation="uniswapV2GetUniswapDayDataV2sHistorical"
    ;;
    uniswapV2GetUniswapFactoryV2sHistorical)
    operation="uniswapV2GetUniswapFactoryV2sHistorical"
    ;;
    uniswapV2GetUserV2sHistorical)
    operation="uniswapV2GetUserV2sHistorical"
    ;;
    uniswapV3GetBundleV3sHistorical)
    operation="uniswapV3GetBundleV3sHistorical"
    ;;
    uniswapV3GetBundlesCurrent)
    operation="uniswapV3GetBundlesCurrent"
    ;;
    uniswapV3GetBurnV3sHistorical)
    operation="uniswapV3GetBurnV3sHistorical"
    ;;
    uniswapV3GetBurnsCurrent)
    operation="uniswapV3GetBurnsCurrent"
    ;;
    uniswapV3GetDayDataCurrent)
    operation="uniswapV3GetDayDataCurrent"
    ;;
    uniswapV3GetFactoryCurrent)
    operation="uniswapV3GetFactoryCurrent"
    ;;
    uniswapV3GetFactoryV3sHistorical)
    operation="uniswapV3GetFactoryV3sHistorical"
    ;;
    uniswapV3GetMintV3sHistorical)
    operation="uniswapV3GetMintV3sHistorical"
    ;;
    uniswapV3GetMintsCurrent)
    operation="uniswapV3GetMintsCurrent"
    ;;
    uniswapV3GetPoolDayDataV3sHistorical)
    operation="uniswapV3GetPoolDayDataV3sHistorical"
    ;;
    uniswapV3GetPoolHourDataV3sHistorical)
    operation="uniswapV3GetPoolHourDataV3sHistorical"
    ;;
    uniswapV3GetPoolV3sHistorical)
    operation="uniswapV3GetPoolV3sHistorical"
    ;;
    uniswapV3GetPoolsCurrent)
    operation="uniswapV3GetPoolsCurrent"
    ;;
    uniswapV3GetPoolsDayDataCurrent)
    operation="uniswapV3GetPoolsDayDataCurrent"
    ;;
    uniswapV3GetPoolsHourDataCurrent)
    operation="uniswapV3GetPoolsHourDataCurrent"
    ;;
    uniswapV3GetPositionSnapshotV3sHistorical)
    operation="uniswapV3GetPositionSnapshotV3sHistorical"
    ;;
    uniswapV3GetPositionV3sHistorical)
    operation="uniswapV3GetPositionV3sHistorical"
    ;;
    uniswapV3GetPositionsCurrent)
    operation="uniswapV3GetPositionsCurrent"
    ;;
    uniswapV3GetPositionsSnapshotsCurrent)
    operation="uniswapV3GetPositionsSnapshotsCurrent"
    ;;
    uniswapV3GetSwapV3sHistorical)
    operation="uniswapV3GetSwapV3sHistorical"
    ;;
    uniswapV3GetSwapsCurrent)
    operation="uniswapV3GetSwapsCurrent"
    ;;
    uniswapV3GetTickDayDataV3sHistorical)
    operation="uniswapV3GetTickDayDataV3sHistorical"
    ;;
    uniswapV3GetTickV3sHistorical)
    operation="uniswapV3GetTickV3sHistorical"
    ;;
    uniswapV3GetTicksCurrent)
    operation="uniswapV3GetTicksCurrent"
    ;;
    uniswapV3GetTicksDayDataCurrent)
    operation="uniswapV3GetTicksDayDataCurrent"
    ;;
    uniswapV3GetTokenHourDataV3sHistorical)
    operation="uniswapV3GetTokenHourDataV3sHistorical"
    ;;
    uniswapV3GetTokenV3DayDatasHistorical)
    operation="uniswapV3GetTokenV3DayDatasHistorical"
    ;;
    uniswapV3GetTokenV3sHistorical)
    operation="uniswapV3GetTokenV3sHistorical"
    ;;
    uniswapV3GetTokensCurrent)
    operation="uniswapV3GetTokensCurrent"
    ;;
    uniswapV3GetTokensDayDataCurrent)
    operation="uniswapV3GetTokensDayDataCurrent"
    ;;
    uniswapV3GetTokensHourDataCurrent)
    operation="uniswapV3GetTokensHourDataCurrent"
    ;;
    uniswapV3GetTransactionV3sHistorical)
    operation="uniswapV3GetTransactionV3sHistorical"
    ;;
    uniswapV3GetUniswapDayDataV3sHistorical)
    operation="uniswapV3GetUniswapDayDataV3sHistorical"
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
    curveGetContractVersionsHistorical)
    call_curveGetContractVersionsHistorical
    ;;
    curveGetContractsHistorical)
    call_curveGetContractsHistorical
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
    curveGetGaugeDepositsHistorical)
    call_curveGetGaugeDepositsHistorical
    ;;
    curveGetGaugeLiquiditysHistorical)
    call_curveGetGaugeLiquiditysHistorical
    ;;
    curveGetGaugeTotalWeightsHistorical)
    call_curveGetGaugeTotalWeightsHistorical
    ;;
    curveGetGaugeTypeWeightsHistorical)
    call_curveGetGaugeTypeWeightsHistorical
    ;;
    curveGetGaugeTypesHistorical)
    call_curveGetGaugeTypesHistorical
    ;;
    curveGetGaugeWeightVotesHistorical)
    call_curveGetGaugeWeightVotesHistorical
    ;;
    curveGetGaugeWeightsHistorical)
    call_curveGetGaugeWeightsHistorical
    ;;
    curveGetGaugeWithdrawsHistorical)
    call_curveGetGaugeWithdrawsHistorical
    ;;
    curveGetGaugesHistorical)
    call_curveGetGaugesHistorical
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
    curveGetProposalVotesHistorical)
    call_curveGetProposalVotesHistorical
    ;;
    curveGetProposalsHistorical)
    call_curveGetProposalsHistorical
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
    dexGetBatchsHistorical)
    call_dexGetBatchsHistorical
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
    dexGetStatssHistorical)
    call_dexGetStatssHistorical
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
    dexGetWithdrawRequestsHistorical)
    call_dexGetWithdrawRequestsHistorical
    ;;
    dexGetWithdrawsHistorical)
    call_dexGetWithdrawsHistorical
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
    sushiswapGetDayDatasHistorical)
    call_sushiswapGetDayDatasHistorical
    ;;
    sushiswapGetFactorysHistorical)
    call_sushiswapGetFactorysHistorical
    ;;
    sushiswapGetHourDatasHistorical)
    call_sushiswapGetHourDatasHistorical
    ;;
    sushiswapGetLiquidityPositionSnapshotsHistorical)
    call_sushiswapGetLiquidityPositionSnapshotsHistorical
    ;;
    sushiswapGetLiquidityPositionsHistorical)
    call_sushiswapGetLiquidityPositionsHistorical
    ;;
    sushiswapGetMintsHistorical)
    call_sushiswapGetMintsHistorical
    ;;
    sushiswapGetPairDayDatasHistorical)
    call_sushiswapGetPairDayDatasHistorical
    ;;
    sushiswapGetPairHourDatasHistorical)
    call_sushiswapGetPairHourDatasHistorical
    ;;
    sushiswapGetPairsHistorical)
    call_sushiswapGetPairsHistorical
    ;;
    sushiswapGetPoolsCurrent)
    call_sushiswapGetPoolsCurrent
    ;;
    sushiswapGetSwapsCurrent)
    call_sushiswapGetSwapsCurrent
    ;;
    sushiswapGetSwapsHistorical)
    call_sushiswapGetSwapsHistorical
    ;;
    sushiswapGetTokenDayDatasHistorical)
    call_sushiswapGetTokenDayDatasHistorical
    ;;
    sushiswapGetTokensCurrent)
    call_sushiswapGetTokensCurrent
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
    uniswapV2GetBundleV2sHistorical)
    call_uniswapV2GetBundleV2sHistorical
    ;;
    uniswapV2GetBurnV2sHistorical)
    call_uniswapV2GetBurnV2sHistorical
    ;;
    uniswapV2GetLiquidityPositionSnapshotV2sHistorical)
    call_uniswapV2GetLiquidityPositionSnapshotV2sHistorical
    ;;
    uniswapV2GetLiquidityPositionV2sHistorical)
    call_uniswapV2GetLiquidityPositionV2sHistorical
    ;;
    uniswapV2GetMintV2sHistorical)
    call_uniswapV2GetMintV2sHistorical
    ;;
    uniswapV2GetPairDayDataV2sHistorical)
    call_uniswapV2GetPairDayDataV2sHistorical
    ;;
    uniswapV2GetPairHourDataV2sHistorical)
    call_uniswapV2GetPairHourDataV2sHistorical
    ;;
    uniswapV2GetPairV2sHistorical)
    call_uniswapV2GetPairV2sHistorical
    ;;
    uniswapV2GetPoolsCurrent)
    call_uniswapV2GetPoolsCurrent
    ;;
    uniswapV2GetSwapV2sHistorical)
    call_uniswapV2GetSwapV2sHistorical
    ;;
    uniswapV2GetSwapsCurrent)
    call_uniswapV2GetSwapsCurrent
    ;;
    uniswapV2GetTokenDayDataV2sHistorical)
    call_uniswapV2GetTokenDayDataV2sHistorical
    ;;
    uniswapV2GetTokenV2sHistorical)
    call_uniswapV2GetTokenV2sHistorical
    ;;
    uniswapV2GetTokensCurrent)
    call_uniswapV2GetTokensCurrent
    ;;
    uniswapV2GetTransactionV2sHistorical)
    call_uniswapV2GetTransactionV2sHistorical
    ;;
    uniswapV2GetUniswapDayDataV2sHistorical)
    call_uniswapV2GetUniswapDayDataV2sHistorical
    ;;
    uniswapV2GetUniswapFactoryV2sHistorical)
    call_uniswapV2GetUniswapFactoryV2sHistorical
    ;;
    uniswapV2GetUserV2sHistorical)
    call_uniswapV2GetUserV2sHistorical
    ;;
    uniswapV3GetBundleV3sHistorical)
    call_uniswapV3GetBundleV3sHistorical
    ;;
    uniswapV3GetBundlesCurrent)
    call_uniswapV3GetBundlesCurrent
    ;;
    uniswapV3GetBurnV3sHistorical)
    call_uniswapV3GetBurnV3sHistorical
    ;;
    uniswapV3GetBurnsCurrent)
    call_uniswapV3GetBurnsCurrent
    ;;
    uniswapV3GetDayDataCurrent)
    call_uniswapV3GetDayDataCurrent
    ;;
    uniswapV3GetFactoryCurrent)
    call_uniswapV3GetFactoryCurrent
    ;;
    uniswapV3GetFactoryV3sHistorical)
    call_uniswapV3GetFactoryV3sHistorical
    ;;
    uniswapV3GetMintV3sHistorical)
    call_uniswapV3GetMintV3sHistorical
    ;;
    uniswapV3GetMintsCurrent)
    call_uniswapV3GetMintsCurrent
    ;;
    uniswapV3GetPoolDayDataV3sHistorical)
    call_uniswapV3GetPoolDayDataV3sHistorical
    ;;
    uniswapV3GetPoolHourDataV3sHistorical)
    call_uniswapV3GetPoolHourDataV3sHistorical
    ;;
    uniswapV3GetPoolV3sHistorical)
    call_uniswapV3GetPoolV3sHistorical
    ;;
    uniswapV3GetPoolsCurrent)
    call_uniswapV3GetPoolsCurrent
    ;;
    uniswapV3GetPoolsDayDataCurrent)
    call_uniswapV3GetPoolsDayDataCurrent
    ;;
    uniswapV3GetPoolsHourDataCurrent)
    call_uniswapV3GetPoolsHourDataCurrent
    ;;
    uniswapV3GetPositionSnapshotV3sHistorical)
    call_uniswapV3GetPositionSnapshotV3sHistorical
    ;;
    uniswapV3GetPositionV3sHistorical)
    call_uniswapV3GetPositionV3sHistorical
    ;;
    uniswapV3GetPositionsCurrent)
    call_uniswapV3GetPositionsCurrent
    ;;
    uniswapV3GetPositionsSnapshotsCurrent)
    call_uniswapV3GetPositionsSnapshotsCurrent
    ;;
    uniswapV3GetSwapV3sHistorical)
    call_uniswapV3GetSwapV3sHistorical
    ;;
    uniswapV3GetSwapsCurrent)
    call_uniswapV3GetSwapsCurrent
    ;;
    uniswapV3GetTickDayDataV3sHistorical)
    call_uniswapV3GetTickDayDataV3sHistorical
    ;;
    uniswapV3GetTickV3sHistorical)
    call_uniswapV3GetTickV3sHistorical
    ;;
    uniswapV3GetTicksCurrent)
    call_uniswapV3GetTicksCurrent
    ;;
    uniswapV3GetTicksDayDataCurrent)
    call_uniswapV3GetTicksDayDataCurrent
    ;;
    uniswapV3GetTokenHourDataV3sHistorical)
    call_uniswapV3GetTokenHourDataV3sHistorical
    ;;
    uniswapV3GetTokenV3DayDatasHistorical)
    call_uniswapV3GetTokenV3DayDatasHistorical
    ;;
    uniswapV3GetTokenV3sHistorical)
    call_uniswapV3GetTokenV3sHistorical
    ;;
    uniswapV3GetTokensCurrent)
    call_uniswapV3GetTokensCurrent
    ;;
    uniswapV3GetTokensDayDataCurrent)
    call_uniswapV3GetTokensDayDataCurrent
    ;;
    uniswapV3GetTokensHourDataCurrent)
    call_uniswapV3GetTokensHourDataCurrent
    ;;
    uniswapV3GetTransactionV3sHistorical)
    call_uniswapV3GetTransactionV3sHistorical
    ;;
    uniswapV3GetUniswapDayDataV3sHistorical)
    call_uniswapV3GetUniswapDayDataV3sHistorical
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
