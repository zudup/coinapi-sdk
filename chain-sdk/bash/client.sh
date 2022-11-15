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
operation_parameters_minimum_occurrences["cowGetOrderDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetOrderDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetOrderDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetOrderDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetOrderDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetOrdersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetSettlementDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetSettlementDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetSettlementDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetSettlementDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetSettlementDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetSettlementsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetTokenDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetTokenDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetTokenDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetTokenDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetTokenDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetTokensHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["cowGetTradeDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetTradeDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetTradeDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetTradeDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetTradeDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetTradesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetUserDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetUserDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetUserDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetUserDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["cowGetUserDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["cowGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAccountDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAccountDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAccountDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAccountDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAccountDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAccountsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAddLiquidityEventsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAdminFeeChangeLogsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetCoinDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetCoinDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetCoinDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetCoinDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetCoinDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetCoinsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetContractDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetContractDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetContractDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetContractVersionDTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["curveGetDailyVolumeDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumeDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumeDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumeDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumeDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetDailyVolumesHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetExchangeDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetExchangeDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetExchangeDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetExchangeDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetExchangeDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetExchangesHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetFeeChangeLogsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeDepositDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquidityDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquidityDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquidityDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquidityDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeLiquidityDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTotalWeightDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeTypeWeightDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVoteDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVoteDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVoteDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVoteDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWeightVoteDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetGaugeWithdrawDTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["curveGetHourlyVolumeDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumeDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumeDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumeDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumeDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetHourlyVolumesHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetLpTokenDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetLpTokenDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetLpTokenDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetLpTokenDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetLpTokenDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetLpTokensHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetPoolDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetPoolDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetPoolDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetPoolDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetPoolDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetPoolsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetProposalDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetProposalVoteDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalVoteDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalVoteDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalVoteDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalVoteDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalsVotesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsVotesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetProposalsVotesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetProposalsVotesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityEventsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetSystemStateDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetSystemStateDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetSystemStateDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetSystemStateDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetSystemStateDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetSystemStatesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTokenDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetTokenDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetTokenDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetTokenDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTokenDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTokensHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetTransferOwnershipEventsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetUnderlyingCoinsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetVotingAppsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumeDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumeDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumeDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumeDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumeDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["curveGetWeeklyVolumesHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetBatchDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetBatchDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetBatchDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetBatchDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetBatchDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetBatchesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetDepositDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetDepositDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetDepositsHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetOrderDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetOrderDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetOrderDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetOrderDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetOrderDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetOrdersHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetPriceDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetPriceDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetPriceDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetPriceDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetPriceDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetPricesHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetSolutionDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetSolutionDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetSolutionDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetSolutionDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetSolutionDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetSolutionsHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetStatsDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetStatsDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetStatsDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetStatsDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetStatsDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetStatsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetTokenDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetTokenDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetTokenDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetTokenDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetTokenDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetTokensHistorical:::tokenId"]=0
operation_parameters_minimum_occurrences["dexGetTradeDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetTradeDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetTradeDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetTradeDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetTradeDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetTradesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetUserDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetUserDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetUserDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetUserDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetUserDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["dexGetWithdrawRequestDTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["sushiswapGetBundleDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundleDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundleDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundleDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundleDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBundlesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetBurnsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetDayDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetFactoryHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetHourDataHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetMintsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairDayDataDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetPairHourDataDTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["sushiswapGetSwapDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetSwapsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDataDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDataDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDataDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDataDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTokenDayDataDTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["sushiswapGetTransactionDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetTransactionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetUserDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetUserDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetUserDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetUserDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetUserDTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["sushiswapGetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundleV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundleV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundleV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundleV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundleV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBundlesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetBurnV2DTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetLiquidityPositionV2DTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["uniswapV2GetMintV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetMintsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairDayDataV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairHourDataV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetPairV2DTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetSwapsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenDayDataV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTokenV2DTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["uniswapV2GetTransactionV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetTransactionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapDayDataV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoryV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoryV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoryV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoryV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUniswapFactoryV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUserV2DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUserV2DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUserV2DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUserV2DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUserV2DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV2GetUsersHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundleV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundleV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundleV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundleV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundleV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBundlesHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetBurnV3DTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["uniswapV3GetFactoryV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetFactoryV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetMintsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolDayDataV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolHourDataV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPoolV3DTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionSnapshotV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetPositionV3DTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsCurrent:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetSwapsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickDayDataV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTickV3DTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenHourDataV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDataDTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDataDTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDataDTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDataDTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTokenV3DayDataDTOsHistorical:::poolId"]=0
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
operation_parameters_minimum_occurrences["uniswapV3GetTransactionV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionV3DTOsHistorical:::poolId"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetTransactionsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataV3DTOsHistorical:::startBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataV3DTOsHistorical:::endBlock"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataV3DTOsHistorical:::startDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataV3DTOsHistorical:::endDate"]=0
operation_parameters_minimum_occurrences["uniswapV3GetUniswapDayDataV3DTOsHistorical:::poolId"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["cowGetOrderDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetOrderDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetOrderDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetOrderDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetOrderDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetOrdersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetSettlementDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetSettlementDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetSettlementDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetSettlementDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetSettlementDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetSettlementsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetTokenDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetTokenDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetTokenDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetTokenDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetTokenDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetTokensHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["cowGetTradeDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetTradeDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetTradeDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetTradeDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetTradeDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetTradesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetUserDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetUserDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetUserDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetUserDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["cowGetUserDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["cowGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAccountDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAccountDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAccountDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAccountDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAccountDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAccountsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAddLiquidityEventsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAdminFeeChangeLogsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetAmplificationCoeffChangeLogsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetCoinDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetCoinDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetCoinDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetCoinDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetCoinDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetCoinsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetContractDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetContractDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetContractDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetContractVersionDTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["curveGetDailyVolumeDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumeDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumeDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumeDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumeDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetDailyVolumesHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetExchangeDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetExchangeDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetExchangeDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetExchangeDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetExchangeDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetExchangesHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetFeeChangeLogsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeDepositDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquidityDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquidityDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquidityDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquidityDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeLiquidityDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTotalWeightDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeTypeWeightDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVoteDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVoteDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVoteDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVoteDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWeightVoteDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetGaugeWithdrawDTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["curveGetHourlyVolumeDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumeDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumeDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumeDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumeDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetHourlyVolumesHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetLpTokenDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetLpTokenDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetLpTokenDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetLpTokenDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetLpTokenDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetLpTokensHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetPoolDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetPoolDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetPoolDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetPoolDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetPoolDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetPoolsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetProposalDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetProposalVoteDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalVoteDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalVoteDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalVoteDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalVoteDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalsVotesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsVotesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetProposalsVotesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetProposalsVotesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityEventsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetRemoveLiquidityOneEventsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetSystemStateDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetSystemStateDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetSystemStateDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetSystemStateDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetSystemStateDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetSystemStatesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTokenDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetTokenDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetTokenDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetTokenDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTokenDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTokensHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetTransferOwnershipEventsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetUnderlyingCoinsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetVotingAppsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumeDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumeDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumeDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumeDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumeDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["curveGetWeeklyVolumesHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetBatchDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetBatchDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetBatchDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetBatchDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetBatchDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetBatchesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetDepositDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetDepositDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetDepositsHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetOrderDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetOrderDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetOrderDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetOrderDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetOrderDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetOrdersHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetPriceDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetPriceDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetPriceDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetPriceDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetPriceDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetPricesHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetSolutionDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetSolutionDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetSolutionDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetSolutionDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetSolutionDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetSolutionsHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetStatsDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetStatsDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetStatsDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetStatsDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetStatsDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetStatsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetTokenDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetTokenDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetTokenDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetTokenDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetTokenDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetTokensHistorical:::tokenId"]=0
operation_parameters_maximum_occurrences["dexGetTradeDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetTradeDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetTradeDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetTradeDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetTradeDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetTradesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetUserDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetUserDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetUserDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetUserDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetUserDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["dexGetWithdrawRequestDTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["sushiswapGetBundleDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundleDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundleDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundleDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundleDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBundlesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetBurnsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetDayDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetFactoryHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetHourDataHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetLiquidityPositionSnapshotHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetMintsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairDayDataDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetPairHourDataDTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["sushiswapGetSwapDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetSwapsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDataDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDataDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDataDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDataDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTokenDayDataDTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["sushiswapGetTransactionDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetTransactionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetUserDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetUserDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetUserDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetUserDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetUserDTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["sushiswapGetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundleV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundleV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundleV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundleV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundleV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBundlesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetBurnV2DTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetLiquidityPositionV2DTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["uniswapV2GetMintV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetMintsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairDayDataV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairHourDataV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetPairV2DTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetSwapsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenDayDataV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTokenV2DTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["uniswapV2GetTransactionV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetTransactionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapDayDataV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoryV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoryV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoryV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoryV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUniswapFactoryV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUserV2DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUserV2DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUserV2DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUserV2DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUserV2DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV2GetUsersHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundleV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundleV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundleV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundleV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundleV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBundlesHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetBurnV3DTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["uniswapV3GetFactoryV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetFactoryV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetMintsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolDayDataV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolHourDataV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPoolV3DTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionSnapshotV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetPositionV3DTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsCurrent:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetSwapsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickDayDataV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTickV3DTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenHourDataV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDataDTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDataDTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDataDTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDataDTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTokenV3DayDataDTOsHistorical:::poolId"]=0
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
operation_parameters_maximum_occurrences["uniswapV3GetTransactionV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionV3DTOsHistorical:::poolId"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetTransactionsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataV3DTOsHistorical:::startBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataV3DTOsHistorical:::endBlock"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataV3DTOsHistorical:::startDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataV3DTOsHistorical:::endDate"]=0
operation_parameters_maximum_occurrences["uniswapV3GetUniswapDayDataV3DTOsHistorical:::poolId"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["cowGetOrderDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetOrderDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetOrderDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetOrderDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetOrderDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetOrdersHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetSettlementDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetSettlementDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetSettlementDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetSettlementDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetSettlementDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetSettlementsHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetTokenDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetTokenDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetTokenDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetTokenDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetTokenDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetTokensHistorical:::tokenId"]=""
operation_parameters_collection_type["cowGetTradeDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetTradeDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetTradeDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetTradeDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetTradeDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetTradesHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetUserDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetUserDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetUserDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetUserDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["cowGetUserDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["cowGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAccountDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAccountDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAccountDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAccountDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAccountDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAccountsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAddLiquidityEventsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAdminFeeChangeLogsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetAmplificationCoeffChangeLogsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetCoinDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetCoinDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetCoinDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetCoinDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetCoinDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetCoinsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetContractDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetContractDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetContractDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetContractDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetContractDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetContractVersionDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetContractVersionDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetContractVersionDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetContractVersionDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetContractVersionDTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["curveGetDailyVolumeDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetDailyVolumeDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetDailyVolumeDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetDailyVolumeDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetDailyVolumeDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetDailyVolumesHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetExchangeDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetExchangeDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetExchangeDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetExchangeDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetExchangeDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetExchangesHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetFeeChangeLogDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetFeeChangeLogDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetFeeChangeLogDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetFeeChangeLogDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetFeeChangeLogDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetFeeChangeLogsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugeDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugeDepositDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeDepositDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeDepositDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeDepositDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeDepositDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugeLiquidityDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeLiquidityDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeLiquidityDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeLiquidityDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeLiquidityDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeTotalWeightDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugeTypeDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypeDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypeDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeTypeDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeTypeDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeTypeWeightDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugeWeightDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugeWeightVoteDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightVoteDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeWeightVoteDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightVoteDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeWeightVoteDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetGaugeWithdrawDTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["curveGetHourlyVolumeDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetHourlyVolumeDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetHourlyVolumeDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumeDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumeDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetHourlyVolumesHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetLpTokenDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetLpTokenDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetLpTokenDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetLpTokenDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetLpTokenDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetLpTokensHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetPoolDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetPoolDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetPoolDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetPoolDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetPoolDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetPoolsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetProposalDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetProposalDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetProposalDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetProposalDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetProposalDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetProposalVoteDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetProposalVoteDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetProposalVoteDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetProposalVoteDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetProposalVoteDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetProposalsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetProposalsVotesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetProposalsVotesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetProposalsVotesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetProposalsVotesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityEventsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetRemoveLiquidityOneEventsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetSystemStateDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetSystemStateDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetSystemStateDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetSystemStateDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetSystemStateDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetSystemStatesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTokenDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetTokenDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetTokenDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetTokenDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTokenDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTokensHistorical:::tokenId"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetTransferOwnershipEventsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetUnderlyingCoinsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetVotingAppDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetVotingAppDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetVotingAppDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetVotingAppDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetVotingAppDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetVotingAppsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumeDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetWeeklyVolumeDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetWeeklyVolumeDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumeDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumeDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::startBlock"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::endBlock"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::startDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::endDate"]=""
operation_parameters_collection_type["curveGetWeeklyVolumesHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetBatchDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetBatchDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetBatchDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetBatchDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetBatchDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetBatchesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetDepositDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetDepositDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetDepositDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetDepositDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetDepositDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetDepositsHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetOrderDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetOrderDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetOrderDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetOrderDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetOrderDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetOrdersHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetPriceDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetPriceDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetPriceDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetPriceDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetPriceDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetPricesHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetSolutionDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetSolutionDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetSolutionDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetSolutionDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetSolutionDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetSolutionsHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetStatsDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetStatsDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetStatsDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetStatsDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetStatsDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetStatsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetTokenDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetTokenDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetTokenDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetTokenDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetTokenDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetTokensHistorical:::tokenId"]=""
operation_parameters_collection_type["dexGetTradeDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetTradeDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetTradeDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetTradeDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetTradeDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetTradesHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetUserDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetUserDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetUserDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetUserDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetUserDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetWithdrawDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetWithdrawDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetWithdrawDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetWithdrawDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetWithdrawDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["dexGetWithdrawRequestDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["dexGetWithdrawRequestDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["dexGetWithdrawRequestDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["dexGetWithdrawRequestDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["dexGetWithdrawRequestDTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["sushiswapGetBundleDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetBundleDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetBundleDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetBundleDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetBundleDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetBundlesHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetBurnDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetBurnDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetBurnDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetBurnDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetBurnDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetBurnsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetDayDataDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetDayDataDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetDayDataDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetDayDataDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetDayDataDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetDayDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetFactoryDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetFactoryDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetFactoryDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetFactoryDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetFactoryDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetFactoryHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetFactoryHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetFactoryHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetFactoryHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetHourDataDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetHourDataDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetHourDataDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetHourDataDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetHourDataDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetHourDataHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetLiquidityPositionSnapshotHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetMintDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetMintDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetMintDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetMintDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetMintDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetMintsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetPairDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPairDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPairDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPairDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPairDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPairDayDataDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetPairHourDataDTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["sushiswapGetSwapDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetSwapDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetSwapDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetSwapDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetSwapDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetSwapsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetTokenDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTokenDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTokenDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTokenDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTokenDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDataDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDataDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDataDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDataDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTokenDayDataDTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["sushiswapGetTransactionDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTransactionDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTransactionDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTransactionDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetTransactionDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetTransactionsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetUserDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetUserDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetUserDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetUserDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["sushiswapGetUserDTOsHistorical:::poolId"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["sushiswapGetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBundleV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetBundleV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetBundleV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetBundleV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBundleV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetBundlesHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetBurnV2DTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetLiquidityPositionV2DTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["uniswapV2GetMintV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetMintV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetMintV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetMintV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetMintV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetMintsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPairDayDataV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPairHourDataV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetPairV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetPairV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetPairV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetPairV2DTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["uniswapV2GetSwapV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetSwapV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetSwapV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetSwapV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetSwapV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetSwapsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTokenDayDataV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTokenV2DTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["uniswapV2GetTransactionV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTransactionV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTransactionV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTransactionV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetTransactionV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetTransactionsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapDayDataV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoryV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoryV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoryV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoryV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUniswapFactoryV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetUserV2DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUserV2DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUserV2DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUserV2DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV2GetUserV2DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV2GetUsersHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBundleV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetBundleV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetBundleV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetBundleV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBundleV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetBundlesHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetBurnV3DTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["uniswapV3GetFactoryV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetFactoryV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetFactoryV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetFactoryV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetFactoryV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetMintV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetMintV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetMintV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetMintV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetMintV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetMintsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetMintsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolDayDataV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolHourDataV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPoolV3DTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionSnapshotV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetPositionV3DTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["uniswapV3GetSwapV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetSwapV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetSwapsCurrent:::filter_pool_id"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetSwapsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTickDayDataV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetTickV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTickV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTickV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTickV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTickV3DTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["uniswapV3GetTokenHourDataV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenHourDataV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDataDTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDataDTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDataDTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDataDTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTokenV3DayDataDTOsHistorical:::poolId"]=""
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
operation_parameters_collection_type["uniswapV3GetTransactionV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTransactionV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTransactionV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTransactionV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetTransactionV3DTOsHistorical:::poolId"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetTransactionsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataV3DTOsHistorical:::startBlock"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataV3DTOsHistorical:::endBlock"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataV3DTOsHistorical:::startDate"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataV3DTOsHistorical:::endDate"]=""
operation_parameters_collection_type["uniswapV3GetUniswapDayDataV3DTOsHistorical:::poolId"]=""


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
  ${CYAN}cowGetOrderDTOsHistorical${OFF};OrderDTOs (historical) 🔥
  ${CYAN}cowGetOrdersHistorical${OFF};Orders (historical)
  ${CYAN}cowGetSettlementDTOsHistorical${OFF};SettlementDTOs (historical) 🔥
  ${CYAN}cowGetSettlementsHistorical${OFF};Settlements (historical)
  ${CYAN}cowGetTokenDTOsHistorical${OFF};TokenDTOs (historical) 🔥
  ${CYAN}cowGetTokensHistorical${OFF};Tokens (historical) 🔥
  ${CYAN}cowGetTradeDTOsHistorical${OFF};TradeDTOs (historical) 🔥
  ${CYAN}cowGetTradesHistorical${OFF};Trades (historical) 🔥
  ${CYAN}cowGetUserDTOsHistorical${OFF};UserDTOs (historical) 🔥
  ${CYAN}cowGetUsersHistorical${OFF};Users (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[curve]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}curveGetAccountDTOsHistorical${OFF};AccountDTOs (historical) 🔥
  ${CYAN}curveGetAccountsHistorical${OFF};Accounts (historical)
  ${CYAN}curveGetAddLiquidityEventDTOsHistorical${OFF};AddLiquidityEventDTOs (historical) 🔥
  ${CYAN}curveGetAddLiquidityEventsHistorical${OFF};AddLiquidityEvents (historical)
  ${CYAN}curveGetAdminFeeChangeLogDTOsHistorical${OFF};AdminFeeChangeLogDTOs (historical) 🔥
  ${CYAN}curveGetAdminFeeChangeLogsHistorical${OFF};AdminFeeChangeLogs (historical)
  ${CYAN}curveGetAmplificationCoeffChangeLogDTOsHistorical${OFF};AmplificationCoeffChangeLogDTOs (historical) 🔥
  ${CYAN}curveGetAmplificationCoeffChangeLogsHistorical${OFF};AmplificationCoeffChangeLogs (historical)
  ${CYAN}curveGetCoinDTOsHistorical${OFF};CoinDTOs (historical) 🔥
  ${CYAN}curveGetCoinsHistorical${OFF};Coins (historical)
  ${CYAN}curveGetContractDTOsHistorical${OFF};ContractDTOs (historical) 🔥
  ${CYAN}curveGetContractVersionDTOsHistorical${OFF};ContractVersionDTOs (historical) 🔥
  ${CYAN}curveGetContractsHistorical${OFF};Contracts (historical)
  ${CYAN}curveGetContractsVersionsHistorical${OFF};ContractsVersions (historical)
  ${CYAN}curveGetDailyVolumeDTOsHistorical${OFF};DailyVolumeDTOs (historical) 🔥
  ${CYAN}curveGetDailyVolumesHistorical${OFF};DailyVolumes (historical)
  ${CYAN}curveGetExchangeDTOsHistorical${OFF};ExchangeDTOs (historical) 🔥
  ${CYAN}curveGetExchangesHistorical${OFF};Exchanges (historical) 🔥
  ${CYAN}curveGetFeeChangeLogDTOsHistorical${OFF};FeeChangeLogDTOs (historical) 🔥
  ${CYAN}curveGetFeeChangeLogsHistorical${OFF};FeeChangeLogs (historical)
  ${CYAN}curveGetGaugeDTOsHistorical${OFF};GaugeDTOs (historical) 🔥
  ${CYAN}curveGetGaugeDepositDTOsHistorical${OFF};GaugeDepositDTOs (historical) 🔥
  ${CYAN}curveGetGaugeLiquidityDTOsHistorical${OFF};GaugeLiquidityDTOs (historical) 🔥
  ${CYAN}curveGetGaugeTotalWeightDTOsHistorical${OFF};GaugeTotalWeightDTOs (historical) 🔥
  ${CYAN}curveGetGaugeTypeDTOsHistorical${OFF};GaugeTypeDTOs (historical) 🔥
  ${CYAN}curveGetGaugeTypeWeightDTOsHistorical${OFF};GaugeTypeWeightDTOs (historical) 🔥
  ${CYAN}curveGetGaugeWeightDTOsHistorical${OFF};GaugeWeightDTOs (historical) 🔥
  ${CYAN}curveGetGaugeWeightVoteDTOsHistorical${OFF};GaugeWeightVoteDTOs (historical) 🔥
  ${CYAN}curveGetGaugeWithdrawDTOsHistorical${OFF};GaugeWithdrawDTOs (historical) 🔥
  ${CYAN}curveGetGaugesDepositsHistorical${OFF};GaugesDeposits (historical)
  ${CYAN}curveGetGaugesHistorical${OFF};Gauges (historical)
  ${CYAN}curveGetGaugesLiquidityHistorical${OFF};GaugesLiquidity (historical)
  ${CYAN}curveGetGaugesTotalWeightsHistorical${OFF};GaugesTotalWeights (historical)
  ${CYAN}curveGetGaugesTypesHistorical${OFF};GaugesTypes (historical)
  ${CYAN}curveGetGaugesTypesWeightsHistorical${OFF};GaugesTypesWeights (historical)
  ${CYAN}curveGetGaugesWeightsHistorical${OFF};GaugesWeights (historical)
  ${CYAN}curveGetGaugesWeightsVotesHistorical${OFF};GaugesWeightsVotes (historical)
  ${CYAN}curveGetGaugesWithdrawHistorical${OFF};GaugesWithdraw (historical)
  ${CYAN}curveGetHourlyVolumeDTOsHistorical${OFF};HourlyVolumeDTOs (historical) 🔥
  ${CYAN}curveGetHourlyVolumesHistorical${OFF};HourlyVolumes (historical)
  ${CYAN}curveGetLpTokenDTOsHistorical${OFF};LpTokenDTOs (historical) 🔥
  ${CYAN}curveGetLpTokensHistorical${OFF};LpTokens (historical)
  ${CYAN}curveGetPoolDTOsHistorical${OFF};PoolDTOs (historical) 🔥
  ${CYAN}curveGetPoolsHistorical${OFF};Pools (historical) 🔥
  ${CYAN}curveGetProposalDTOsHistorical${OFF};ProposalDTOs (historical) 🔥
  ${CYAN}curveGetProposalVoteDTOsHistorical${OFF};ProposalVoteDTOs (historical) 🔥
  ${CYAN}curveGetProposalsHistorical${OFF};Proposals (historical)
  ${CYAN}curveGetProposalsVotesHistorical${OFF};ProposalsVotes (historical)
  ${CYAN}curveGetRemoveLiquidityEventDTOsHistorical${OFF};RemoveLiquidityEventDTOs (historical) 🔥
  ${CYAN}curveGetRemoveLiquidityEventsHistorical${OFF};RemoveLiquidityEvents (historical)
  ${CYAN}curveGetRemoveLiquidityOneEventDTOsHistorical${OFF};RemoveLiquidityOneEventDTOs (historical) 🔥
  ${CYAN}curveGetRemoveLiquidityOneEventsHistorical${OFF};RemoveLiquidityOneEvents (historical)
  ${CYAN}curveGetSystemStateDTOsHistorical${OFF};SystemStateDTOs (historical) 🔥
  ${CYAN}curveGetSystemStatesHistorical${OFF};SystemStates (historical)
  ${CYAN}curveGetTokenDTOsHistorical${OFF};TokenDTOs (historical) 🔥
  ${CYAN}curveGetTokensHistorical${OFF};Tokens (historical) 🔥
  ${CYAN}curveGetTransferOwnershipEventDTOsHistorical${OFF};TransferOwnershipEventDTOs (historical) 🔥
  ${CYAN}curveGetTransferOwnershipEventsHistorical${OFF};TransferOwnershipEvents (historical)
  ${CYAN}curveGetUnderlyingCoinDTOsHistorical${OFF};UnderlyingCoinDTOs (historical) 🔥
  ${CYAN}curveGetUnderlyingCoinsHistorical${OFF};UnderlyingCoins (historical)
  ${CYAN}curveGetVotingAppDTOsHistorical${OFF};VotingAppDTOs (historical) 🔥
  ${CYAN}curveGetVotingAppsHistorical${OFF};VotingApps (historical)
  ${CYAN}curveGetWeeklyVolumeDTOsHistorical${OFF};WeeklyVolumeDTOs (historical) 🔥
  ${CYAN}curveGetWeeklyVolumesHistorical${OFF};WeeklyVolumes (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[dex]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}dexGetBatchDTOsHistorical${OFF};BatchDTOs (historical) 🔥
  ${CYAN}dexGetBatchesHistorical${OFF};Batches (historical)
  ${CYAN}dexGetDepositDTOsHistorical${OFF};DepositDTOs (historical) 🔥
  ${CYAN}dexGetDepositsHistorical${OFF};Deposits (historical)
  ${CYAN}dexGetOrderDTOsHistorical${OFF};OrderDTOs (historical) 🔥
  ${CYAN}dexGetOrdersHistorical${OFF};Orders (historical)
  ${CYAN}dexGetPriceDTOsHistorical${OFF};PriceDTOs (historical) 🔥
  ${CYAN}dexGetPricesHistorical${OFF};Prices (historical)
  ${CYAN}dexGetSolutionDTOsHistorical${OFF};SolutionDTOs (historical) 🔥
  ${CYAN}dexGetSolutionsHistorical${OFF};Solutions (historical)
  ${CYAN}dexGetStatsDTOsHistorical${OFF};StatsDTOs (historical) 🔥
  ${CYAN}dexGetStatsHistorical${OFF};Stats (historical)
  ${CYAN}dexGetTokenDTOsHistorical${OFF};TokenDTOs (historical) 🔥
  ${CYAN}dexGetTokensHistorical${OFF};Tokens (historical) 🔥
  ${CYAN}dexGetTradeDTOsHistorical${OFF};TradeDTOs (historical) 🔥
  ${CYAN}dexGetTradesHistorical${OFF};Trades (historical) 🔥
  ${CYAN}dexGetUserDTOsHistorical${OFF};UserDTOs (historical) 🔥
  ${CYAN}dexGetUsersHistorical${OFF};Users (historical)
  ${CYAN}dexGetWithdrawDTOsHistorical${OFF};WithdrawDTOs (historical) 🔥
  ${CYAN}dexGetWithdrawRequestDTOsHistorical${OFF};WithdrawRequestDTOs (historical) 🔥
  ${CYAN}dexGetWithdrawsHistorical${OFF};Withdraws (historical)
  ${CYAN}dexGetWithdrawsRequestsHistorical${OFF};WithdrawsRequests (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sushiswap]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}curveGetExchangesCurrent${OFF};Exchanges (current) 🔥
  ${CYAN}dexGetTradesCurrent${OFF};Trades (current) 🔥
  ${CYAN}sushiswapGetBundleDTOsHistorical${OFF};BundleDTOs (historical) 🔥
  ${CYAN}sushiswapGetBundlesHistorical${OFF};Bundles (historical)
  ${CYAN}sushiswapGetBurnDTOsHistorical${OFF};BurnDTOs (historical) 🔥
  ${CYAN}sushiswapGetBurnsHistorical${OFF};Burns (historical)
  ${CYAN}sushiswapGetDayDataDTOsHistorical${OFF};DayDataDTOs (historical) 🔥
  ${CYAN}sushiswapGetDayDataHistorical${OFF};DayData (historical)
  ${CYAN}sushiswapGetFactoryDTOsHistorical${OFF};FactoryDTOs (historical) 🔥
  ${CYAN}sushiswapGetFactoryHistorical${OFF};Factory (historical)
  ${CYAN}sushiswapGetHourDataDTOsHistorical${OFF};HourDataDTOs (historical) 🔥
  ${CYAN}sushiswapGetHourDataHistorical${OFF};HourData (historical)
  ${CYAN}sushiswapGetLiquidityPositionDTOsHistorical${OFF};LiquidityPositionDTOs (historical) 🔥
  ${CYAN}sushiswapGetLiquidityPositionHistorical${OFF};LiquidityPosition (historical)
  ${CYAN}sushiswapGetLiquidityPositionSnapshotDTOsHistorical${OFF};LiquidityPositionSnapshotDTOs (historical) 🔥
  ${CYAN}sushiswapGetLiquidityPositionSnapshotHistorical${OFF};LiquidityPositionSnapshot (historical)
  ${CYAN}sushiswapGetMintDTOsHistorical${OFF};MintDTOs (historical) 🔥
  ${CYAN}sushiswapGetMintsHistorical${OFF};Mints (historical)
  ${CYAN}sushiswapGetPairDTOsHistorical${OFF};PairDTOs (historical) 🔥
  ${CYAN}sushiswapGetPairDayDataDTOsHistorical${OFF};PairDayDataDTOs (historical) 🔥
  ${CYAN}sushiswapGetPairHourDataDTOsHistorical${OFF};PairHourDataDTOs (historical) 🔥
  ${CYAN}sushiswapGetPoolsCurrent${OFF};Pools (current) 🔥
  ${CYAN}sushiswapGetPoolsDayDataHistorical${OFF};PoolsDayData (historical)
  ${CYAN}sushiswapGetPoolsHistorical${OFF};Pools (historical) 🔥
  ${CYAN}sushiswapGetPoolsHourDataHistorical${OFF};PoolsHourData (historical)
  ${CYAN}sushiswapGetSwapDTOsHistorical${OFF};SwapDTOs (historical) 🔥
  ${CYAN}sushiswapGetSwapsCurrent${OFF};Swaps (current) 🔥
  ${CYAN}sushiswapGetSwapsHistorical${OFF};Swaps (historical) 🔥
  ${CYAN}sushiswapGetTokenDTOsHistorical${OFF};TokenDTOs (historical) 🔥
  ${CYAN}sushiswapGetTokenDayDataDTOsHistorical${OFF};TokenDayDataDTOs (historical) 🔥
  ${CYAN}sushiswapGetTokensCurrent${OFF};Tokens (current) 🔥
  ${CYAN}sushiswapGetTokensDayDataHistorical${OFF};TokensDayData (historical)
  ${CYAN}sushiswapGetTokensHistorical${OFF};Tokens (historical) 🔥
  ${CYAN}sushiswapGetTransactionDTOsHistorical${OFF};TransactionDTOs (historical) 🔥
  ${CYAN}sushiswapGetTransactionsHistorical${OFF};Transactions (historical)
  ${CYAN}sushiswapGetUserDTOsHistorical${OFF};UserDTOs (historical) 🔥
  ${CYAN}sushiswapGetUsersHistorical${OFF};Users (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV2]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}uniswapV2GetBundleV2DTOsHistorical${OFF};BundleV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetBundlesHistorical${OFF};Bundles (historical)
  ${CYAN}uniswapV2GetBurnV2DTOsHistorical${OFF};BurnV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetBurnsHistorical${OFF};Burns (historical)
  ${CYAN}uniswapV2GetDayDataHistorical${OFF};DayData (historical)
  ${CYAN}uniswapV2GetFactoryHistorical${OFF};Factory (historical)
  ${CYAN}uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical${OFF};LiquidityPositionSnapshotV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetLiquidityPositionV2DTOsHistorical${OFF};LiquidityPositionV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetLiquidityPositionsHistorical${OFF};LiquidityPositions (historical)
  ${CYAN}uniswapV2GetLiquidityPositionsSnapshotsHistorical${OFF};LiquidityPositionsSnapshots (historical)
  ${CYAN}uniswapV2GetMintV2DTOsHistorical${OFF};MintV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetMintsHistorical${OFF};Mints (historical)
  ${CYAN}uniswapV2GetPairDayDataV2DTOsHistorical${OFF};PairDayDataV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetPairHourDataV2DTOsHistorical${OFF};PairHourDataV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetPairV2DTOsHistorical${OFF};PairV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetPoolsCurrent${OFF};Pools (current) 🔥
  ${CYAN}uniswapV2GetPoolsDayDataHistorical${OFF};PoolsDayData (historical)
  ${CYAN}uniswapV2GetPoolsHistorical${OFF};Pools (historical) 🔥
  ${CYAN}uniswapV2GetPoolsHourDataHistorical${OFF};PoolsHourData (historical)
  ${CYAN}uniswapV2GetSwapV2DTOsHistorical${OFF};SwapV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetSwapsCurrent${OFF};Swaps (current) 🔥
  ${CYAN}uniswapV2GetSwapsHistorical${OFF};Swaps (historical) 🔥
  ${CYAN}uniswapV2GetTokenDayDataV2DTOsHistorical${OFF};TokenDayDataV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetTokenV2DTOsHistorical${OFF};TokenV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetTokensCurrent${OFF};Tokens (current) 🔥
  ${CYAN}uniswapV2GetTokensDayDataHistorical${OFF};TokensDayData (historical)
  ${CYAN}uniswapV2GetTokensHistorical${OFF};Tokens (historical) 🔥
  ${CYAN}uniswapV2GetTransactionV2DTOsHistorical${OFF};TransactionV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetTransactionsHistorical${OFF};Transactions (historical)
  ${CYAN}uniswapV2GetUniswapDayDataV2DTOsHistorical${OFF};UniswapDayDataV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetUniswapFactoryV2DTOsHistorical${OFF};UniswapFactoryV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetUserV2DTOsHistorical${OFF};UserV2DTOs (historical) 🔥
  ${CYAN}uniswapV2GetUsersHistorical${OFF};Users (historical)
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV3]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}uniswapV3GetBundleV3DTOsHistorical${OFF};BundleV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetBundlesCurrent${OFF};Bundles (current)
  ${CYAN}uniswapV3GetBundlesHistorical${OFF};Bundles (historical)
  ${CYAN}uniswapV3GetBurnV3DTOsHistorical${OFF};BurnV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetBurnsCurrent${OFF};Burns (current)
  ${CYAN}uniswapV3GetBurnsHistorical${OFF};Burns (historical)
  ${CYAN}uniswapV3GetDayDataCurrent${OFF};DayData (current)
  ${CYAN}uniswapV3GetDayDataHistorical${OFF};DayData (historical)
  ${CYAN}uniswapV3GetFactoryCurrent${OFF};Factory (current)
  ${CYAN}uniswapV3GetFactoryHistorical${OFF};Factory (historical)
  ${CYAN}uniswapV3GetFactoryV3DTOsHistorical${OFF};FactoryV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetMintV3DTOsHistorical${OFF};MintV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetMintsCurrent${OFF};Mints (current)
  ${CYAN}uniswapV3GetMintsHistorical${OFF};Mints (historical)
  ${CYAN}uniswapV3GetPoolDayDataV3DTOsHistorical${OFF};PoolDayDataV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetPoolHourDataV3DTOsHistorical${OFF};PoolHourDataV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetPoolV3DTOsHistorical${OFF};PoolV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetPoolsCurrent${OFF};Pools (current) 🔥
  ${CYAN}uniswapV3GetPoolsDayDataCurrent${OFF};PoolsDayData (current)
  ${CYAN}uniswapV3GetPoolsDayDataHistorical${OFF};PoolsDayData (historical)
  ${CYAN}uniswapV3GetPoolsHistorical${OFF};Pools (historical) 🔥
  ${CYAN}uniswapV3GetPoolsHourDataCurrent${OFF};PoolsHourData (current)
  ${CYAN}uniswapV3GetPoolsHourDataHistorical${OFF};PoolsHourData (historical)
  ${CYAN}uniswapV3GetPositionSnapshotV3DTOsHistorical${OFF};PositionSnapshotV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetPositionV3DTOsHistorical${OFF};PositionV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetPositionsCurrent${OFF};Positions (current)
  ${CYAN}uniswapV3GetPositionsHistorical${OFF};Positions (historical)
  ${CYAN}uniswapV3GetPositionsSnaphotsHistorical${OFF};PositionsSnaphots (historical)
  ${CYAN}uniswapV3GetPositionsSnapshotsCurrent${OFF};PositionsSnapshots (current)
  ${CYAN}uniswapV3GetSwapV3DTOsHistorical${OFF};SwapV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetSwapsCurrent${OFF};Swaps (current) 🔥
  ${CYAN}uniswapV3GetSwapsHistorical${OFF};Swaps (historical) 🔥
  ${CYAN}uniswapV3GetTickDayDataV3DTOsHistorical${OFF};TickDayDataV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetTickV3DTOsHistorical${OFF};TickV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetTicksCurrent${OFF};Ticks (current)
  ${CYAN}uniswapV3GetTicksDayDataCurrent${OFF};TicksDayData (current)
  ${CYAN}uniswapV3GetTicksDayDataHistorical${OFF};TicksDayData (historical)
  ${CYAN}uniswapV3GetTicksHistorical${OFF};Ticks (historical)
  ${CYAN}uniswapV3GetTokenHourDataV3DTOsHistorical${OFF};TokenHourDataV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetTokenV3DTOsHistorical${OFF};TokenV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetTokenV3DayDataDTOsHistorical${OFF};TokenV3DayDataDTOs (historical) 🔥
  ${CYAN}uniswapV3GetTokensCurrent${OFF};Tokens (current) 🔥
  ${CYAN}uniswapV3GetTokensDayDataCurrent${OFF};TokensDayData (current)
  ${CYAN}uniswapV3GetTokensDayDataHistorical${OFF};TokensDayData (historical)
  ${CYAN}uniswapV3GetTokensHistorical${OFF};Tokens (historical) 🔥
  ${CYAN}uniswapV3GetTokensHourDataCurrent${OFF};TokensHourData (current)
  ${CYAN}uniswapV3GetTokensHourDataHistorical${OFF};TokensHourData (historical)
  ${CYAN}uniswapV3GetTransactionV3DTOsHistorical${OFF};TransactionV3DTOs (historical) 🔥
  ${CYAN}uniswapV3GetTransactionsHistorical${OFF};Transactions (historical)
  ${CYAN}uniswapV3GetUniswapDayDataV3DTOsHistorical${OFF};UniswapDayDataV3DTOs (historical) 🔥
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
# Print help for cowGetOrderDTOsHistorical operation
#
##############################################################################
print_cowGetOrderDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetOrderDTOsHistorical - OrderDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets OrderDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for cowGetOrdersHistorical operation
#
##############################################################################
print_cowGetOrdersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetOrdersHistorical - Orders (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for cowGetSettlementDTOsHistorical operation
#
##############################################################################
print_cowGetSettlementDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetSettlementDTOsHistorical - SettlementDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets SettlementDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for cowGetSettlementsHistorical operation
#
##############################################################################
print_cowGetSettlementsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetSettlementsHistorical - Settlements (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for cowGetTokenDTOsHistorical operation
#
##############################################################################
print_cowGetTokenDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetTokenDTOsHistorical - TokenDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TokenDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for cowGetTradeDTOsHistorical operation
#
##############################################################################
print_cowGetTradeDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetTradeDTOsHistorical - TradeDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TradeDTOs." | paste -sd' ' | fold -sw 80
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
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for cowGetUserDTOsHistorical operation
#
##############################################################################
print_cowGetUserDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetUserDTOsHistorical - UserDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets UserDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for cowGetUsersHistorical operation
#
##############################################################################
print_cowGetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}cowGetUsersHistorical - Users (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetAccountDTOsHistorical operation
#
##############################################################################
print_curveGetAccountDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAccountDTOsHistorical - AccountDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets AccountDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetAccountsHistorical operation
#
##############################################################################
print_curveGetAccountsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAccountsHistorical - Accounts (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetAddLiquidityEventDTOsHistorical operation
#
##############################################################################
print_curveGetAddLiquidityEventDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAddLiquidityEventDTOsHistorical - AddLiquidityEventDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets AddLiquidityEventDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetAddLiquidityEventsHistorical operation
#
##############################################################################
print_curveGetAddLiquidityEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAddLiquidityEventsHistorical - AddLiquidityEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetAdminFeeChangeLogDTOsHistorical operation
#
##############################################################################
print_curveGetAdminFeeChangeLogDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAdminFeeChangeLogDTOsHistorical - AdminFeeChangeLogDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets AdminFeeChangeLogDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetAdminFeeChangeLogsHistorical - AdminFeeChangeLogs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetAmplificationCoeffChangeLogDTOsHistorical operation
#
##############################################################################
print_curveGetAmplificationCoeffChangeLogDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetAmplificationCoeffChangeLogDTOsHistorical - AmplificationCoeffChangeLogDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets AmplificationCoeffChangeLogDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetAmplificationCoeffChangeLogsHistorical - AmplificationCoeffChangeLogs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetCoinDTOsHistorical operation
#
##############################################################################
print_curveGetCoinDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetCoinDTOsHistorical - CoinDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets CoinDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetCoinsHistorical - Coins (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetContractDTOsHistorical operation
#
##############################################################################
print_curveGetContractDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetContractDTOsHistorical - ContractDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ContractDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetContractVersionDTOsHistorical operation
#
##############################################################################
print_curveGetContractVersionDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetContractVersionDTOsHistorical - ContractVersionDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ContractVersionDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetContractsHistorical - Contracts (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}curveGetContractsVersionsHistorical - ContractsVersions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetDailyVolumeDTOsHistorical operation
#
##############################################################################
print_curveGetDailyVolumeDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetDailyVolumeDTOsHistorical - DailyVolumeDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets DailyVolumeDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetDailyVolumesHistorical - DailyVolumes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetExchangeDTOsHistorical operation
#
##############################################################################
print_curveGetExchangeDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetExchangeDTOsHistorical - ExchangeDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ExchangeDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetExchangesHistorical - Exchanges (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetFeeChangeLogDTOsHistorical operation
#
##############################################################################
print_curveGetFeeChangeLogDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetFeeChangeLogDTOsHistorical - FeeChangeLogDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets FeeChangeLogDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetFeeChangeLogsHistorical - FeeChangeLogs (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetGaugeDTOsHistorical operation
#
##############################################################################
print_curveGetGaugeDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeDTOsHistorical - GaugeDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets GaugeDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetGaugeDepositDTOsHistorical operation
#
##############################################################################
print_curveGetGaugeDepositDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeDepositDTOsHistorical - GaugeDepositDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets GaugeDepositDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetGaugeLiquidityDTOsHistorical operation
#
##############################################################################
print_curveGetGaugeLiquidityDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeLiquidityDTOsHistorical - GaugeLiquidityDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets GaugeLiquidityDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetGaugeTotalWeightDTOsHistorical operation
#
##############################################################################
print_curveGetGaugeTotalWeightDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeTotalWeightDTOsHistorical - GaugeTotalWeightDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets GaugeTotalWeightDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetGaugeTypeDTOsHistorical operation
#
##############################################################################
print_curveGetGaugeTypeDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeTypeDTOsHistorical - GaugeTypeDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets GaugeTypeDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetGaugeTypeWeightDTOsHistorical operation
#
##############################################################################
print_curveGetGaugeTypeWeightDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeTypeWeightDTOsHistorical - GaugeTypeWeightDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets GaugeTypeWeightDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetGaugeWeightDTOsHistorical operation
#
##############################################################################
print_curveGetGaugeWeightDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeWeightDTOsHistorical - GaugeWeightDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets GaugeWeightDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetGaugeWeightVoteDTOsHistorical operation
#
##############################################################################
print_curveGetGaugeWeightVoteDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeWeightVoteDTOsHistorical - GaugeWeightVoteDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets GaugeWeightVoteDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetGaugeWithdrawDTOsHistorical operation
#
##############################################################################
print_curveGetGaugeWithdrawDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetGaugeWithdrawDTOsHistorical - GaugeWithdrawDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets GaugeWithdrawDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetGaugesDepositsHistorical - GaugesDeposits (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}curveGetGaugesHistorical - Gauges (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}curveGetGaugesLiquidityHistorical - GaugesLiquidity (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}curveGetGaugesTotalWeightsHistorical - GaugesTotalWeights (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}curveGetGaugesTypesHistorical - GaugesTypes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}curveGetGaugesTypesWeightsHistorical - GaugesTypesWeights (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}curveGetGaugesWeightsHistorical - GaugesWeights (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}curveGetGaugesWeightsVotesHistorical - GaugesWeightsVotes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}curveGetGaugesWithdrawHistorical - GaugesWithdraw (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetHourlyVolumeDTOsHistorical operation
#
##############################################################################
print_curveGetHourlyVolumeDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetHourlyVolumeDTOsHistorical - HourlyVolumeDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets HourlyVolumeDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetHourlyVolumesHistorical operation
#
##############################################################################
print_curveGetHourlyVolumesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetHourlyVolumesHistorical - HourlyVolumes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetLpTokenDTOsHistorical operation
#
##############################################################################
print_curveGetLpTokenDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetLpTokenDTOsHistorical - LpTokenDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets LpTokenDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetLpTokensHistorical - LpTokens (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetPoolDTOsHistorical operation
#
##############################################################################
print_curveGetPoolDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetPoolDTOsHistorical - PoolDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PoolDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetPoolsHistorical - Pools (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetProposalDTOsHistorical operation
#
##############################################################################
print_curveGetProposalDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetProposalDTOsHistorical - ProposalDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ProposalDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetProposalVoteDTOsHistorical operation
#
##############################################################################
print_curveGetProposalVoteDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetProposalVoteDTOsHistorical - ProposalVoteDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets ProposalVoteDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetProposalsHistorical - Proposals (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}curveGetProposalsVotesHistorical - ProposalsVotes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetRemoveLiquidityEventDTOsHistorical operation
#
##############################################################################
print_curveGetRemoveLiquidityEventDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetRemoveLiquidityEventDTOsHistorical - RemoveLiquidityEventDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets RemoveLiquidityEventDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetRemoveLiquidityEventsHistorical operation
#
##############################################################################
print_curveGetRemoveLiquidityEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetRemoveLiquidityEventsHistorical - RemoveLiquidityEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetRemoveLiquidityOneEventDTOsHistorical operation
#
##############################################################################
print_curveGetRemoveLiquidityOneEventDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetRemoveLiquidityOneEventDTOsHistorical - RemoveLiquidityOneEventDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets RemoveLiquidityOneEventDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetRemoveLiquidityOneEventsHistorical - RemoveLiquidityOneEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetSystemStateDTOsHistorical operation
#
##############################################################################
print_curveGetSystemStateDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetSystemStateDTOsHistorical - SystemStateDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets SystemStateDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetSystemStatesHistorical - SystemStates (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetTokenDTOsHistorical operation
#
##############################################################################
print_curveGetTokenDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetTokenDTOsHistorical - TokenDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TokenDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetTransferOwnershipEventDTOsHistorical operation
#
##############################################################################
print_curveGetTransferOwnershipEventDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetTransferOwnershipEventDTOsHistorical - TransferOwnershipEventDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TransferOwnershipEventDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetTransferOwnershipEventsHistorical operation
#
##############################################################################
print_curveGetTransferOwnershipEventsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetTransferOwnershipEventsHistorical - TransferOwnershipEvents (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetUnderlyingCoinDTOsHistorical operation
#
##############################################################################
print_curveGetUnderlyingCoinDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetUnderlyingCoinDTOsHistorical - UnderlyingCoinDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets UnderlyingCoinDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetUnderlyingCoinsHistorical - UnderlyingCoins (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetVotingAppDTOsHistorical operation
#
##############################################################################
print_curveGetVotingAppDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetVotingAppDTOsHistorical - VotingAppDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets VotingAppDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}curveGetVotingAppsHistorical - VotingApps (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for curveGetWeeklyVolumeDTOsHistorical operation
#
##############################################################################
print_curveGetWeeklyVolumeDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetWeeklyVolumeDTOsHistorical - WeeklyVolumeDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets WeeklyVolumeDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for curveGetWeeklyVolumesHistorical operation
#
##############################################################################
print_curveGetWeeklyVolumesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}curveGetWeeklyVolumesHistorical - WeeklyVolumes (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dexGetBatchDTOsHistorical operation
#
##############################################################################
print_dexGetBatchDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetBatchDTOsHistorical - BatchDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets BatchDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}dexGetBatchesHistorical - Batches (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dexGetDepositDTOsHistorical operation
#
##############################################################################
print_dexGetDepositDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetDepositDTOsHistorical - DepositDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets DepositDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for dexGetDepositsHistorical operation
#
##############################################################################
print_dexGetDepositsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetDepositsHistorical - Deposits (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dexGetOrderDTOsHistorical operation
#
##############################################################################
print_dexGetOrderDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetOrderDTOsHistorical - OrderDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets OrderDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for dexGetOrdersHistorical operation
#
##############################################################################
print_dexGetOrdersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetOrdersHistorical - Orders (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dexGetPriceDTOsHistorical operation
#
##############################################################################
print_dexGetPriceDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetPriceDTOsHistorical - PriceDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PriceDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for dexGetPricesHistorical operation
#
##############################################################################
print_dexGetPricesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetPricesHistorical - Prices (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dexGetSolutionDTOsHistorical operation
#
##############################################################################
print_dexGetSolutionDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetSolutionDTOsHistorical - SolutionDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets SolutionDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for dexGetSolutionsHistorical operation
#
##############################################################################
print_dexGetSolutionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetSolutionsHistorical - Solutions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dexGetStatsDTOsHistorical operation
#
##############################################################################
print_dexGetStatsDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetStatsDTOsHistorical - StatsDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets StatsDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for dexGetStatsHistorical operation
#
##############################################################################
print_dexGetStatsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetStatsHistorical - Stats (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dexGetTokenDTOsHistorical operation
#
##############################################################################
print_dexGetTokenDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetTokenDTOsHistorical - TokenDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TokenDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for dexGetTradeDTOsHistorical operation
#
##############################################################################
print_dexGetTradeDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetTradeDTOsHistorical - TradeDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TradeDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for dexGetUserDTOsHistorical operation
#
##############################################################################
print_dexGetUserDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetUserDTOsHistorical - UserDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets UserDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for dexGetUsersHistorical operation
#
##############################################################################
print_dexGetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetUsersHistorical - Users (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dexGetWithdrawDTOsHistorical operation
#
##############################################################################
print_dexGetWithdrawDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetWithdrawDTOsHistorical - WithdrawDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets WithdrawDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for dexGetWithdrawRequestDTOsHistorical operation
#
##############################################################################
print_dexGetWithdrawRequestDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetWithdrawRequestDTOsHistorical - WithdrawRequestDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets WithdrawRequestDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for dexGetWithdrawsHistorical operation
#
##############################################################################
print_dexGetWithdrawsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dexGetWithdrawsHistorical - Withdraws (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}dexGetWithdrawsRequestsHistorical - WithdrawsRequests (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetBundleDTOsHistorical operation
#
##############################################################################
print_sushiswapGetBundleDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetBundleDTOsHistorical - BundleDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets BundleDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetBundlesHistorical operation
#
##############################################################################
print_sushiswapGetBundlesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetBundlesHistorical - Bundles (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetBurnDTOsHistorical operation
#
##############################################################################
print_sushiswapGetBurnDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetBurnDTOsHistorical - BurnDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets BurnDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetBurnsHistorical operation
#
##############################################################################
print_sushiswapGetBurnsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetBurnsHistorical - Burns (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetDayDataDTOsHistorical operation
#
##############################################################################
print_sushiswapGetDayDataDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetDayDataDTOsHistorical - DayDataDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets DayDataDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}sushiswapGetDayDataHistorical - DayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetFactoryDTOsHistorical operation
#
##############################################################################
print_sushiswapGetFactoryDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetFactoryDTOsHistorical - FactoryDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets FactoryDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetFactoryHistorical operation
#
##############################################################################
print_sushiswapGetFactoryHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetFactoryHistorical - Factory (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetHourDataDTOsHistorical operation
#
##############################################################################
print_sushiswapGetHourDataDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetHourDataDTOsHistorical - HourDataDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets HourDataDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetHourDataHistorical operation
#
##############################################################################
print_sushiswapGetHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetHourDataHistorical - HourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetLiquidityPositionDTOsHistorical operation
#
##############################################################################
print_sushiswapGetLiquidityPositionDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetLiquidityPositionDTOsHistorical - LiquidityPositionDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets LiquidityPositionDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetLiquidityPositionHistorical operation
#
##############################################################################
print_sushiswapGetLiquidityPositionHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetLiquidityPositionHistorical - LiquidityPosition (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetLiquidityPositionSnapshotDTOsHistorical operation
#
##############################################################################
print_sushiswapGetLiquidityPositionSnapshotDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetLiquidityPositionSnapshotDTOsHistorical - LiquidityPositionSnapshotDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets LiquidityPositionSnapshotDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}sushiswapGetLiquidityPositionSnapshotHistorical - LiquidityPositionSnapshot (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetMintDTOsHistorical operation
#
##############################################################################
print_sushiswapGetMintDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetMintDTOsHistorical - MintDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets MintDTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}sushiswapGetMintsHistorical - Mints (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetPairDTOsHistorical operation
#
##############################################################################
print_sushiswapGetPairDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPairDTOsHistorical - PairDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PairDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetPairDayDataDTOsHistorical operation
#
##############################################################################
print_sushiswapGetPairDayDataDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPairDayDataDTOsHistorical - PairDayDataDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PairDayDataDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetPairHourDataDTOsHistorical operation
#
##############################################################################
print_sushiswapGetPairHourDataDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPairHourDataDTOsHistorical - PairHourDataDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PairHourDataDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetPoolsDayDataHistorical operation
#
##############################################################################
print_sushiswapGetPoolsDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetPoolsDayDataHistorical - PoolsDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}sushiswapGetPoolsHistorical - Pools (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}sushiswapGetPoolsHourDataHistorical - PoolsHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetSwapDTOsHistorical operation
#
##############################################################################
print_sushiswapGetSwapDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetSwapDTOsHistorical - SwapDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets SwapDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetTokenDTOsHistorical operation
#
##############################################################################
print_sushiswapGetTokenDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTokenDTOsHistorical - TokenDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TokenDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetTokenDayDataDTOsHistorical operation
#
##############################################################################
print_sushiswapGetTokenDayDataDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTokenDayDataDTOsHistorical - TokenDayDataDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TokenDayDataDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetTokensDayDataHistorical operation
#
##############################################################################
print_sushiswapGetTokensDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTokensDayDataHistorical - TokensDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}sushiswapGetTokensHistorical - Tokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetTransactionDTOsHistorical operation
#
##############################################################################
print_sushiswapGetTransactionDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTransactionDTOsHistorical - TransactionDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TransactionDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetTransactionsHistorical operation
#
##############################################################################
print_sushiswapGetTransactionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetTransactionsHistorical - Transactions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for sushiswapGetUserDTOsHistorical operation
#
##############################################################################
print_sushiswapGetUserDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetUserDTOsHistorical - UserDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets UserDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for sushiswapGetUsersHistorical operation
#
##############################################################################
print_sushiswapGetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}sushiswapGetUsersHistorical - Users (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetBundleV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetBundleV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetBundleV2DTOsHistorical - BundleV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets BundleV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetBundlesHistorical operation
#
##############################################################################
print_uniswapV2GetBundlesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetBundlesHistorical - Bundles (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetBurnV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetBurnV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetBurnV2DTOsHistorical - BurnV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets BurnV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetBurnsHistorical operation
#
##############################################################################
print_uniswapV2GetBurnsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetBurnsHistorical - Burns (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV2GetDayDataHistorical - DayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV2GetFactoryHistorical - Factory (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical - LiquidityPositionSnapshotV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets LiquidityPositionSnapshotV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetLiquidityPositionV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetLiquidityPositionV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetLiquidityPositionV2DTOsHistorical - LiquidityPositionV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets LiquidityPositionV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetLiquidityPositionsHistorical operation
#
##############################################################################
print_uniswapV2GetLiquidityPositionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetLiquidityPositionsHistorical - LiquidityPositions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV2GetLiquidityPositionsSnapshotsHistorical - LiquidityPositionsSnapshots (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetMintV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetMintV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetMintV2DTOsHistorical - MintV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets MintV2DTOs." | paste -sd' ' | fold -sw 80
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
    echo -e "${BOLD}${WHITE}uniswapV2GetMintsHistorical - Mints (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetPairDayDataV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetPairDayDataV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPairDayDataV2DTOsHistorical - PairDayDataV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PairDayDataV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetPairHourDataV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetPairHourDataV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPairHourDataV2DTOsHistorical - PairHourDataV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PairHourDataV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetPairV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetPairV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPairV2DTOsHistorical - PairV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PairV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetPoolsDayDataHistorical operation
#
##############################################################################
print_uniswapV2GetPoolsDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetPoolsDayDataHistorical - PoolsDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV2GetPoolsHistorical - Pools (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV2GetPoolsHourDataHistorical - PoolsHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetSwapV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetSwapV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetSwapV2DTOsHistorical - SwapV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets SwapV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetSwapsHistorical operation
#
##############################################################################
print_uniswapV2GetSwapsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetSwapsHistorical - Swaps (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetTokenDayDataV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetTokenDayDataV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTokenDayDataV2DTOsHistorical - TokenDayDataV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TokenDayDataV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetTokenV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetTokenV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTokenV2DTOsHistorical - TokenV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TokenV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetTokensDayDataHistorical operation
#
##############################################################################
print_uniswapV2GetTokensDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTokensDayDataHistorical - TokensDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV2GetTokensHistorical - Tokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetTransactionV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetTransactionV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTransactionV2DTOsHistorical - TransactionV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TransactionV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetTransactionsHistorical operation
#
##############################################################################
print_uniswapV2GetTransactionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetTransactionsHistorical - Transactions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV2GetUniswapDayDataV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetUniswapDayDataV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUniswapDayDataV2DTOsHistorical - UniswapDayDataV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets UniswapDayDataV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetUniswapFactoryV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetUniswapFactoryV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUniswapFactoryV2DTOsHistorical - UniswapFactoryV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets UniswapFactoryV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetUserV2DTOsHistorical operation
#
##############################################################################
print_uniswapV2GetUserV2DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUserV2DTOsHistorical - UserV2DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets UserV2DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV2GetUsersHistorical operation
#
##############################################################################
print_uniswapV2GetUsersHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV2GetUsersHistorical - Users (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetBundleV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetBundleV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBundleV3DTOsHistorical - BundleV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets BundleV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetBundlesHistorical operation
#
##############################################################################
print_uniswapV3GetBundlesHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBundlesHistorical - Bundles (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetBurnV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetBurnV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBurnV3DTOsHistorical - BurnV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets BurnV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetBurnsHistorical operation
#
##############################################################################
print_uniswapV3GetBurnsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetBurnsHistorical - Burns (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetDayDataHistorical - DayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetFactoryHistorical operation
#
##############################################################################
print_uniswapV3GetFactoryHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetFactoryHistorical - Factory (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetFactoryV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetFactoryV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetFactoryV3DTOsHistorical - FactoryV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets FactoryV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetMintV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetMintV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetMintV3DTOsHistorical - MintV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets MintV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetMintsHistorical operation
#
##############################################################################
print_uniswapV3GetMintsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetMintsHistorical - Mints (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetPoolDayDataV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetPoolDayDataV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolDayDataV3DTOsHistorical - PoolDayDataV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PoolDayDataV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetPoolHourDataV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetPoolHourDataV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolHourDataV3DTOsHistorical - PoolHourDataV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PoolHourDataV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetPoolV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetPoolV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolV3DTOsHistorical - PoolV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PoolV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetPoolsDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetPoolsDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsDayDataHistorical - PoolsDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsHistorical - Pools (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetPoolsHourDataHistorical operation
#
##############################################################################
print_uniswapV3GetPoolsHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPoolsHourDataHistorical - PoolsHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetPositionSnapshotV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetPositionSnapshotV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionSnapshotV3DTOsHistorical - PositionSnapshotV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PositionSnapshotV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetPositionV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetPositionV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionV3DTOsHistorical - PositionV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets PositionV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetPositionsHistorical operation
#
##############################################################################
print_uniswapV3GetPositionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionsHistorical - Positions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV3GetPositionsSnaphotsHistorical - PositionsSnaphots (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetSwapV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetSwapV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetSwapV3DTOsHistorical - SwapV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets SwapV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetSwapsHistorical operation
#
##############################################################################
print_uniswapV3GetSwapsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetSwapsHistorical - Swaps (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetTickDayDataV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetTickDayDataV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTickDayDataV3DTOsHistorical - TickDayDataV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TickDayDataV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetTickV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetTickV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTickV3DTOsHistorical - TickV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TickV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetTicksDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetTicksDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTicksDayDataHistorical - TicksDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV3GetTicksHistorical - Ticks (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetTokenHourDataV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetTokenHourDataV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokenHourDataV3DTOsHistorical - TokenHourDataV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TokenHourDataV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetTokenV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetTokenV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokenV3DTOsHistorical - TokenV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TokenV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetTokenV3DayDataDTOsHistorical operation
#
##############################################################################
print_uniswapV3GetTokenV3DayDataDTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokenV3DayDataDTOsHistorical - TokenV3DayDataDTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TokenV3DayDataDTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetTokensDayDataHistorical operation
#
##############################################################################
print_uniswapV3GetTokensDayDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensDayDataHistorical - TokensDayData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensHistorical - Tokens (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetTokensHourDataHistorical operation
#
##############################################################################
print_uniswapV3GetTokensHourDataHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTokensHourDataHistorical - TokensHourData (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetTransactionV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetTransactionV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTransactionV3DTOsHistorical - TransactionV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets TransactionV3DTOs." | paste -sd' ' | fold -sw 80
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
# Print help for uniswapV3GetTransactionsHistorical operation
#
##############################################################################
print_uniswapV3GetTransactionsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetTransactionsHistorical - Transactions (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for uniswapV3GetUniswapDayDataV3DTOsHistorical operation
#
##############################################################################
print_uniswapV3GetUniswapDayDataV3DTOsHistorical_help() {
    echo ""
    echo -e "${BOLD}${WHITE}uniswapV3GetUniswapDayDataV3DTOsHistorical - UniswapDayDataV3DTOs (historical) 🔥${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Gets UniswapDayDataV3DTOs." | paste -sd' ' | fold -sw 80
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
# Call cowGetOrderDTOsHistorical operation
#
##############################################################################
call_cowGetOrderDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/cow/OrderDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call cowGetSettlementDTOsHistorical operation
#
##############################################################################
call_cowGetSettlementDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/cow/SettlementDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call cowGetTokenDTOsHistorical operation
#
##############################################################################
call_cowGetTokenDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/cow/TokenDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call cowGetTradeDTOsHistorical operation
#
##############################################################################
call_cowGetTradeDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/cow/TradeDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call cowGetUserDTOsHistorical operation
#
##############################################################################
call_cowGetUserDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/cow/UserDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetAccountDTOsHistorical operation
#
##############################################################################
call_curveGetAccountDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/AccountDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetAddLiquidityEventDTOsHistorical operation
#
##############################################################################
call_curveGetAddLiquidityEventDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/AddLiquidityEventDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetAdminFeeChangeLogDTOsHistorical operation
#
##############################################################################
call_curveGetAdminFeeChangeLogDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/AdminFeeChangeLogDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetAmplificationCoeffChangeLogDTOsHistorical operation
#
##############################################################################
call_curveGetAmplificationCoeffChangeLogDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/AmplificationCoeffChangeLogDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetCoinDTOsHistorical operation
#
##############################################################################
call_curveGetCoinDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/CoinDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetContractDTOsHistorical operation
#
##############################################################################
call_curveGetContractDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/ContractDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetContractVersionDTOsHistorical operation
#
##############################################################################
call_curveGetContractVersionDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/ContractVersionDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetDailyVolumeDTOsHistorical operation
#
##############################################################################
call_curveGetDailyVolumeDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/DailyVolumeDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetExchangeDTOsHistorical operation
#
##############################################################################
call_curveGetExchangeDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/ExchangeDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetFeeChangeLogDTOsHistorical operation
#
##############################################################################
call_curveGetFeeChangeLogDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/FeeChangeLogDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeDTOsHistorical operation
#
##############################################################################
call_curveGetGaugeDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/GaugeDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeDepositDTOsHistorical operation
#
##############################################################################
call_curveGetGaugeDepositDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/GaugeDepositDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeLiquidityDTOsHistorical operation
#
##############################################################################
call_curveGetGaugeLiquidityDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/GaugeLiquidityDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeTotalWeightDTOsHistorical operation
#
##############################################################################
call_curveGetGaugeTotalWeightDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/GaugeTotalWeightDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeTypeDTOsHistorical operation
#
##############################################################################
call_curveGetGaugeTypeDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/GaugeTypeDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeTypeWeightDTOsHistorical operation
#
##############################################################################
call_curveGetGaugeTypeWeightDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/GaugeTypeWeightDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeWeightDTOsHistorical operation
#
##############################################################################
call_curveGetGaugeWeightDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/GaugeWeightDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeWeightVoteDTOsHistorical operation
#
##############################################################################
call_curveGetGaugeWeightVoteDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/GaugeWeightVoteDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetGaugeWithdrawDTOsHistorical operation
#
##############################################################################
call_curveGetGaugeWithdrawDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/GaugeWithdrawDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetHourlyVolumeDTOsHistorical operation
#
##############################################################################
call_curveGetHourlyVolumeDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/HourlyVolumeDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetLpTokenDTOsHistorical operation
#
##############################################################################
call_curveGetLpTokenDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/LpTokenDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetPoolDTOsHistorical operation
#
##############################################################################
call_curveGetPoolDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/PoolDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetProposalDTOsHistorical operation
#
##############################################################################
call_curveGetProposalDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/ProposalDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetProposalVoteDTOsHistorical operation
#
##############################################################################
call_curveGetProposalVoteDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/ProposalVoteDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetRemoveLiquidityEventDTOsHistorical operation
#
##############################################################################
call_curveGetRemoveLiquidityEventDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/RemoveLiquidityEventDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetRemoveLiquidityOneEventDTOsHistorical operation
#
##############################################################################
call_curveGetRemoveLiquidityOneEventDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/RemoveLiquidityOneEventDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetSystemStateDTOsHistorical operation
#
##############################################################################
call_curveGetSystemStateDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/SystemStateDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetTokenDTOsHistorical operation
#
##############################################################################
call_curveGetTokenDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/TokenDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetTransferOwnershipEventDTOsHistorical operation
#
##############################################################################
call_curveGetTransferOwnershipEventDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/TransferOwnershipEventDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetUnderlyingCoinDTOsHistorical operation
#
##############################################################################
call_curveGetUnderlyingCoinDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/UnderlyingCoinDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetVotingAppDTOsHistorical operation
#
##############################################################################
call_curveGetVotingAppDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/VotingAppDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call curveGetWeeklyVolumeDTOsHistorical operation
#
##############################################################################
call_curveGetWeeklyVolumeDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/WeeklyVolumeDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetBatchDTOsHistorical operation
#
##############################################################################
call_dexGetBatchDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/BatchDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetDepositDTOsHistorical operation
#
##############################################################################
call_dexGetDepositDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/DepositDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetOrderDTOsHistorical operation
#
##############################################################################
call_dexGetOrderDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/OrderDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetPriceDTOsHistorical operation
#
##############################################################################
call_dexGetPriceDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/PriceDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetSolutionDTOsHistorical operation
#
##############################################################################
call_dexGetSolutionDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/SolutionDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetStatsDTOsHistorical operation
#
##############################################################################
call_dexGetStatsDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/StatsDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetTokenDTOsHistorical operation
#
##############################################################################
call_dexGetTokenDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/TokenDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetTradeDTOsHistorical operation
#
##############################################################################
call_dexGetTradeDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/TradeDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetUserDTOsHistorical operation
#
##############################################################################
call_dexGetUserDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/UserDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetWithdrawDTOsHistorical operation
#
##############################################################################
call_dexGetWithdrawDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/WithdrawDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call dexGetWithdrawRequestDTOsHistorical operation
#
##############################################################################
call_dexGetWithdrawRequestDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/dex/WithdrawRequestDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetBundleDTOsHistorical operation
#
##############################################################################
call_sushiswapGetBundleDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/BundleDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetBurnDTOsHistorical operation
#
##############################################################################
call_sushiswapGetBurnDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/BurnDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetDayDataDTOsHistorical operation
#
##############################################################################
call_sushiswapGetDayDataDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/DayDataDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetFactoryDTOsHistorical operation
#
##############################################################################
call_sushiswapGetFactoryDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/FactoryDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetHourDataDTOsHistorical operation
#
##############################################################################
call_sushiswapGetHourDataDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/HourDataDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetLiquidityPositionDTOsHistorical operation
#
##############################################################################
call_sushiswapGetLiquidityPositionDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/LiquidityPositionDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetLiquidityPositionSnapshotDTOsHistorical operation
#
##############################################################################
call_sushiswapGetLiquidityPositionSnapshotDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/LiquidityPositionSnapshotDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetMintDTOsHistorical operation
#
##############################################################################
call_sushiswapGetMintDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/MintDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetPairDTOsHistorical operation
#
##############################################################################
call_sushiswapGetPairDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/PairDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetPairDayDataDTOsHistorical operation
#
##############################################################################
call_sushiswapGetPairDayDataDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/PairDayDataDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetPairHourDataDTOsHistorical operation
#
##############################################################################
call_sushiswapGetPairHourDataDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/PairHourDataDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetSwapDTOsHistorical operation
#
##############################################################################
call_sushiswapGetSwapDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/SwapDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetTokenDTOsHistorical operation
#
##############################################################################
call_sushiswapGetTokenDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/TokenDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetTokenDayDataDTOsHistorical operation
#
##############################################################################
call_sushiswapGetTokenDayDataDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/TokenDayDataDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetTransactionDTOsHistorical operation
#
##############################################################################
call_sushiswapGetTransactionDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/TransactionDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call sushiswapGetUserDTOsHistorical operation
#
##############################################################################
call_sushiswapGetUserDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/UserDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetBundleV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetBundleV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/BundleV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetBurnV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetBurnV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/BurnV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/LiquidityPositionSnapshotV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetLiquidityPositionV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetLiquidityPositionV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/LiquidityPositionV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetMintV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetMintV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/MintV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetPairDayDataV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetPairDayDataV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/PairDayDataV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetPairHourDataV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetPairHourDataV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/PairHourDataV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetPairV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetPairV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/PairV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetSwapV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetSwapV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/SwapV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetTokenDayDataV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetTokenDayDataV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/TokenDayDataV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetTokenV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetTokenV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/TokenV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetTransactionV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetTransactionV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/TransactionV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetUniswapDayDataV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetUniswapDayDataV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/UniswapDayDataV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetUniswapFactoryV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetUniswapFactoryV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/UniswapFactoryV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV2GetUserV2DTOsHistorical operation
#
##############################################################################
call_uniswapV2GetUserV2DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/UserV2DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetBundleV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetBundleV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/BundleV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetBurnV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetBurnV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/BurnV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetFactoryV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetFactoryV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/FactoryV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetMintV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetMintV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/MintV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPoolDayDataV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetPoolDayDataV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/PoolDayDataV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPoolHourDataV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetPoolHourDataV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/PoolHourDataV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPoolV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetPoolV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/PoolV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPositionSnapshotV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetPositionSnapshotV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/PositionSnapshotV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetPositionV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetPositionV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/PositionV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetSwapV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetSwapV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/SwapV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTickDayDataV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetTickDayDataV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/TickDayDataV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTickV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetTickV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/TickV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTokenHourDataV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetTokenHourDataV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/TokenHourDataV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTokenV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetTokenV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/TokenV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTokenV3DayDataDTOsHistorical operation
#
##############################################################################
call_uniswapV3GetTokenV3DayDataDTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/TokenV3DayDataDTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetTransactionV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetTransactionV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/TransactionV3DTOs/historical" path_parameter_names query_parameter_names); then
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
# Call uniswapV3GetUniswapDayDataV3DTOsHistorical operation
#
##############################################################################
call_uniswapV3GetUniswapDayDataV3DTOsHistorical() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/UniswapDayDataV3DTOs/historical" path_parameter_names query_parameter_names); then
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
    cowGetOrderDTOsHistorical)
    operation="cowGetOrderDTOsHistorical"
    ;;
    cowGetOrdersHistorical)
    operation="cowGetOrdersHistorical"
    ;;
    cowGetSettlementDTOsHistorical)
    operation="cowGetSettlementDTOsHistorical"
    ;;
    cowGetSettlementsHistorical)
    operation="cowGetSettlementsHistorical"
    ;;
    cowGetTokenDTOsHistorical)
    operation="cowGetTokenDTOsHistorical"
    ;;
    cowGetTokensHistorical)
    operation="cowGetTokensHistorical"
    ;;
    cowGetTradeDTOsHistorical)
    operation="cowGetTradeDTOsHistorical"
    ;;
    cowGetTradesHistorical)
    operation="cowGetTradesHistorical"
    ;;
    cowGetUserDTOsHistorical)
    operation="cowGetUserDTOsHistorical"
    ;;
    cowGetUsersHistorical)
    operation="cowGetUsersHistorical"
    ;;
    curveGetAccountDTOsHistorical)
    operation="curveGetAccountDTOsHistorical"
    ;;
    curveGetAccountsHistorical)
    operation="curveGetAccountsHistorical"
    ;;
    curveGetAddLiquidityEventDTOsHistorical)
    operation="curveGetAddLiquidityEventDTOsHistorical"
    ;;
    curveGetAddLiquidityEventsHistorical)
    operation="curveGetAddLiquidityEventsHistorical"
    ;;
    curveGetAdminFeeChangeLogDTOsHistorical)
    operation="curveGetAdminFeeChangeLogDTOsHistorical"
    ;;
    curveGetAdminFeeChangeLogsHistorical)
    operation="curveGetAdminFeeChangeLogsHistorical"
    ;;
    curveGetAmplificationCoeffChangeLogDTOsHistorical)
    operation="curveGetAmplificationCoeffChangeLogDTOsHistorical"
    ;;
    curveGetAmplificationCoeffChangeLogsHistorical)
    operation="curveGetAmplificationCoeffChangeLogsHistorical"
    ;;
    curveGetCoinDTOsHistorical)
    operation="curveGetCoinDTOsHistorical"
    ;;
    curveGetCoinsHistorical)
    operation="curveGetCoinsHistorical"
    ;;
    curveGetContractDTOsHistorical)
    operation="curveGetContractDTOsHistorical"
    ;;
    curveGetContractVersionDTOsHistorical)
    operation="curveGetContractVersionDTOsHistorical"
    ;;
    curveGetContractsHistorical)
    operation="curveGetContractsHistorical"
    ;;
    curveGetContractsVersionsHistorical)
    operation="curveGetContractsVersionsHistorical"
    ;;
    curveGetDailyVolumeDTOsHistorical)
    operation="curveGetDailyVolumeDTOsHistorical"
    ;;
    curveGetDailyVolumesHistorical)
    operation="curveGetDailyVolumesHistorical"
    ;;
    curveGetExchangeDTOsHistorical)
    operation="curveGetExchangeDTOsHistorical"
    ;;
    curveGetExchangesHistorical)
    operation="curveGetExchangesHistorical"
    ;;
    curveGetFeeChangeLogDTOsHistorical)
    operation="curveGetFeeChangeLogDTOsHistorical"
    ;;
    curveGetFeeChangeLogsHistorical)
    operation="curveGetFeeChangeLogsHistorical"
    ;;
    curveGetGaugeDTOsHistorical)
    operation="curveGetGaugeDTOsHistorical"
    ;;
    curveGetGaugeDepositDTOsHistorical)
    operation="curveGetGaugeDepositDTOsHistorical"
    ;;
    curveGetGaugeLiquidityDTOsHistorical)
    operation="curveGetGaugeLiquidityDTOsHistorical"
    ;;
    curveGetGaugeTotalWeightDTOsHistorical)
    operation="curveGetGaugeTotalWeightDTOsHistorical"
    ;;
    curveGetGaugeTypeDTOsHistorical)
    operation="curveGetGaugeTypeDTOsHistorical"
    ;;
    curveGetGaugeTypeWeightDTOsHistorical)
    operation="curveGetGaugeTypeWeightDTOsHistorical"
    ;;
    curveGetGaugeWeightDTOsHistorical)
    operation="curveGetGaugeWeightDTOsHistorical"
    ;;
    curveGetGaugeWeightVoteDTOsHistorical)
    operation="curveGetGaugeWeightVoteDTOsHistorical"
    ;;
    curveGetGaugeWithdrawDTOsHistorical)
    operation="curveGetGaugeWithdrawDTOsHistorical"
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
    curveGetHourlyVolumeDTOsHistorical)
    operation="curveGetHourlyVolumeDTOsHistorical"
    ;;
    curveGetHourlyVolumesHistorical)
    operation="curveGetHourlyVolumesHistorical"
    ;;
    curveGetLpTokenDTOsHistorical)
    operation="curveGetLpTokenDTOsHistorical"
    ;;
    curveGetLpTokensHistorical)
    operation="curveGetLpTokensHistorical"
    ;;
    curveGetPoolDTOsHistorical)
    operation="curveGetPoolDTOsHistorical"
    ;;
    curveGetPoolsHistorical)
    operation="curveGetPoolsHistorical"
    ;;
    curveGetProposalDTOsHistorical)
    operation="curveGetProposalDTOsHistorical"
    ;;
    curveGetProposalVoteDTOsHistorical)
    operation="curveGetProposalVoteDTOsHistorical"
    ;;
    curveGetProposalsHistorical)
    operation="curveGetProposalsHistorical"
    ;;
    curveGetProposalsVotesHistorical)
    operation="curveGetProposalsVotesHistorical"
    ;;
    curveGetRemoveLiquidityEventDTOsHistorical)
    operation="curveGetRemoveLiquidityEventDTOsHistorical"
    ;;
    curveGetRemoveLiquidityEventsHistorical)
    operation="curveGetRemoveLiquidityEventsHistorical"
    ;;
    curveGetRemoveLiquidityOneEventDTOsHistorical)
    operation="curveGetRemoveLiquidityOneEventDTOsHistorical"
    ;;
    curveGetRemoveLiquidityOneEventsHistorical)
    operation="curveGetRemoveLiquidityOneEventsHistorical"
    ;;
    curveGetSystemStateDTOsHistorical)
    operation="curveGetSystemStateDTOsHistorical"
    ;;
    curveGetSystemStatesHistorical)
    operation="curveGetSystemStatesHistorical"
    ;;
    curveGetTokenDTOsHistorical)
    operation="curveGetTokenDTOsHistorical"
    ;;
    curveGetTokensHistorical)
    operation="curveGetTokensHistorical"
    ;;
    curveGetTransferOwnershipEventDTOsHistorical)
    operation="curveGetTransferOwnershipEventDTOsHistorical"
    ;;
    curveGetTransferOwnershipEventsHistorical)
    operation="curveGetTransferOwnershipEventsHistorical"
    ;;
    curveGetUnderlyingCoinDTOsHistorical)
    operation="curveGetUnderlyingCoinDTOsHistorical"
    ;;
    curveGetUnderlyingCoinsHistorical)
    operation="curveGetUnderlyingCoinsHistorical"
    ;;
    curveGetVotingAppDTOsHistorical)
    operation="curveGetVotingAppDTOsHistorical"
    ;;
    curveGetVotingAppsHistorical)
    operation="curveGetVotingAppsHistorical"
    ;;
    curveGetWeeklyVolumeDTOsHistorical)
    operation="curveGetWeeklyVolumeDTOsHistorical"
    ;;
    curveGetWeeklyVolumesHistorical)
    operation="curveGetWeeklyVolumesHistorical"
    ;;
    dexGetBatchDTOsHistorical)
    operation="dexGetBatchDTOsHistorical"
    ;;
    dexGetBatchesHistorical)
    operation="dexGetBatchesHistorical"
    ;;
    dexGetDepositDTOsHistorical)
    operation="dexGetDepositDTOsHistorical"
    ;;
    dexGetDepositsHistorical)
    operation="dexGetDepositsHistorical"
    ;;
    dexGetOrderDTOsHistorical)
    operation="dexGetOrderDTOsHistorical"
    ;;
    dexGetOrdersHistorical)
    operation="dexGetOrdersHistorical"
    ;;
    dexGetPriceDTOsHistorical)
    operation="dexGetPriceDTOsHistorical"
    ;;
    dexGetPricesHistorical)
    operation="dexGetPricesHistorical"
    ;;
    dexGetSolutionDTOsHistorical)
    operation="dexGetSolutionDTOsHistorical"
    ;;
    dexGetSolutionsHistorical)
    operation="dexGetSolutionsHistorical"
    ;;
    dexGetStatsDTOsHistorical)
    operation="dexGetStatsDTOsHistorical"
    ;;
    dexGetStatsHistorical)
    operation="dexGetStatsHistorical"
    ;;
    dexGetTokenDTOsHistorical)
    operation="dexGetTokenDTOsHistorical"
    ;;
    dexGetTokensHistorical)
    operation="dexGetTokensHistorical"
    ;;
    dexGetTradeDTOsHistorical)
    operation="dexGetTradeDTOsHistorical"
    ;;
    dexGetTradesHistorical)
    operation="dexGetTradesHistorical"
    ;;
    dexGetUserDTOsHistorical)
    operation="dexGetUserDTOsHistorical"
    ;;
    dexGetUsersHistorical)
    operation="dexGetUsersHistorical"
    ;;
    dexGetWithdrawDTOsHistorical)
    operation="dexGetWithdrawDTOsHistorical"
    ;;
    dexGetWithdrawRequestDTOsHistorical)
    operation="dexGetWithdrawRequestDTOsHistorical"
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
    sushiswapGetBundleDTOsHistorical)
    operation="sushiswapGetBundleDTOsHistorical"
    ;;
    sushiswapGetBundlesHistorical)
    operation="sushiswapGetBundlesHistorical"
    ;;
    sushiswapGetBurnDTOsHistorical)
    operation="sushiswapGetBurnDTOsHistorical"
    ;;
    sushiswapGetBurnsHistorical)
    operation="sushiswapGetBurnsHistorical"
    ;;
    sushiswapGetDayDataDTOsHistorical)
    operation="sushiswapGetDayDataDTOsHistorical"
    ;;
    sushiswapGetDayDataHistorical)
    operation="sushiswapGetDayDataHistorical"
    ;;
    sushiswapGetFactoryDTOsHistorical)
    operation="sushiswapGetFactoryDTOsHistorical"
    ;;
    sushiswapGetFactoryHistorical)
    operation="sushiswapGetFactoryHistorical"
    ;;
    sushiswapGetHourDataDTOsHistorical)
    operation="sushiswapGetHourDataDTOsHistorical"
    ;;
    sushiswapGetHourDataHistorical)
    operation="sushiswapGetHourDataHistorical"
    ;;
    sushiswapGetLiquidityPositionDTOsHistorical)
    operation="sushiswapGetLiquidityPositionDTOsHistorical"
    ;;
    sushiswapGetLiquidityPositionHistorical)
    operation="sushiswapGetLiquidityPositionHistorical"
    ;;
    sushiswapGetLiquidityPositionSnapshotDTOsHistorical)
    operation="sushiswapGetLiquidityPositionSnapshotDTOsHistorical"
    ;;
    sushiswapGetLiquidityPositionSnapshotHistorical)
    operation="sushiswapGetLiquidityPositionSnapshotHistorical"
    ;;
    sushiswapGetMintDTOsHistorical)
    operation="sushiswapGetMintDTOsHistorical"
    ;;
    sushiswapGetMintsHistorical)
    operation="sushiswapGetMintsHistorical"
    ;;
    sushiswapGetPairDTOsHistorical)
    operation="sushiswapGetPairDTOsHistorical"
    ;;
    sushiswapGetPairDayDataDTOsHistorical)
    operation="sushiswapGetPairDayDataDTOsHistorical"
    ;;
    sushiswapGetPairHourDataDTOsHistorical)
    operation="sushiswapGetPairHourDataDTOsHistorical"
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
    sushiswapGetSwapDTOsHistorical)
    operation="sushiswapGetSwapDTOsHistorical"
    ;;
    sushiswapGetSwapsCurrent)
    operation="sushiswapGetSwapsCurrent"
    ;;
    sushiswapGetSwapsHistorical)
    operation="sushiswapGetSwapsHistorical"
    ;;
    sushiswapGetTokenDTOsHistorical)
    operation="sushiswapGetTokenDTOsHistorical"
    ;;
    sushiswapGetTokenDayDataDTOsHistorical)
    operation="sushiswapGetTokenDayDataDTOsHistorical"
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
    sushiswapGetTransactionDTOsHistorical)
    operation="sushiswapGetTransactionDTOsHistorical"
    ;;
    sushiswapGetTransactionsHistorical)
    operation="sushiswapGetTransactionsHistorical"
    ;;
    sushiswapGetUserDTOsHistorical)
    operation="sushiswapGetUserDTOsHistorical"
    ;;
    sushiswapGetUsersHistorical)
    operation="sushiswapGetUsersHistorical"
    ;;
    uniswapV2GetBundleV2DTOsHistorical)
    operation="uniswapV2GetBundleV2DTOsHistorical"
    ;;
    uniswapV2GetBundlesHistorical)
    operation="uniswapV2GetBundlesHistorical"
    ;;
    uniswapV2GetBurnV2DTOsHistorical)
    operation="uniswapV2GetBurnV2DTOsHistorical"
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
    uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical)
    operation="uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical"
    ;;
    uniswapV2GetLiquidityPositionV2DTOsHistorical)
    operation="uniswapV2GetLiquidityPositionV2DTOsHistorical"
    ;;
    uniswapV2GetLiquidityPositionsHistorical)
    operation="uniswapV2GetLiquidityPositionsHistorical"
    ;;
    uniswapV2GetLiquidityPositionsSnapshotsHistorical)
    operation="uniswapV2GetLiquidityPositionsSnapshotsHistorical"
    ;;
    uniswapV2GetMintV2DTOsHistorical)
    operation="uniswapV2GetMintV2DTOsHistorical"
    ;;
    uniswapV2GetMintsHistorical)
    operation="uniswapV2GetMintsHistorical"
    ;;
    uniswapV2GetPairDayDataV2DTOsHistorical)
    operation="uniswapV2GetPairDayDataV2DTOsHistorical"
    ;;
    uniswapV2GetPairHourDataV2DTOsHistorical)
    operation="uniswapV2GetPairHourDataV2DTOsHistorical"
    ;;
    uniswapV2GetPairV2DTOsHistorical)
    operation="uniswapV2GetPairV2DTOsHistorical"
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
    uniswapV2GetSwapV2DTOsHistorical)
    operation="uniswapV2GetSwapV2DTOsHistorical"
    ;;
    uniswapV2GetSwapsCurrent)
    operation="uniswapV2GetSwapsCurrent"
    ;;
    uniswapV2GetSwapsHistorical)
    operation="uniswapV2GetSwapsHistorical"
    ;;
    uniswapV2GetTokenDayDataV2DTOsHistorical)
    operation="uniswapV2GetTokenDayDataV2DTOsHistorical"
    ;;
    uniswapV2GetTokenV2DTOsHistorical)
    operation="uniswapV2GetTokenV2DTOsHistorical"
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
    uniswapV2GetTransactionV2DTOsHistorical)
    operation="uniswapV2GetTransactionV2DTOsHistorical"
    ;;
    uniswapV2GetTransactionsHistorical)
    operation="uniswapV2GetTransactionsHistorical"
    ;;
    uniswapV2GetUniswapDayDataV2DTOsHistorical)
    operation="uniswapV2GetUniswapDayDataV2DTOsHistorical"
    ;;
    uniswapV2GetUniswapFactoryV2DTOsHistorical)
    operation="uniswapV2GetUniswapFactoryV2DTOsHistorical"
    ;;
    uniswapV2GetUserV2DTOsHistorical)
    operation="uniswapV2GetUserV2DTOsHistorical"
    ;;
    uniswapV2GetUsersHistorical)
    operation="uniswapV2GetUsersHistorical"
    ;;
    uniswapV3GetBundleV3DTOsHistorical)
    operation="uniswapV3GetBundleV3DTOsHistorical"
    ;;
    uniswapV3GetBundlesCurrent)
    operation="uniswapV3GetBundlesCurrent"
    ;;
    uniswapV3GetBundlesHistorical)
    operation="uniswapV3GetBundlesHistorical"
    ;;
    uniswapV3GetBurnV3DTOsHistorical)
    operation="uniswapV3GetBurnV3DTOsHistorical"
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
    uniswapV3GetFactoryV3DTOsHistorical)
    operation="uniswapV3GetFactoryV3DTOsHistorical"
    ;;
    uniswapV3GetMintV3DTOsHistorical)
    operation="uniswapV3GetMintV3DTOsHistorical"
    ;;
    uniswapV3GetMintsCurrent)
    operation="uniswapV3GetMintsCurrent"
    ;;
    uniswapV3GetMintsHistorical)
    operation="uniswapV3GetMintsHistorical"
    ;;
    uniswapV3GetPoolDayDataV3DTOsHistorical)
    operation="uniswapV3GetPoolDayDataV3DTOsHistorical"
    ;;
    uniswapV3GetPoolHourDataV3DTOsHistorical)
    operation="uniswapV3GetPoolHourDataV3DTOsHistorical"
    ;;
    uniswapV3GetPoolV3DTOsHistorical)
    operation="uniswapV3GetPoolV3DTOsHistorical"
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
    uniswapV3GetPositionSnapshotV3DTOsHistorical)
    operation="uniswapV3GetPositionSnapshotV3DTOsHistorical"
    ;;
    uniswapV3GetPositionV3DTOsHistorical)
    operation="uniswapV3GetPositionV3DTOsHistorical"
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
    uniswapV3GetSwapV3DTOsHistorical)
    operation="uniswapV3GetSwapV3DTOsHistorical"
    ;;
    uniswapV3GetSwapsCurrent)
    operation="uniswapV3GetSwapsCurrent"
    ;;
    uniswapV3GetSwapsHistorical)
    operation="uniswapV3GetSwapsHistorical"
    ;;
    uniswapV3GetTickDayDataV3DTOsHistorical)
    operation="uniswapV3GetTickDayDataV3DTOsHistorical"
    ;;
    uniswapV3GetTickV3DTOsHistorical)
    operation="uniswapV3GetTickV3DTOsHistorical"
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
    uniswapV3GetTokenHourDataV3DTOsHistorical)
    operation="uniswapV3GetTokenHourDataV3DTOsHistorical"
    ;;
    uniswapV3GetTokenV3DTOsHistorical)
    operation="uniswapV3GetTokenV3DTOsHistorical"
    ;;
    uniswapV3GetTokenV3DayDataDTOsHistorical)
    operation="uniswapV3GetTokenV3DayDataDTOsHistorical"
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
    uniswapV3GetTransactionV3DTOsHistorical)
    operation="uniswapV3GetTransactionV3DTOsHistorical"
    ;;
    uniswapV3GetTransactionsHistorical)
    operation="uniswapV3GetTransactionsHistorical"
    ;;
    uniswapV3GetUniswapDayDataV3DTOsHistorical)
    operation="uniswapV3GetUniswapDayDataV3DTOsHistorical"
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
    cowGetOrderDTOsHistorical)
    call_cowGetOrderDTOsHistorical
    ;;
    cowGetOrdersHistorical)
    call_cowGetOrdersHistorical
    ;;
    cowGetSettlementDTOsHistorical)
    call_cowGetSettlementDTOsHistorical
    ;;
    cowGetSettlementsHistorical)
    call_cowGetSettlementsHistorical
    ;;
    cowGetTokenDTOsHistorical)
    call_cowGetTokenDTOsHistorical
    ;;
    cowGetTokensHistorical)
    call_cowGetTokensHistorical
    ;;
    cowGetTradeDTOsHistorical)
    call_cowGetTradeDTOsHistorical
    ;;
    cowGetTradesHistorical)
    call_cowGetTradesHistorical
    ;;
    cowGetUserDTOsHistorical)
    call_cowGetUserDTOsHistorical
    ;;
    cowGetUsersHistorical)
    call_cowGetUsersHistorical
    ;;
    curveGetAccountDTOsHistorical)
    call_curveGetAccountDTOsHistorical
    ;;
    curveGetAccountsHistorical)
    call_curveGetAccountsHistorical
    ;;
    curveGetAddLiquidityEventDTOsHistorical)
    call_curveGetAddLiquidityEventDTOsHistorical
    ;;
    curveGetAddLiquidityEventsHistorical)
    call_curveGetAddLiquidityEventsHistorical
    ;;
    curveGetAdminFeeChangeLogDTOsHistorical)
    call_curveGetAdminFeeChangeLogDTOsHistorical
    ;;
    curveGetAdminFeeChangeLogsHistorical)
    call_curveGetAdminFeeChangeLogsHistorical
    ;;
    curveGetAmplificationCoeffChangeLogDTOsHistorical)
    call_curveGetAmplificationCoeffChangeLogDTOsHistorical
    ;;
    curveGetAmplificationCoeffChangeLogsHistorical)
    call_curveGetAmplificationCoeffChangeLogsHistorical
    ;;
    curveGetCoinDTOsHistorical)
    call_curveGetCoinDTOsHistorical
    ;;
    curveGetCoinsHistorical)
    call_curveGetCoinsHistorical
    ;;
    curveGetContractDTOsHistorical)
    call_curveGetContractDTOsHistorical
    ;;
    curveGetContractVersionDTOsHistorical)
    call_curveGetContractVersionDTOsHistorical
    ;;
    curveGetContractsHistorical)
    call_curveGetContractsHistorical
    ;;
    curveGetContractsVersionsHistorical)
    call_curveGetContractsVersionsHistorical
    ;;
    curveGetDailyVolumeDTOsHistorical)
    call_curveGetDailyVolumeDTOsHistorical
    ;;
    curveGetDailyVolumesHistorical)
    call_curveGetDailyVolumesHistorical
    ;;
    curveGetExchangeDTOsHistorical)
    call_curveGetExchangeDTOsHistorical
    ;;
    curveGetExchangesHistorical)
    call_curveGetExchangesHistorical
    ;;
    curveGetFeeChangeLogDTOsHistorical)
    call_curveGetFeeChangeLogDTOsHistorical
    ;;
    curveGetFeeChangeLogsHistorical)
    call_curveGetFeeChangeLogsHistorical
    ;;
    curveGetGaugeDTOsHistorical)
    call_curveGetGaugeDTOsHistorical
    ;;
    curveGetGaugeDepositDTOsHistorical)
    call_curveGetGaugeDepositDTOsHistorical
    ;;
    curveGetGaugeLiquidityDTOsHistorical)
    call_curveGetGaugeLiquidityDTOsHistorical
    ;;
    curveGetGaugeTotalWeightDTOsHistorical)
    call_curveGetGaugeTotalWeightDTOsHistorical
    ;;
    curveGetGaugeTypeDTOsHistorical)
    call_curveGetGaugeTypeDTOsHistorical
    ;;
    curveGetGaugeTypeWeightDTOsHistorical)
    call_curveGetGaugeTypeWeightDTOsHistorical
    ;;
    curveGetGaugeWeightDTOsHistorical)
    call_curveGetGaugeWeightDTOsHistorical
    ;;
    curveGetGaugeWeightVoteDTOsHistorical)
    call_curveGetGaugeWeightVoteDTOsHistorical
    ;;
    curveGetGaugeWithdrawDTOsHistorical)
    call_curveGetGaugeWithdrawDTOsHistorical
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
    curveGetHourlyVolumeDTOsHistorical)
    call_curveGetHourlyVolumeDTOsHistorical
    ;;
    curveGetHourlyVolumesHistorical)
    call_curveGetHourlyVolumesHistorical
    ;;
    curveGetLpTokenDTOsHistorical)
    call_curveGetLpTokenDTOsHistorical
    ;;
    curveGetLpTokensHistorical)
    call_curveGetLpTokensHistorical
    ;;
    curveGetPoolDTOsHistorical)
    call_curveGetPoolDTOsHistorical
    ;;
    curveGetPoolsHistorical)
    call_curveGetPoolsHistorical
    ;;
    curveGetProposalDTOsHistorical)
    call_curveGetProposalDTOsHistorical
    ;;
    curveGetProposalVoteDTOsHistorical)
    call_curveGetProposalVoteDTOsHistorical
    ;;
    curveGetProposalsHistorical)
    call_curveGetProposalsHistorical
    ;;
    curveGetProposalsVotesHistorical)
    call_curveGetProposalsVotesHistorical
    ;;
    curveGetRemoveLiquidityEventDTOsHistorical)
    call_curveGetRemoveLiquidityEventDTOsHistorical
    ;;
    curveGetRemoveLiquidityEventsHistorical)
    call_curveGetRemoveLiquidityEventsHistorical
    ;;
    curveGetRemoveLiquidityOneEventDTOsHistorical)
    call_curveGetRemoveLiquidityOneEventDTOsHistorical
    ;;
    curveGetRemoveLiquidityOneEventsHistorical)
    call_curveGetRemoveLiquidityOneEventsHistorical
    ;;
    curveGetSystemStateDTOsHistorical)
    call_curveGetSystemStateDTOsHistorical
    ;;
    curveGetSystemStatesHistorical)
    call_curveGetSystemStatesHistorical
    ;;
    curveGetTokenDTOsHistorical)
    call_curveGetTokenDTOsHistorical
    ;;
    curveGetTokensHistorical)
    call_curveGetTokensHistorical
    ;;
    curveGetTransferOwnershipEventDTOsHistorical)
    call_curveGetTransferOwnershipEventDTOsHistorical
    ;;
    curveGetTransferOwnershipEventsHistorical)
    call_curveGetTransferOwnershipEventsHistorical
    ;;
    curveGetUnderlyingCoinDTOsHistorical)
    call_curveGetUnderlyingCoinDTOsHistorical
    ;;
    curveGetUnderlyingCoinsHistorical)
    call_curveGetUnderlyingCoinsHistorical
    ;;
    curveGetVotingAppDTOsHistorical)
    call_curveGetVotingAppDTOsHistorical
    ;;
    curveGetVotingAppsHistorical)
    call_curveGetVotingAppsHistorical
    ;;
    curveGetWeeklyVolumeDTOsHistorical)
    call_curveGetWeeklyVolumeDTOsHistorical
    ;;
    curveGetWeeklyVolumesHistorical)
    call_curveGetWeeklyVolumesHistorical
    ;;
    dexGetBatchDTOsHistorical)
    call_dexGetBatchDTOsHistorical
    ;;
    dexGetBatchesHistorical)
    call_dexGetBatchesHistorical
    ;;
    dexGetDepositDTOsHistorical)
    call_dexGetDepositDTOsHistorical
    ;;
    dexGetDepositsHistorical)
    call_dexGetDepositsHistorical
    ;;
    dexGetOrderDTOsHistorical)
    call_dexGetOrderDTOsHistorical
    ;;
    dexGetOrdersHistorical)
    call_dexGetOrdersHistorical
    ;;
    dexGetPriceDTOsHistorical)
    call_dexGetPriceDTOsHistorical
    ;;
    dexGetPricesHistorical)
    call_dexGetPricesHistorical
    ;;
    dexGetSolutionDTOsHistorical)
    call_dexGetSolutionDTOsHistorical
    ;;
    dexGetSolutionsHistorical)
    call_dexGetSolutionsHistorical
    ;;
    dexGetStatsDTOsHistorical)
    call_dexGetStatsDTOsHistorical
    ;;
    dexGetStatsHistorical)
    call_dexGetStatsHistorical
    ;;
    dexGetTokenDTOsHistorical)
    call_dexGetTokenDTOsHistorical
    ;;
    dexGetTokensHistorical)
    call_dexGetTokensHistorical
    ;;
    dexGetTradeDTOsHistorical)
    call_dexGetTradeDTOsHistorical
    ;;
    dexGetTradesHistorical)
    call_dexGetTradesHistorical
    ;;
    dexGetUserDTOsHistorical)
    call_dexGetUserDTOsHistorical
    ;;
    dexGetUsersHistorical)
    call_dexGetUsersHistorical
    ;;
    dexGetWithdrawDTOsHistorical)
    call_dexGetWithdrawDTOsHistorical
    ;;
    dexGetWithdrawRequestDTOsHistorical)
    call_dexGetWithdrawRequestDTOsHistorical
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
    sushiswapGetBundleDTOsHistorical)
    call_sushiswapGetBundleDTOsHistorical
    ;;
    sushiswapGetBundlesHistorical)
    call_sushiswapGetBundlesHistorical
    ;;
    sushiswapGetBurnDTOsHistorical)
    call_sushiswapGetBurnDTOsHistorical
    ;;
    sushiswapGetBurnsHistorical)
    call_sushiswapGetBurnsHistorical
    ;;
    sushiswapGetDayDataDTOsHistorical)
    call_sushiswapGetDayDataDTOsHistorical
    ;;
    sushiswapGetDayDataHistorical)
    call_sushiswapGetDayDataHistorical
    ;;
    sushiswapGetFactoryDTOsHistorical)
    call_sushiswapGetFactoryDTOsHistorical
    ;;
    sushiswapGetFactoryHistorical)
    call_sushiswapGetFactoryHistorical
    ;;
    sushiswapGetHourDataDTOsHistorical)
    call_sushiswapGetHourDataDTOsHistorical
    ;;
    sushiswapGetHourDataHistorical)
    call_sushiswapGetHourDataHistorical
    ;;
    sushiswapGetLiquidityPositionDTOsHistorical)
    call_sushiswapGetLiquidityPositionDTOsHistorical
    ;;
    sushiswapGetLiquidityPositionHistorical)
    call_sushiswapGetLiquidityPositionHistorical
    ;;
    sushiswapGetLiquidityPositionSnapshotDTOsHistorical)
    call_sushiswapGetLiquidityPositionSnapshotDTOsHistorical
    ;;
    sushiswapGetLiquidityPositionSnapshotHistorical)
    call_sushiswapGetLiquidityPositionSnapshotHistorical
    ;;
    sushiswapGetMintDTOsHistorical)
    call_sushiswapGetMintDTOsHistorical
    ;;
    sushiswapGetMintsHistorical)
    call_sushiswapGetMintsHistorical
    ;;
    sushiswapGetPairDTOsHistorical)
    call_sushiswapGetPairDTOsHistorical
    ;;
    sushiswapGetPairDayDataDTOsHistorical)
    call_sushiswapGetPairDayDataDTOsHistorical
    ;;
    sushiswapGetPairHourDataDTOsHistorical)
    call_sushiswapGetPairHourDataDTOsHistorical
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
    sushiswapGetSwapDTOsHistorical)
    call_sushiswapGetSwapDTOsHistorical
    ;;
    sushiswapGetSwapsCurrent)
    call_sushiswapGetSwapsCurrent
    ;;
    sushiswapGetSwapsHistorical)
    call_sushiswapGetSwapsHistorical
    ;;
    sushiswapGetTokenDTOsHistorical)
    call_sushiswapGetTokenDTOsHistorical
    ;;
    sushiswapGetTokenDayDataDTOsHistorical)
    call_sushiswapGetTokenDayDataDTOsHistorical
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
    sushiswapGetTransactionDTOsHistorical)
    call_sushiswapGetTransactionDTOsHistorical
    ;;
    sushiswapGetTransactionsHistorical)
    call_sushiswapGetTransactionsHistorical
    ;;
    sushiswapGetUserDTOsHistorical)
    call_sushiswapGetUserDTOsHistorical
    ;;
    sushiswapGetUsersHistorical)
    call_sushiswapGetUsersHistorical
    ;;
    uniswapV2GetBundleV2DTOsHistorical)
    call_uniswapV2GetBundleV2DTOsHistorical
    ;;
    uniswapV2GetBundlesHistorical)
    call_uniswapV2GetBundlesHistorical
    ;;
    uniswapV2GetBurnV2DTOsHistorical)
    call_uniswapV2GetBurnV2DTOsHistorical
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
    uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical)
    call_uniswapV2GetLiquidityPositionSnapshotV2DTOsHistorical
    ;;
    uniswapV2GetLiquidityPositionV2DTOsHistorical)
    call_uniswapV2GetLiquidityPositionV2DTOsHistorical
    ;;
    uniswapV2GetLiquidityPositionsHistorical)
    call_uniswapV2GetLiquidityPositionsHistorical
    ;;
    uniswapV2GetLiquidityPositionsSnapshotsHistorical)
    call_uniswapV2GetLiquidityPositionsSnapshotsHistorical
    ;;
    uniswapV2GetMintV2DTOsHistorical)
    call_uniswapV2GetMintV2DTOsHistorical
    ;;
    uniswapV2GetMintsHistorical)
    call_uniswapV2GetMintsHistorical
    ;;
    uniswapV2GetPairDayDataV2DTOsHistorical)
    call_uniswapV2GetPairDayDataV2DTOsHistorical
    ;;
    uniswapV2GetPairHourDataV2DTOsHistorical)
    call_uniswapV2GetPairHourDataV2DTOsHistorical
    ;;
    uniswapV2GetPairV2DTOsHistorical)
    call_uniswapV2GetPairV2DTOsHistorical
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
    uniswapV2GetSwapV2DTOsHistorical)
    call_uniswapV2GetSwapV2DTOsHistorical
    ;;
    uniswapV2GetSwapsCurrent)
    call_uniswapV2GetSwapsCurrent
    ;;
    uniswapV2GetSwapsHistorical)
    call_uniswapV2GetSwapsHistorical
    ;;
    uniswapV2GetTokenDayDataV2DTOsHistorical)
    call_uniswapV2GetTokenDayDataV2DTOsHistorical
    ;;
    uniswapV2GetTokenV2DTOsHistorical)
    call_uniswapV2GetTokenV2DTOsHistorical
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
    uniswapV2GetTransactionV2DTOsHistorical)
    call_uniswapV2GetTransactionV2DTOsHistorical
    ;;
    uniswapV2GetTransactionsHistorical)
    call_uniswapV2GetTransactionsHistorical
    ;;
    uniswapV2GetUniswapDayDataV2DTOsHistorical)
    call_uniswapV2GetUniswapDayDataV2DTOsHistorical
    ;;
    uniswapV2GetUniswapFactoryV2DTOsHistorical)
    call_uniswapV2GetUniswapFactoryV2DTOsHistorical
    ;;
    uniswapV2GetUserV2DTOsHistorical)
    call_uniswapV2GetUserV2DTOsHistorical
    ;;
    uniswapV2GetUsersHistorical)
    call_uniswapV2GetUsersHistorical
    ;;
    uniswapV3GetBundleV3DTOsHistorical)
    call_uniswapV3GetBundleV3DTOsHistorical
    ;;
    uniswapV3GetBundlesCurrent)
    call_uniswapV3GetBundlesCurrent
    ;;
    uniswapV3GetBundlesHistorical)
    call_uniswapV3GetBundlesHistorical
    ;;
    uniswapV3GetBurnV3DTOsHistorical)
    call_uniswapV3GetBurnV3DTOsHistorical
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
    uniswapV3GetFactoryV3DTOsHistorical)
    call_uniswapV3GetFactoryV3DTOsHistorical
    ;;
    uniswapV3GetMintV3DTOsHistorical)
    call_uniswapV3GetMintV3DTOsHistorical
    ;;
    uniswapV3GetMintsCurrent)
    call_uniswapV3GetMintsCurrent
    ;;
    uniswapV3GetMintsHistorical)
    call_uniswapV3GetMintsHistorical
    ;;
    uniswapV3GetPoolDayDataV3DTOsHistorical)
    call_uniswapV3GetPoolDayDataV3DTOsHistorical
    ;;
    uniswapV3GetPoolHourDataV3DTOsHistorical)
    call_uniswapV3GetPoolHourDataV3DTOsHistorical
    ;;
    uniswapV3GetPoolV3DTOsHistorical)
    call_uniswapV3GetPoolV3DTOsHistorical
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
    uniswapV3GetPositionSnapshotV3DTOsHistorical)
    call_uniswapV3GetPositionSnapshotV3DTOsHistorical
    ;;
    uniswapV3GetPositionV3DTOsHistorical)
    call_uniswapV3GetPositionV3DTOsHistorical
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
    uniswapV3GetSwapV3DTOsHistorical)
    call_uniswapV3GetSwapV3DTOsHistorical
    ;;
    uniswapV3GetSwapsCurrent)
    call_uniswapV3GetSwapsCurrent
    ;;
    uniswapV3GetSwapsHistorical)
    call_uniswapV3GetSwapsHistorical
    ;;
    uniswapV3GetTickDayDataV3DTOsHistorical)
    call_uniswapV3GetTickDayDataV3DTOsHistorical
    ;;
    uniswapV3GetTickV3DTOsHistorical)
    call_uniswapV3GetTickV3DTOsHistorical
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
    uniswapV3GetTokenHourDataV3DTOsHistorical)
    call_uniswapV3GetTokenHourDataV3DTOsHistorical
    ;;
    uniswapV3GetTokenV3DTOsHistorical)
    call_uniswapV3GetTokenV3DTOsHistorical
    ;;
    uniswapV3GetTokenV3DayDataDTOsHistorical)
    call_uniswapV3GetTokenV3DayDataDTOsHistorical
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
    uniswapV3GetTransactionV3DTOsHistorical)
    call_uniswapV3GetTransactionV3DTOsHistorical
    ;;
    uniswapV3GetTransactionsHistorical)
    call_uniswapV3GetTransactionsHistorical
    ;;
    uniswapV3GetUniswapDayDataV3DTOsHistorical)
    call_uniswapV3GetUniswapDayDataV3DTOsHistorical
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
