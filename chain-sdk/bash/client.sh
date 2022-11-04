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
operation_parameters_minimum_occurrences["dappsCowOrdersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCowOrdersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCowOrdersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCowOrdersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCowSettlementHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCowSettlementHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCowSettlementHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCowSettlementHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCowTokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCowTokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCowTokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCowTokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCowTokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsCowTradesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCowTradesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCowTradesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCowTradesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCowUsersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCowUsersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCowUsersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCowUsersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveAccountsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveAccountsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveAccountsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveAccountsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveAddLiquidityEventHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveAddLiquidityEventHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveAddLiquidityEventHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveAddLiquidityEventHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveAddLiquidityEventHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveAdminFeeChangeLogHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveAdminFeeChangeLogHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveAdminFeeChangeLogHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveAdminFeeChangeLogHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveAdminFeeChangeLogHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveCoinsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveCoinsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveCoinsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveCoinsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveCoinsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveContractsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveContractsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveContractsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveContractsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveContractsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveContractsVersionHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveContractsVersionHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveContractsVersionHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveContractsVersionHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveContractsVersionHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveDailyVolumeHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveDailyVolumeHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveDailyVolumeHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveDailyVolumeHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveDailyVolumeHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveFeeChangeLogHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveFeeChangeLogHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveFeeChangeLogHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveFeeChangeLogHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveFeeChangeLogHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeDepositHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeDepositHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeDepositHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeDepositHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeLiquidityHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeLiquidityHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeLiquidityHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeLiquidityHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTotalWeightHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTotalWeightHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTotalWeightHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTotalWeightHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTypeHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTypeHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTypeHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTypeHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTypeWeightHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTypeWeightHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTypeWeightHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeTypeWeightHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWeightHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWeightHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWeightHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWeightHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWeightVoteHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWeightVoteHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWeightVoteHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWeightVoteHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWithdrawHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWithdrawHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWithdrawHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveGaugeWithdrawHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveHourlyVolumeHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveHourlyVolumeHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveHourlyVolumeHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveHourlyVolumeHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveHourlyVolumeHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveLpTokenHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveLpTokenHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveLpTokenHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveLpTokenHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveLpTokenHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurvePoolsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurvePoolsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurvePoolsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurvePoolsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurvePoolsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveProposalsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveProposalsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveProposalsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveProposalsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveProposalsVoteHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveProposalsVoteHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveProposalsVoteHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveProposalsVoteHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveRemoveLiquidityEventHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveRemoveLiquidityEventHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveRemoveLiquidityEventHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveRemoveLiquidityEventHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveRemoveLiquidityEventHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveRemoveLiquidityOneEventHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveRemoveLiquidityOneEventHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveRemoveLiquidityOneEventHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveRemoveLiquidityOneEventHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveRemoveLiquidityOneEventHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveSwapsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveSwapsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveSwapsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveSwapsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveSwapsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveSystemStateHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveSystemStateHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveSystemStateHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveSystemStateHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveTokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveTokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveTokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveTokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveTokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsCurveTransferOwnershipEventHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveTransferOwnershipEventHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveTransferOwnershipEventHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveTransferOwnershipEventHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveTransferOwnershipEventHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveUnderlyingCoinHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveUnderlyingCoinHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveUnderlyingCoinHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveUnderlyingCoinHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveUnderlyingCoinHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsCurveVotingAppHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveVotingAppHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveVotingAppHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveVotingAppHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveWeeklyVolumeHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveWeeklyVolumeHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsCurveWeeklyVolumeHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsCurveWeeklyVolumeHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsCurveWeeklyVolumeHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsDexBatchHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsDexBatchHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsDexBatchHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsDexBatchHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsDexOrdersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsDexOrdersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsDexOrdersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsDexOrdersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsDexOrdersHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsDexPricesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsDexPricesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsDexPricesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsDexPricesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsDexPricesHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsDexSolutionHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsDexSolutionHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsDexSolutionHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsDexSolutionHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsDexSolutionHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsDexStatsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsDexStatsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsDexStatsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsDexStatsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsDexTokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsDexTokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsDexTokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsDexTokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsDexTokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsDexTradesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsDexTradesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsDexTradesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsDexTradesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsDexUsersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsDexUsersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsDexUsersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsDexUsersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsDexWithdrawHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsDexWithdrawHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsDexWithdrawHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsDexWithdrawHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsDexWithdrawHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsDexWithdrawRequestHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsDexWithdrawRequestHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsDexWithdrawRequestHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsDexWithdrawRequestHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsDexWithdrawRequestHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapBundlesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapBundlesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapBundlesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapBundlesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapBurnsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapBurnsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapBurnsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapBurnsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapBurnsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapFactoryHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapFactoryHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapFactoryHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapFactoryHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapHourDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapHourDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapHourDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapHourDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapLiquidityPositionHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapLiquidityPositionHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapLiquidityPositionHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapLiquidityPositionHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapLiquidityPositionHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapMintsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapMintsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapMintsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapMintsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapMintsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapPoolsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapSwapsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapSwapsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapSwapsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapSwapsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapSwapsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTransactionsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTransactionsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTransactionsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapTransactionsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapUsersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapUsersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsSushiswapUsersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsSushiswapUsersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2BundlesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2BundlesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2BundlesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2BundlesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2BurnsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2BurnsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2BurnsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2BurnsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2BurnsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2DayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2DayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2DayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2DayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2FactoryHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2FactoryHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2FactoryHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2FactoryHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2LiquidityPositionHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2LiquidityPositionHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2LiquidityPositionHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2LiquidityPositionHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2LiquidityPositionHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2MintsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2MintsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2MintsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2MintsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2MintsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2PoolsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2SwapsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2SwapsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2SwapsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2SwapsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2SwapsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TransactionsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TransactionsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TransactionsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2TransactionsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2UsersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2UsersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2UsersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv2UsersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3BundlesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3BundlesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3BundlesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3BundlesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3BurnsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3BurnsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3BurnsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3BurnsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3BurnsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3BurnsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3DayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3DayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3DayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3DayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3FactoryCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["dappsUniswapv3FactoryHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3FactoryHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3FactoryHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3FactoryHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3MintsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3MintsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3MintsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3MintsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3MintsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3MintsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolsDayDataCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PoolsHourDataCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionSnapshotHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionSnapshotHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionSnapshotHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionSnapshotHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionSnapshotHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionSnapshotsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3PositionsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3SwapsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3SwapsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3SwapsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3SwapsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3SwapsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3SwapsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TickDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TickDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TickDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TickDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TickDayDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TicksCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TicksDayDataCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TicksHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TicksHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TicksHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TicksHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TicksHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokenHourDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokenHourDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokenHourDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokenHourDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokenHourDataHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokensCurrentGet:::filter_token_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokensDayDataCurrentGet:::filter_token_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TokensHourDataCurrentGet:::filter_token_id"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TransactionsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TransactionsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TransactionsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["dappsUniswapv3TransactionsHistoricalGet:::endDate"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["dappsCowOrdersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCowOrdersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCowOrdersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCowOrdersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCowSettlementHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCowSettlementHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCowSettlementHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCowSettlementHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCowTokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCowTokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCowTokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCowTokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCowTokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsCowTradesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCowTradesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCowTradesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCowTradesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCowUsersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCowUsersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCowUsersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCowUsersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveAccountsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveAccountsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveAccountsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveAccountsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveAddLiquidityEventHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveAddLiquidityEventHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveAddLiquidityEventHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveAddLiquidityEventHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveAddLiquidityEventHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveAdminFeeChangeLogHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveAdminFeeChangeLogHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveAdminFeeChangeLogHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveAdminFeeChangeLogHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveAdminFeeChangeLogHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveCoinsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveCoinsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveCoinsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveCoinsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveCoinsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveContractsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveContractsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveContractsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveContractsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveContractsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveContractsVersionHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveContractsVersionHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveContractsVersionHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveContractsVersionHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveContractsVersionHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveDailyVolumeHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveDailyVolumeHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveDailyVolumeHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveDailyVolumeHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveDailyVolumeHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveFeeChangeLogHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveFeeChangeLogHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveFeeChangeLogHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveFeeChangeLogHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveFeeChangeLogHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeDepositHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeDepositHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeDepositHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeDepositHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeLiquidityHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeLiquidityHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeLiquidityHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeLiquidityHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTotalWeightHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTotalWeightHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTotalWeightHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTotalWeightHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTypeHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTypeHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTypeHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTypeHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTypeWeightHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTypeWeightHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTypeWeightHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeTypeWeightHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWeightHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWeightHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWeightHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWeightHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWeightVoteHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWeightVoteHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWeightVoteHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWeightVoteHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWithdrawHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWithdrawHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWithdrawHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveGaugeWithdrawHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveHourlyVolumeHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveHourlyVolumeHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveHourlyVolumeHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveHourlyVolumeHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveHourlyVolumeHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveLpTokenHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveLpTokenHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveLpTokenHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveLpTokenHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveLpTokenHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurvePoolsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurvePoolsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurvePoolsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurvePoolsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurvePoolsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveProposalsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveProposalsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveProposalsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveProposalsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveProposalsVoteHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveProposalsVoteHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveProposalsVoteHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveProposalsVoteHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveRemoveLiquidityEventHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveRemoveLiquidityEventHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveRemoveLiquidityEventHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveRemoveLiquidityEventHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveRemoveLiquidityEventHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveRemoveLiquidityOneEventHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveRemoveLiquidityOneEventHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveRemoveLiquidityOneEventHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveRemoveLiquidityOneEventHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveRemoveLiquidityOneEventHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveSwapsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveSwapsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveSwapsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveSwapsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveSwapsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveSystemStateHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveSystemStateHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveSystemStateHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveSystemStateHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveTokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveTokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveTokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveTokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveTokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsCurveTransferOwnershipEventHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveTransferOwnershipEventHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveTransferOwnershipEventHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveTransferOwnershipEventHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveTransferOwnershipEventHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveUnderlyingCoinHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveUnderlyingCoinHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveUnderlyingCoinHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveUnderlyingCoinHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveUnderlyingCoinHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsCurveVotingAppHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveVotingAppHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveVotingAppHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveVotingAppHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveWeeklyVolumeHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveWeeklyVolumeHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsCurveWeeklyVolumeHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsCurveWeeklyVolumeHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsCurveWeeklyVolumeHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsDexBatchHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsDexBatchHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsDexBatchHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsDexBatchHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsDexOrdersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsDexOrdersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsDexOrdersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsDexOrdersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsDexOrdersHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsDexPricesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsDexPricesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsDexPricesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsDexPricesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsDexPricesHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsDexSolutionHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsDexSolutionHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsDexSolutionHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsDexSolutionHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsDexSolutionHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsDexStatsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsDexStatsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsDexStatsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsDexStatsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsDexTokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsDexTokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsDexTokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsDexTokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsDexTokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsDexTradesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsDexTradesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsDexTradesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsDexTradesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsDexUsersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsDexUsersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsDexUsersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsDexUsersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsDexWithdrawHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsDexWithdrawHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsDexWithdrawHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsDexWithdrawHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsDexWithdrawHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsDexWithdrawRequestHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsDexWithdrawRequestHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsDexWithdrawRequestHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsDexWithdrawRequestHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsDexWithdrawRequestHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapBundlesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapBundlesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapBundlesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapBundlesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapBurnsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapBurnsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapBurnsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapBurnsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapBurnsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapFactoryHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapFactoryHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapFactoryHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapFactoryHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapHourDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapHourDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapHourDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapHourDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapLiquidityPositionHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapLiquidityPositionHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapLiquidityPositionHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapLiquidityPositionHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapLiquidityPositionHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapMintsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapMintsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapMintsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapMintsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapMintsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapPoolsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapSwapsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapSwapsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapSwapsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapSwapsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapSwapsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTransactionsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTransactionsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTransactionsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapTransactionsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapUsersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapUsersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsSushiswapUsersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsSushiswapUsersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2BundlesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2BundlesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2BundlesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2BundlesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2BurnsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2BurnsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2BurnsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2BurnsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2BurnsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2DayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2DayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2DayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2DayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2FactoryHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2FactoryHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2FactoryHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2FactoryHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2LiquidityPositionHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2LiquidityPositionHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2LiquidityPositionHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2LiquidityPositionHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2LiquidityPositionHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2MintsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2MintsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2MintsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2MintsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2MintsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2PoolsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2SwapsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2SwapsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2SwapsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2SwapsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2SwapsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TransactionsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TransactionsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TransactionsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2TransactionsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2UsersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2UsersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2UsersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv2UsersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3BundlesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3BundlesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3BundlesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3BundlesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3BurnsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3BurnsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3BurnsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3BurnsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3BurnsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3BurnsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3DayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3DayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3DayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3DayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3FactoryCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3FactoryHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3FactoryHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3FactoryHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3FactoryHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3MintsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3MintsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3MintsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3MintsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3MintsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3MintsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolsDayDataCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PoolsHourDataCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionSnapshotHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionSnapshotHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionSnapshotHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionSnapshotHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionSnapshotHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionSnapshotsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3PositionsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3SwapsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3SwapsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3SwapsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3SwapsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3SwapsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3SwapsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TickDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TickDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TickDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TickDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TickDayDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TicksCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TicksDayDataCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TicksHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TicksHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TicksHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TicksHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TicksHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokenHourDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokenHourDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokenHourDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokenHourDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokenHourDataHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokensCurrentGet:::filter_token_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokensDayDataCurrentGet:::filter_token_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TokensHourDataCurrentGet:::filter_token_id"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TransactionsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TransactionsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TransactionsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["dappsUniswapv3TransactionsHistoricalGet:::endDate"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["dappsCowOrdersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCowOrdersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCowOrdersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCowOrdersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCowSettlementHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCowSettlementHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCowSettlementHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCowSettlementHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCowTokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCowTokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCowTokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCowTokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCowTokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsCowTradesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCowTradesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCowTradesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCowTradesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCowUsersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCowUsersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCowUsersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCowUsersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveAccountsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveAccountsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveAccountsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveAccountsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveAddLiquidityEventHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveAddLiquidityEventHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveAddLiquidityEventHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveAddLiquidityEventHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveAddLiquidityEventHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveAdminFeeChangeLogHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveAdminFeeChangeLogHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveAdminFeeChangeLogHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveAdminFeeChangeLogHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveAdminFeeChangeLogHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveAmplificationCoeffChangeLogHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveCoinsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveCoinsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveCoinsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveCoinsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveCoinsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveContractsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveContractsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveContractsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveContractsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveContractsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveContractsVersionHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveContractsVersionHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveContractsVersionHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveContractsVersionHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveContractsVersionHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveDailyVolumeHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveDailyVolumeHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveDailyVolumeHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveDailyVolumeHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveDailyVolumeHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveFeeChangeLogHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveFeeChangeLogHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveFeeChangeLogHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveFeeChangeLogHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveFeeChangeLogHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveGaugeDepositHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeDepositHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeDepositHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveGaugeDepositHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveGaugeHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveGaugeHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveGaugeHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveGaugeLiquidityHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeLiquidityHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeLiquidityHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveGaugeLiquidityHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveGaugeTotalWeightHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeTotalWeightHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeTotalWeightHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveGaugeTotalWeightHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveGaugeTypeHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeTypeHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeTypeHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveGaugeTypeHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveGaugeTypeWeightHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeTypeWeightHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeTypeWeightHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveGaugeTypeWeightHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveGaugeWeightHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeWeightHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeWeightHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveGaugeWeightHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveGaugeWeightVoteHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeWeightVoteHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeWeightVoteHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveGaugeWeightVoteHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveGaugeWithdrawHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeWithdrawHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveGaugeWithdrawHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveGaugeWithdrawHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveHourlyVolumeHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveHourlyVolumeHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveHourlyVolumeHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveHourlyVolumeHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveHourlyVolumeHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveLpTokenHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveLpTokenHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveLpTokenHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveLpTokenHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveLpTokenHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurvePoolsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurvePoolsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurvePoolsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurvePoolsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurvePoolsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveProposalsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveProposalsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveProposalsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveProposalsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveProposalsVoteHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveProposalsVoteHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveProposalsVoteHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveProposalsVoteHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveRemoveLiquidityEventHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveRemoveLiquidityEventHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveRemoveLiquidityEventHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveRemoveLiquidityEventHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveRemoveLiquidityEventHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveRemoveLiquidityOneEventHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveRemoveLiquidityOneEventHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveRemoveLiquidityOneEventHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveRemoveLiquidityOneEventHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveRemoveLiquidityOneEventHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveSwapsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveSwapsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveSwapsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveSwapsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveSwapsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveSystemStateHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveSystemStateHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveSystemStateHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveSystemStateHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveTokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveTokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveTokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveTokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveTokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsCurveTransferOwnershipEventHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveTransferOwnershipEventHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveTransferOwnershipEventHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveTransferOwnershipEventHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveTransferOwnershipEventHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveUnderlyingCoinHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveUnderlyingCoinHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveUnderlyingCoinHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveUnderlyingCoinHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveUnderlyingCoinHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsCurveVotingAppHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveVotingAppHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveVotingAppHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveVotingAppHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveWeeklyVolumeHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsCurveWeeklyVolumeHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsCurveWeeklyVolumeHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsCurveWeeklyVolumeHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsCurveWeeklyVolumeHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsDexBatchHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsDexBatchHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsDexBatchHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsDexBatchHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsDexOrdersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsDexOrdersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsDexOrdersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsDexOrdersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsDexOrdersHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsDexPricesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsDexPricesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsDexPricesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsDexPricesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsDexPricesHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsDexSolutionHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsDexSolutionHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsDexSolutionHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsDexSolutionHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsDexSolutionHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsDexStatsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsDexStatsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsDexStatsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsDexStatsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsDexTokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsDexTokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsDexTokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsDexTokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsDexTokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsDexTradesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsDexTradesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsDexTradesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsDexTradesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsDexUsersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsDexUsersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsDexUsersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsDexUsersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsDexWithdrawHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsDexWithdrawHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsDexWithdrawHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsDexWithdrawHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsDexWithdrawHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsDexWithdrawRequestHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsDexWithdrawRequestHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsDexWithdrawRequestHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsDexWithdrawRequestHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsDexWithdrawRequestHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsSushiswapBundlesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapBundlesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapBundlesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapBundlesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapBurnsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapBurnsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapBurnsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapBurnsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapBurnsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsSushiswapDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapFactoryHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapFactoryHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapFactoryHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapFactoryHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapHourDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapHourDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapHourDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapHourDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapLiquidityPositionHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapLiquidityPositionHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapLiquidityPositionHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapLiquidityPositionHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapLiquidityPositionHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsSushiswapMintsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapMintsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapMintsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapMintsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapMintsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsSushiswapPoolDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapPoolDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapPoolDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapPoolDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapPoolDayDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsSushiswapPoolHourDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapPoolHourDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapPoolHourDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapPoolHourDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapPoolHourDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsSushiswapPoolsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapPoolsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapPoolsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapPoolsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapPoolsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsSushiswapSwapsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapSwapsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapSwapsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapSwapsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapSwapsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsSushiswapTokenDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapTokenDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapTokenDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapTokenDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapTokenDayDataHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsSushiswapTokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapTokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapTokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapTokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapTokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsSushiswapTransactionsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapTransactionsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapTransactionsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapTransactionsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsSushiswapUsersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsSushiswapUsersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsSushiswapUsersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsSushiswapUsersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2BundlesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2BundlesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2BundlesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2BundlesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2BurnsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2BurnsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2BurnsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2BurnsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2BurnsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv2DayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2DayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2DayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2DayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2FactoryHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2FactoryHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2FactoryHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2FactoryHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2LiquidityPositionHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2LiquidityPositionHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2LiquidityPositionHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2LiquidityPositionHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2LiquidityPositionHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv2MintsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2MintsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2MintsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2MintsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2MintsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv2PoolDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2PoolDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2PoolDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2PoolDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2PoolDayDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv2PoolHourDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2PoolHourDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2PoolHourDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2PoolHourDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2PoolHourDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv2PoolsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv2PoolsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2PoolsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2PoolsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2PoolsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2PoolsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv2SwapsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2SwapsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2SwapsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2SwapsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2SwapsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv2TokenDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2TokenDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2TokenDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2TokenDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2TokenDayDataHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsUniswapv2TokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2TokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2TokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2TokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2TokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsUniswapv2TransactionsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2TransactionsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2TransactionsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2TransactionsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv2UsersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv2UsersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv2UsersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv2UsersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3BundlesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3BundlesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3BundlesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3BundlesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3BurnsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv3BurnsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3BurnsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3BurnsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3BurnsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3BurnsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv3DayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3DayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3DayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3DayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3FactoryCurrentGet:::chain_id"]=""
operation_parameters_collection_type["dappsUniswapv3FactoryHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3FactoryHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3FactoryHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3FactoryHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3MintsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv3MintsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3MintsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3MintsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3MintsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3MintsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv3PoolDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3PoolDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3PoolDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3PoolDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3PoolDayDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv3PoolHourDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3PoolHourDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3PoolHourDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3PoolHourDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3PoolHourDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv3PoolsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv3PoolsDayDataCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv3PoolsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3PoolsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3PoolsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3PoolsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3PoolsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv3PoolsHourDataCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv3PositionSnapshotHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3PositionSnapshotHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3PositionSnapshotHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3PositionSnapshotHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3PositionSnapshotHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv3PositionSnapshotsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv3PositionsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv3PositionsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3PositionsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3PositionsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3PositionsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3PositionsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv3SwapsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv3SwapsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3SwapsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3SwapsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3SwapsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3SwapsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv3TickDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TickDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TickDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3TickDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3TickDayDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv3TicksCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv3TicksDayDataCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["dappsUniswapv3TicksHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TicksHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TicksHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3TicksHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3TicksHistoricalGet:::poolId"]=""
operation_parameters_collection_type["dappsUniswapv3TokenDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TokenDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TokenDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3TokenDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3TokenDayDataHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsUniswapv3TokenHourDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TokenHourDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TokenHourDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3TokenHourDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3TokenHourDataHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsUniswapv3TokensCurrentGet:::filter_token_id"]=""
operation_parameters_collection_type["dappsUniswapv3TokensDayDataCurrentGet:::filter_token_id"]=""
operation_parameters_collection_type["dappsUniswapv3TokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3TokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["dappsUniswapv3TokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["dappsUniswapv3TokensHourDataCurrentGet:::filter_token_id"]=""
operation_parameters_collection_type["dappsUniswapv3TransactionsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TransactionsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["dappsUniswapv3TransactionsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["dappsUniswapv3TransactionsHistoricalGet:::endDate"]=""


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
  ${CYAN}dappsCowOrdersHistoricalGet${OFF};
  ${CYAN}dappsCowSettlementHistoricalGet${OFF};
  ${CYAN}dappsCowTokensHistoricalGet${OFF};
  ${CYAN}dappsCowTradesHistoricalGet${OFF};
  ${CYAN}dappsCowUsersHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[curve]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}dappsCurveAccountsHistoricalGet${OFF};
  ${CYAN}dappsCurveAddLiquidityEventHistoricalGet${OFF};
  ${CYAN}dappsCurveAdminFeeChangeLogHistoricalGet${OFF};
  ${CYAN}dappsCurveAmplificationCoeffChangeLogHistoricalGet${OFF};
  ${CYAN}dappsCurveCoinsHistoricalGet${OFF};
  ${CYAN}dappsCurveContractsHistoricalGet${OFF};
  ${CYAN}dappsCurveContractsVersionHistoricalGet${OFF};
  ${CYAN}dappsCurveDailyVolumeHistoricalGet${OFF};
  ${CYAN}dappsCurveFeeChangeLogHistoricalGet${OFF};
  ${CYAN}dappsCurveGaugeDepositHistoricalGet${OFF};
  ${CYAN}dappsCurveGaugeHistoricalGet${OFF};
  ${CYAN}dappsCurveGaugeLiquidityHistoricalGet${OFF};
  ${CYAN}dappsCurveGaugeTotalWeightHistoricalGet${OFF};
  ${CYAN}dappsCurveGaugeTypeHistoricalGet${OFF};
  ${CYAN}dappsCurveGaugeTypeWeightHistoricalGet${OFF};
  ${CYAN}dappsCurveGaugeWeightHistoricalGet${OFF};
  ${CYAN}dappsCurveGaugeWeightVoteHistoricalGet${OFF};
  ${CYAN}dappsCurveGaugeWithdrawHistoricalGet${OFF};
  ${CYAN}dappsCurveHourlyVolumeHistoricalGet${OFF};
  ${CYAN}dappsCurveLpTokenHistoricalGet${OFF};
  ${CYAN}dappsCurvePoolsHistoricalGet${OFF};
  ${CYAN}dappsCurveProposalsHistoricalGet${OFF};
  ${CYAN}dappsCurveProposalsVoteHistoricalGet${OFF};
  ${CYAN}dappsCurveRemoveLiquidityEventHistoricalGet${OFF};
  ${CYAN}dappsCurveRemoveLiquidityOneEventHistoricalGet${OFF};
  ${CYAN}dappsCurveSwapsHistoricalGet${OFF};
  ${CYAN}dappsCurveSystemStateHistoricalGet${OFF};
  ${CYAN}dappsCurveTokensHistoricalGet${OFF};
  ${CYAN}dappsCurveTransferOwnershipEventHistoricalGet${OFF};
  ${CYAN}dappsCurveUnderlyingCoinHistoricalGet${OFF};
  ${CYAN}dappsCurveVotingAppHistoricalGet${OFF};
  ${CYAN}dappsCurveWeeklyVolumeHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[dex]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}dappsDexBatchHistoricalGet${OFF};
  ${CYAN}dappsDexOrdersHistoricalGet${OFF};
  ${CYAN}dappsDexPricesHistoricalGet${OFF};
  ${CYAN}dappsDexSolutionHistoricalGet${OFF};
  ${CYAN}dappsDexStatsHistoricalGet${OFF};
  ${CYAN}dappsDexTokensHistoricalGet${OFF};
  ${CYAN}dappsDexTradesHistoricalGet${OFF};
  ${CYAN}dappsDexUsersHistoricalGet${OFF};
  ${CYAN}dappsDexWithdrawHistoricalGet${OFF};
  ${CYAN}dappsDexWithdrawRequestHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sushiswap]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}dappsSushiswapBundlesHistoricalGet${OFF};
  ${CYAN}dappsSushiswapBurnsHistoricalGet${OFF};
  ${CYAN}dappsSushiswapDayDataHistoricalGet${OFF};
  ${CYAN}dappsSushiswapFactoryHistoricalGet${OFF};
  ${CYAN}dappsSushiswapHourDataHistoricalGet${OFF};
  ${CYAN}dappsSushiswapLiquidityPositionHistoricalGet${OFF};
  ${CYAN}dappsSushiswapLiquidityPositionSnapshotsHistoricalGet${OFF};
  ${CYAN}dappsSushiswapMintsHistoricalGet${OFF};
  ${CYAN}dappsSushiswapPoolDayDataHistoricalGet${OFF};
  ${CYAN}dappsSushiswapPoolHourDataHistoricalGet${OFF};
  ${CYAN}dappsSushiswapPoolsCurrentGet${OFF};GetPools
  ${CYAN}dappsSushiswapPoolsHistoricalGet${OFF};GetPools (historical)
  ${CYAN}dappsSushiswapSwapsCurrentGet${OFF};GetSwaps
  ${CYAN}dappsSushiswapSwapsHistoricalGet${OFF};GetSwaps (historical)
  ${CYAN}dappsSushiswapTokenDayDataHistoricalGet${OFF};
  ${CYAN}dappsSushiswapTokensCurrentGet${OFF};GetTokens
  ${CYAN}dappsSushiswapTokensHistoricalGet${OFF};GetTokens (historical)
  ${CYAN}dappsSushiswapTransactionsHistoricalGet${OFF};
  ${CYAN}dappsSushiswapUsersHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV2]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}dappsUniswapv2BundlesHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2BurnsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2DayDataHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2FactoryHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2LiquidityPositionHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2MintsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2PoolDayDataHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2PoolHourDataHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2PoolsCurrentGet${OFF};GetPools
  ${CYAN}dappsUniswapv2PoolsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2SwapsCurrentGet${OFF};GetSwaps
  ${CYAN}dappsUniswapv2SwapsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2TokenDayDataHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2TokensCurrentGet${OFF};GetTokens
  ${CYAN}dappsUniswapv2TokensHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2TransactionsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv2UsersHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV3]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}dappsUniswapv3BundleCurrentGet${OFF};GetBundles
  ${CYAN}dappsUniswapv3BundlesHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3BurnsCurrentGet${OFF};GetBurns
  ${CYAN}dappsUniswapv3BurnsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3DayDataHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3FactoryCurrentGet${OFF};GetFactory
  ${CYAN}dappsUniswapv3FactoryHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3MintsCurrentGet${OFF};GetMints
  ${CYAN}dappsUniswapv3MintsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3PoolDayDataHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3PoolHourDataHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3PoolsCurrentGet${OFF};GetPools
  ${CYAN}dappsUniswapv3PoolsDayDataCurrentGet${OFF};GetPoolsDayData
  ${CYAN}dappsUniswapv3PoolsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3PoolsHourDataCurrentGet${OFF};GetPoolsHourData
  ${CYAN}dappsUniswapv3PositionSnapshotHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3PositionSnapshotsCurrentGet${OFF};GetPositionSnapshot
  ${CYAN}dappsUniswapv3PositionsCurrentGet${OFF};GetPositions
  ${CYAN}dappsUniswapv3PositionsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3SwapsCurrentGet${OFF};GetSwaps
  ${CYAN}dappsUniswapv3SwapsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3TickDayDataHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3TicksCurrentGet${OFF};GetTicks
  ${CYAN}dappsUniswapv3TicksDayDataCurrentGet${OFF};GetTicksDayData
  ${CYAN}dappsUniswapv3TicksHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3TokenDayDataHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3TokenHourDataHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3TokensCurrentGet${OFF};GetTokens
  ${CYAN}dappsUniswapv3TokensDayDataCurrentGet${OFF};GetTokensDayData
  ${CYAN}dappsUniswapv3TokensHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3TokensHourDataCurrentGet${OFF};GetTokensHourData
  ${CYAN}dappsUniswapv3TransactionsHistoricalGet${OFF};
  ${CYAN}dappsUniswapv3UniswapDayDataCurrentGet${OFF};GetUniswapDayData
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
# Print help for dappsCowOrdersHistoricalGet operation
#
##############################################################################
print_dappsCowOrdersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCowOrdersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCowSettlementHistoricalGet operation
#
##############################################################################
print_dappsCowSettlementHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCowSettlementHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCowTokensHistoricalGet operation
#
##############################################################################
print_dappsCowTokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCowTokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCowTradesHistoricalGet operation
#
##############################################################################
print_dappsCowTradesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCowTradesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCowUsersHistoricalGet operation
#
##############################################################################
print_dappsCowUsersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCowUsersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveAccountsHistoricalGet operation
#
##############################################################################
print_dappsCurveAccountsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveAccountsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveAddLiquidityEventHistoricalGet operation
#
##############################################################################
print_dappsCurveAddLiquidityEventHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveAddLiquidityEventHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveAdminFeeChangeLogHistoricalGet operation
#
##############################################################################
print_dappsCurveAdminFeeChangeLogHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveAdminFeeChangeLogHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveAmplificationCoeffChangeLogHistoricalGet operation
#
##############################################################################
print_dappsCurveAmplificationCoeffChangeLogHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveAmplificationCoeffChangeLogHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveCoinsHistoricalGet operation
#
##############################################################################
print_dappsCurveCoinsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveCoinsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveContractsHistoricalGet operation
#
##############################################################################
print_dappsCurveContractsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveContractsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveContractsVersionHistoricalGet operation
#
##############################################################################
print_dappsCurveContractsVersionHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveContractsVersionHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveDailyVolumeHistoricalGet operation
#
##############################################################################
print_dappsCurveDailyVolumeHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveDailyVolumeHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveFeeChangeLogHistoricalGet operation
#
##############################################################################
print_dappsCurveFeeChangeLogHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveFeeChangeLogHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveGaugeDepositHistoricalGet operation
#
##############################################################################
print_dappsCurveGaugeDepositHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveGaugeDepositHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveGaugeHistoricalGet operation
#
##############################################################################
print_dappsCurveGaugeHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveGaugeHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveGaugeLiquidityHistoricalGet operation
#
##############################################################################
print_dappsCurveGaugeLiquidityHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveGaugeLiquidityHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveGaugeTotalWeightHistoricalGet operation
#
##############################################################################
print_dappsCurveGaugeTotalWeightHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveGaugeTotalWeightHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveGaugeTypeHistoricalGet operation
#
##############################################################################
print_dappsCurveGaugeTypeHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveGaugeTypeHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveGaugeTypeWeightHistoricalGet operation
#
##############################################################################
print_dappsCurveGaugeTypeWeightHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveGaugeTypeWeightHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveGaugeWeightHistoricalGet operation
#
##############################################################################
print_dappsCurveGaugeWeightHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveGaugeWeightHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveGaugeWeightVoteHistoricalGet operation
#
##############################################################################
print_dappsCurveGaugeWeightVoteHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveGaugeWeightVoteHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveGaugeWithdrawHistoricalGet operation
#
##############################################################################
print_dappsCurveGaugeWithdrawHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveGaugeWithdrawHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveHourlyVolumeHistoricalGet operation
#
##############################################################################
print_dappsCurveHourlyVolumeHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveHourlyVolumeHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveLpTokenHistoricalGet operation
#
##############################################################################
print_dappsCurveLpTokenHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveLpTokenHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurvePoolsHistoricalGet operation
#
##############################################################################
print_dappsCurvePoolsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurvePoolsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveProposalsHistoricalGet operation
#
##############################################################################
print_dappsCurveProposalsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveProposalsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveProposalsVoteHistoricalGet operation
#
##############################################################################
print_dappsCurveProposalsVoteHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveProposalsVoteHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveRemoveLiquidityEventHistoricalGet operation
#
##############################################################################
print_dappsCurveRemoveLiquidityEventHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveRemoveLiquidityEventHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveRemoveLiquidityOneEventHistoricalGet operation
#
##############################################################################
print_dappsCurveRemoveLiquidityOneEventHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveRemoveLiquidityOneEventHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveSwapsHistoricalGet operation
#
##############################################################################
print_dappsCurveSwapsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveSwapsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveSystemStateHistoricalGet operation
#
##############################################################################
print_dappsCurveSystemStateHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveSystemStateHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveTokensHistoricalGet operation
#
##############################################################################
print_dappsCurveTokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveTokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveTransferOwnershipEventHistoricalGet operation
#
##############################################################################
print_dappsCurveTransferOwnershipEventHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveTransferOwnershipEventHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveUnderlyingCoinHistoricalGet operation
#
##############################################################################
print_dappsCurveUnderlyingCoinHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveUnderlyingCoinHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveVotingAppHistoricalGet operation
#
##############################################################################
print_dappsCurveVotingAppHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveVotingAppHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsCurveWeeklyVolumeHistoricalGet operation
#
##############################################################################
print_dappsCurveWeeklyVolumeHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsCurveWeeklyVolumeHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsDexBatchHistoricalGet operation
#
##############################################################################
print_dappsDexBatchHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsDexBatchHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsDexOrdersHistoricalGet operation
#
##############################################################################
print_dappsDexOrdersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsDexOrdersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsDexPricesHistoricalGet operation
#
##############################################################################
print_dappsDexPricesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsDexPricesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsDexSolutionHistoricalGet operation
#
##############################################################################
print_dappsDexSolutionHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsDexSolutionHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsDexStatsHistoricalGet operation
#
##############################################################################
print_dappsDexStatsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsDexStatsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsDexTokensHistoricalGet operation
#
##############################################################################
print_dappsDexTokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsDexTokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsDexTradesHistoricalGet operation
#
##############################################################################
print_dappsDexTradesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsDexTradesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsDexUsersHistoricalGet operation
#
##############################################################################
print_dappsDexUsersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsDexUsersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsDexWithdrawHistoricalGet operation
#
##############################################################################
print_dappsDexWithdrawHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsDexWithdrawHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsDexWithdrawRequestHistoricalGet operation
#
##############################################################################
print_dappsDexWithdrawRequestHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsDexWithdrawRequestHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapBundlesHistoricalGet operation
#
##############################################################################
print_dappsSushiswapBundlesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapBundlesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapBurnsHistoricalGet operation
#
##############################################################################
print_dappsSushiswapBurnsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapBurnsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapDayDataHistoricalGet operation
#
##############################################################################
print_dappsSushiswapDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapFactoryHistoricalGet operation
#
##############################################################################
print_dappsSushiswapFactoryHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapFactoryHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapHourDataHistoricalGet operation
#
##############################################################################
print_dappsSushiswapHourDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapHourDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapLiquidityPositionHistoricalGet operation
#
##############################################################################
print_dappsSushiswapLiquidityPositionHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapLiquidityPositionHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapLiquidityPositionSnapshotsHistoricalGet operation
#
##############################################################################
print_dappsSushiswapLiquidityPositionSnapshotsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapLiquidityPositionSnapshotsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapMintsHistoricalGet operation
#
##############################################################################
print_dappsSushiswapMintsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapMintsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapPoolDayDataHistoricalGet operation
#
##############################################################################
print_dappsSushiswapPoolDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapPoolDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapPoolHourDataHistoricalGet operation
#
##############################################################################
print_dappsSushiswapPoolHourDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapPoolHourDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapPoolsCurrentGet operation
#
##############################################################################
print_dappsSushiswapPoolsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapPoolsCurrentGet - GetPools${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapPoolsHistoricalGet operation
#
##############################################################################
print_dappsSushiswapPoolsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapPoolsHistoricalGet - GetPools (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
# Print help for dappsSushiswapSwapsCurrentGet operation
#
##############################################################################
print_dappsSushiswapSwapsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapSwapsCurrentGet - GetSwaps${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapSwapsHistoricalGet operation
#
##############################################################################
print_dappsSushiswapSwapsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapSwapsHistoricalGet - GetSwaps (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
# Print help for dappsSushiswapTokenDayDataHistoricalGet operation
#
##############################################################################
print_dappsSushiswapTokenDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapTokenDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapTokensCurrentGet operation
#
##############################################################################
print_dappsSushiswapTokensCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapTokensCurrentGet - GetTokens${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapTokensHistoricalGet operation
#
##############################################################################
print_dappsSushiswapTokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapTokensHistoricalGet - GetTokens (historical)${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
# Print help for dappsSushiswapTransactionsHistoricalGet operation
#
##############################################################################
print_dappsSushiswapTransactionsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapTransactionsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsSushiswapUsersHistoricalGet operation
#
##############################################################################
print_dappsSushiswapUsersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsSushiswapUsersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2BundlesHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2BundlesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2BundlesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2BurnsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2BurnsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2BurnsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2DayDataHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2DayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2DayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2FactoryHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2FactoryHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2FactoryHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2LiquidityPositionHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2LiquidityPositionHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2LiquidityPositionHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2MintsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2MintsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2MintsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2PoolDayDataHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2PoolDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2PoolDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2PoolHourDataHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2PoolHourDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2PoolHourDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2PoolsCurrentGet operation
#
##############################################################################
print_dappsUniswapv2PoolsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2PoolsCurrentGet - GetPools${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2PoolsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2PoolsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2PoolsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2SwapsCurrentGet operation
#
##############################################################################
print_dappsUniswapv2SwapsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2SwapsCurrentGet - GetSwaps${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2SwapsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2SwapsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2SwapsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2TokenDayDataHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2TokenDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2TokenDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2TokensCurrentGet operation
#
##############################################################################
print_dappsUniswapv2TokensCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2TokensCurrentGet - GetTokens${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2TokensHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2TokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2TokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2TransactionsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2TransactionsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2TransactionsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv2UsersHistoricalGet operation
#
##############################################################################
print_dappsUniswapv2UsersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv2UsersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3BundleCurrentGet operation
#
##############################################################################
print_dappsUniswapv3BundleCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3BundleCurrentGet - GetBundles${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3BundlesHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3BundlesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3BundlesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3BurnsCurrentGet operation
#
##############################################################################
print_dappsUniswapv3BurnsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3BurnsCurrentGet - GetBurns${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3BurnsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3BurnsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3BurnsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3DayDataHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3DayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3DayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3FactoryCurrentGet operation
#
##############################################################################
print_dappsUniswapv3FactoryCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3FactoryCurrentGet - GetFactory${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3FactoryHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3FactoryHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3FactoryHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3MintsCurrentGet operation
#
##############################################################################
print_dappsUniswapv3MintsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3MintsCurrentGet - GetMints${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3MintsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3MintsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3MintsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3PoolDayDataHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3PoolDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3PoolDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3PoolHourDataHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3PoolHourDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3PoolHourDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3PoolsCurrentGet operation
#
##############################################################################
print_dappsUniswapv3PoolsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3PoolsCurrentGet - GetPools${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3PoolsDayDataCurrentGet operation
#
##############################################################################
print_dappsUniswapv3PoolsDayDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3PoolsDayDataCurrentGet - GetPoolsDayData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3PoolsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3PoolsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3PoolsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3PoolsHourDataCurrentGet operation
#
##############################################################################
print_dappsUniswapv3PoolsHourDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3PoolsHourDataCurrentGet - GetPoolsHourData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3PositionSnapshotHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3PositionSnapshotHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3PositionSnapshotHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3PositionSnapshotsCurrentGet operation
#
##############################################################################
print_dappsUniswapv3PositionSnapshotsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3PositionSnapshotsCurrentGet - GetPositionSnapshot${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3PositionsCurrentGet operation
#
##############################################################################
print_dappsUniswapv3PositionsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3PositionsCurrentGet - GetPositions${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3PositionsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3PositionsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3PositionsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3SwapsCurrentGet operation
#
##############################################################################
print_dappsUniswapv3SwapsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3SwapsCurrentGet - GetSwaps${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3SwapsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3SwapsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3SwapsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3TickDayDataHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3TickDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TickDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3TicksCurrentGet operation
#
##############################################################################
print_dappsUniswapv3TicksCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TicksCurrentGet - GetTicks${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3TicksDayDataCurrentGet operation
#
##############################################################################
print_dappsUniswapv3TicksDayDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TicksDayDataCurrentGet - GetTicksDayData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3TicksHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3TicksHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TicksHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3TokenDayDataHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3TokenDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TokenDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3TokenHourDataHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3TokenHourDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TokenHourDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3TokensCurrentGet operation
#
##############################################################################
print_dappsUniswapv3TokensCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TokensCurrentGet - GetTokens${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dappsUniswapv3TokensDayDataCurrentGet operation
#
##############################################################################
print_dappsUniswapv3TokensDayDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TokensDayDataCurrentGet - GetTokensDayData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dappsUniswapv3TokensHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3TokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3TokensHourDataCurrentGet operation
#
##############################################################################
print_dappsUniswapv3TokensHourDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TokensHourDataCurrentGet - GetTokensHourData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for dappsUniswapv3TransactionsHistoricalGet operation
#
##############################################################################
print_dappsUniswapv3TransactionsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3TransactionsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
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
    echo -e "${result_color_table[${code:0:1}]}  200;Success${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for dappsUniswapv3UniswapDayDataCurrentGet operation
#
##############################################################################
print_dappsUniswapv3UniswapDayDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}dappsUniswapv3UniswapDayDataCurrentGet - GetUniswapDayData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}


##############################################################################
#
# Call dappsCowOrdersHistoricalGet operation
#
##############################################################################
call_dappsCowOrdersHistoricalGet() {
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
# Call dappsCowSettlementHistoricalGet operation
#
##############################################################################
call_dappsCowSettlementHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/cow/settlement/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCowTokensHistoricalGet operation
#
##############################################################################
call_dappsCowTokensHistoricalGet() {
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
# Call dappsCowTradesHistoricalGet operation
#
##############################################################################
call_dappsCowTradesHistoricalGet() {
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
# Call dappsCowUsersHistoricalGet operation
#
##############################################################################
call_dappsCowUsersHistoricalGet() {
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
# Call dappsCurveAccountsHistoricalGet operation
#
##############################################################################
call_dappsCurveAccountsHistoricalGet() {
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
# Call dappsCurveAddLiquidityEventHistoricalGet operation
#
##############################################################################
call_dappsCurveAddLiquidityEventHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/addLiquidityEvent/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveAdminFeeChangeLogHistoricalGet operation
#
##############################################################################
call_dappsCurveAdminFeeChangeLogHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/adminFeeChangeLog/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveAmplificationCoeffChangeLogHistoricalGet operation
#
##############################################################################
call_dappsCurveAmplificationCoeffChangeLogHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/amplificationCoeffChangeLog/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveCoinsHistoricalGet operation
#
##############################################################################
call_dappsCurveCoinsHistoricalGet() {
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
# Call dappsCurveContractsHistoricalGet operation
#
##############################################################################
call_dappsCurveContractsHistoricalGet() {
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
# Call dappsCurveContractsVersionHistoricalGet operation
#
##############################################################################
call_dappsCurveContractsVersionHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/contractsVersion/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveDailyVolumeHistoricalGet operation
#
##############################################################################
call_dappsCurveDailyVolumeHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/dailyVolume/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveFeeChangeLogHistoricalGet operation
#
##############################################################################
call_dappsCurveFeeChangeLogHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/feeChangeLog/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveGaugeDepositHistoricalGet operation
#
##############################################################################
call_dappsCurveGaugeDepositHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeDeposit/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveGaugeHistoricalGet operation
#
##############################################################################
call_dappsCurveGaugeHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/gauge/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveGaugeLiquidityHistoricalGet operation
#
##############################################################################
call_dappsCurveGaugeLiquidityHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeLiquidity/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveGaugeTotalWeightHistoricalGet operation
#
##############################################################################
call_dappsCurveGaugeTotalWeightHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeTotalWeight/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveGaugeTypeHistoricalGet operation
#
##############################################################################
call_dappsCurveGaugeTypeHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeType/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveGaugeTypeWeightHistoricalGet operation
#
##############################################################################
call_dappsCurveGaugeTypeWeightHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeTypeWeight/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveGaugeWeightHistoricalGet operation
#
##############################################################################
call_dappsCurveGaugeWeightHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeWeight/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveGaugeWeightVoteHistoricalGet operation
#
##############################################################################
call_dappsCurveGaugeWeightVoteHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeWeightVote/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveGaugeWithdrawHistoricalGet operation
#
##############################################################################
call_dappsCurveGaugeWithdrawHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/gaugeWithdraw/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveHourlyVolumeHistoricalGet operation
#
##############################################################################
call_dappsCurveHourlyVolumeHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/hourlyVolume/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveLpTokenHistoricalGet operation
#
##############################################################################
call_dappsCurveLpTokenHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/lpToken/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurvePoolsHistoricalGet operation
#
##############################################################################
call_dappsCurvePoolsHistoricalGet() {
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
# Call dappsCurveProposalsHistoricalGet operation
#
##############################################################################
call_dappsCurveProposalsHistoricalGet() {
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
# Call dappsCurveProposalsVoteHistoricalGet operation
#
##############################################################################
call_dappsCurveProposalsVoteHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/proposalsVote/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveRemoveLiquidityEventHistoricalGet operation
#
##############################################################################
call_dappsCurveRemoveLiquidityEventHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/removeLiquidityEvent/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveRemoveLiquidityOneEventHistoricalGet operation
#
##############################################################################
call_dappsCurveRemoveLiquidityOneEventHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/removeLiquidityOneEvent/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveSwapsHistoricalGet operation
#
##############################################################################
call_dappsCurveSwapsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/swaps/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveSystemStateHistoricalGet operation
#
##############################################################################
call_dappsCurveSystemStateHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/systemState/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveTokensHistoricalGet operation
#
##############################################################################
call_dappsCurveTokensHistoricalGet() {
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
# Call dappsCurveTransferOwnershipEventHistoricalGet operation
#
##############################################################################
call_dappsCurveTransferOwnershipEventHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/transferOwnershipEvent/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveUnderlyingCoinHistoricalGet operation
#
##############################################################################
call_dappsCurveUnderlyingCoinHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/underlyingCoin/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveVotingAppHistoricalGet operation
#
##############################################################################
call_dappsCurveVotingAppHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/curve/votingApp/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsCurveWeeklyVolumeHistoricalGet operation
#
##############################################################################
call_dappsCurveWeeklyVolumeHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/curve/weeklyVolume/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsDexBatchHistoricalGet operation
#
##############################################################################
call_dappsDexBatchHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/dapps/dex/batch/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsDexOrdersHistoricalGet operation
#
##############################################################################
call_dappsDexOrdersHistoricalGet() {
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
# Call dappsDexPricesHistoricalGet operation
#
##############################################################################
call_dappsDexPricesHistoricalGet() {
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
# Call dappsDexSolutionHistoricalGet operation
#
##############################################################################
call_dappsDexSolutionHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/dex/solution/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsDexStatsHistoricalGet operation
#
##############################################################################
call_dappsDexStatsHistoricalGet() {
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
# Call dappsDexTokensHistoricalGet operation
#
##############################################################################
call_dappsDexTokensHistoricalGet() {
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
# Call dappsDexTradesHistoricalGet operation
#
##############################################################################
call_dappsDexTradesHistoricalGet() {
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
# Call dappsDexUsersHistoricalGet operation
#
##############################################################################
call_dappsDexUsersHistoricalGet() {
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
# Call dappsDexWithdrawHistoricalGet operation
#
##############################################################################
call_dappsDexWithdrawHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/dex/withdraw/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsDexWithdrawRequestHistoricalGet operation
#
##############################################################################
call_dappsDexWithdrawRequestHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/dex/withdrawRequest/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsSushiswapBundlesHistoricalGet operation
#
##############################################################################
call_dappsSushiswapBundlesHistoricalGet() {
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
# Call dappsSushiswapBurnsHistoricalGet operation
#
##############################################################################
call_dappsSushiswapBurnsHistoricalGet() {
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
# Call dappsSushiswapDayDataHistoricalGet operation
#
##############################################################################
call_dappsSushiswapDayDataHistoricalGet() {
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
# Call dappsSushiswapFactoryHistoricalGet operation
#
##############################################################################
call_dappsSushiswapFactoryHistoricalGet() {
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
# Call dappsSushiswapHourDataHistoricalGet operation
#
##############################################################################
call_dappsSushiswapHourDataHistoricalGet() {
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
# Call dappsSushiswapLiquidityPositionHistoricalGet operation
#
##############################################################################
call_dappsSushiswapLiquidityPositionHistoricalGet() {
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
# Call dappsSushiswapLiquidityPositionSnapshotsHistoricalGet operation
#
##############################################################################
call_dappsSushiswapLiquidityPositionSnapshotsHistoricalGet() {
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
# Call dappsSushiswapMintsHistoricalGet operation
#
##############################################################################
call_dappsSushiswapMintsHistoricalGet() {
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
# Call dappsSushiswapPoolDayDataHistoricalGet operation
#
##############################################################################
call_dappsSushiswapPoolDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/poolDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsSushiswapPoolHourDataHistoricalGet operation
#
##############################################################################
call_dappsSushiswapPoolHourDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/poolHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsSushiswapPoolsCurrentGet operation
#
##############################################################################
call_dappsSushiswapPoolsCurrentGet() {
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
# Call dappsSushiswapPoolsHistoricalGet operation
#
##############################################################################
call_dappsSushiswapPoolsHistoricalGet() {
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
# Call dappsSushiswapSwapsCurrentGet operation
#
##############################################################################
call_dappsSushiswapSwapsCurrentGet() {
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
# Call dappsSushiswapSwapsHistoricalGet operation
#
##############################################################################
call_dappsSushiswapSwapsHistoricalGet() {
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
# Call dappsSushiswapTokenDayDataHistoricalGet operation
#
##############################################################################
call_dappsSushiswapTokenDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/sushiswap/tokenDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsSushiswapTokensCurrentGet operation
#
##############################################################################
call_dappsSushiswapTokensCurrentGet() {
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
# Call dappsSushiswapTokensHistoricalGet operation
#
##############################################################################
call_dappsSushiswapTokensHistoricalGet() {
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
# Call dappsSushiswapTransactionsHistoricalGet operation
#
##############################################################################
call_dappsSushiswapTransactionsHistoricalGet() {
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
# Call dappsSushiswapUsersHistoricalGet operation
#
##############################################################################
call_dappsSushiswapUsersHistoricalGet() {
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
# Call dappsUniswapv2BundlesHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2BundlesHistoricalGet() {
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
# Call dappsUniswapv2BurnsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2BurnsHistoricalGet() {
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
# Call dappsUniswapv2DayDataHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2DayDataHistoricalGet() {
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
# Call dappsUniswapv2FactoryHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2FactoryHistoricalGet() {
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
# Call dappsUniswapv2LiquidityPositionHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2LiquidityPositionHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/liquidityPosition/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/liquidityPositionSnapshots/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv2MintsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2MintsHistoricalGet() {
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
# Call dappsUniswapv2PoolDayDataHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2PoolDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/poolDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv2PoolHourDataHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2PoolHourDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/poolHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv2PoolsCurrentGet operation
#
##############################################################################
call_dappsUniswapv2PoolsCurrentGet() {
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
# Call dappsUniswapv2PoolsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2PoolsHistoricalGet() {
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
# Call dappsUniswapv2SwapsCurrentGet operation
#
##############################################################################
call_dappsUniswapv2SwapsCurrentGet() {
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
# Call dappsUniswapv2SwapsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2SwapsHistoricalGet() {
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
# Call dappsUniswapv2TokenDayDataHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2TokenDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv2/tokenDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv2TokensCurrentGet operation
#
##############################################################################
call_dappsUniswapv2TokensCurrentGet() {
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
# Call dappsUniswapv2TokensHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2TokensHistoricalGet() {
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
# Call dappsUniswapv2TransactionsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2TransactionsHistoricalGet() {
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
# Call dappsUniswapv2UsersHistoricalGet operation
#
##############################################################################
call_dappsUniswapv2UsersHistoricalGet() {
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
# Call dappsUniswapv3BundleCurrentGet operation
#
##############################################################################
call_dappsUniswapv3BundleCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/bundle/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv3BundlesHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3BundlesHistoricalGet() {
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
# Call dappsUniswapv3BurnsCurrentGet operation
#
##############################################################################
call_dappsUniswapv3BurnsCurrentGet() {
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
# Call dappsUniswapv3BurnsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3BurnsHistoricalGet() {
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
# Call dappsUniswapv3DayDataHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3DayDataHistoricalGet() {
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
# Call dappsUniswapv3FactoryCurrentGet operation
#
##############################################################################
call_dappsUniswapv3FactoryCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
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
# Call dappsUniswapv3FactoryHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3FactoryHistoricalGet() {
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
# Call dappsUniswapv3MintsCurrentGet operation
#
##############################################################################
call_dappsUniswapv3MintsCurrentGet() {
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
# Call dappsUniswapv3MintsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3MintsHistoricalGet() {
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
# Call dappsUniswapv3PoolDayDataHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3PoolDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv3PoolHourDataHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3PoolHourDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/poolHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv3PoolsCurrentGet operation
#
##############################################################################
call_dappsUniswapv3PoolsCurrentGet() {
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
# Call dappsUniswapv3PoolsDayDataCurrentGet operation
#
##############################################################################
call_dappsUniswapv3PoolsDayDataCurrentGet() {
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
# Call dappsUniswapv3PoolsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3PoolsHistoricalGet() {
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
# Call dappsUniswapv3PoolsHourDataCurrentGet operation
#
##############################################################################
call_dappsUniswapv3PoolsHourDataCurrentGet() {
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
# Call dappsUniswapv3PositionSnapshotHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3PositionSnapshotHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/positionSnapshot/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv3PositionSnapshotsCurrentGet operation
#
##############################################################################
call_dappsUniswapv3PositionSnapshotsCurrentGet() {
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
# Call dappsUniswapv3PositionsCurrentGet operation
#
##############################################################################
call_dappsUniswapv3PositionsCurrentGet() {
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
# Call dappsUniswapv3PositionsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3PositionsHistoricalGet() {
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
# Call dappsUniswapv3SwapsCurrentGet operation
#
##############################################################################
call_dappsUniswapv3SwapsCurrentGet() {
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
# Call dappsUniswapv3SwapsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3SwapsHistoricalGet() {
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
# Call dappsUniswapv3TickDayDataHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3TickDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tickDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv3TicksCurrentGet operation
#
##############################################################################
call_dappsUniswapv3TicksCurrentGet() {
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
# Call dappsUniswapv3TicksDayDataCurrentGet operation
#
##############################################################################
call_dappsUniswapv3TicksDayDataCurrentGet() {
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
# Call dappsUniswapv3TicksHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3TicksHistoricalGet() {
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
# Call dappsUniswapv3TokenDayDataHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3TokenDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokenDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv3TokenHourDataHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3TokenHourDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/tokenHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call dappsUniswapv3TokensCurrentGet operation
#
##############################################################################
call_dappsUniswapv3TokensCurrentGet() {
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
# Call dappsUniswapv3TokensDayDataCurrentGet operation
#
##############################################################################
call_dappsUniswapv3TokensDayDataCurrentGet() {
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
# Call dappsUniswapv3TokensHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3TokensHistoricalGet() {
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
# Call dappsUniswapv3TokensHourDataCurrentGet operation
#
##############################################################################
call_dappsUniswapv3TokensHourDataCurrentGet() {
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
# Call dappsUniswapv3TransactionsHistoricalGet operation
#
##############################################################################
call_dappsUniswapv3TransactionsHistoricalGet() {
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
# Call dappsUniswapv3UniswapDayDataCurrentGet operation
#
##############################################################################
call_dappsUniswapv3UniswapDayDataCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=()
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/dapps/uniswapv3/uniswapDayData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
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
    dappsCowOrdersHistoricalGet)
    operation="dappsCowOrdersHistoricalGet"
    ;;
    dappsCowSettlementHistoricalGet)
    operation="dappsCowSettlementHistoricalGet"
    ;;
    dappsCowTokensHistoricalGet)
    operation="dappsCowTokensHistoricalGet"
    ;;
    dappsCowTradesHistoricalGet)
    operation="dappsCowTradesHistoricalGet"
    ;;
    dappsCowUsersHistoricalGet)
    operation="dappsCowUsersHistoricalGet"
    ;;
    dappsCurveAccountsHistoricalGet)
    operation="dappsCurveAccountsHistoricalGet"
    ;;
    dappsCurveAddLiquidityEventHistoricalGet)
    operation="dappsCurveAddLiquidityEventHistoricalGet"
    ;;
    dappsCurveAdminFeeChangeLogHistoricalGet)
    operation="dappsCurveAdminFeeChangeLogHistoricalGet"
    ;;
    dappsCurveAmplificationCoeffChangeLogHistoricalGet)
    operation="dappsCurveAmplificationCoeffChangeLogHistoricalGet"
    ;;
    dappsCurveCoinsHistoricalGet)
    operation="dappsCurveCoinsHistoricalGet"
    ;;
    dappsCurveContractsHistoricalGet)
    operation="dappsCurveContractsHistoricalGet"
    ;;
    dappsCurveContractsVersionHistoricalGet)
    operation="dappsCurveContractsVersionHistoricalGet"
    ;;
    dappsCurveDailyVolumeHistoricalGet)
    operation="dappsCurveDailyVolumeHistoricalGet"
    ;;
    dappsCurveFeeChangeLogHistoricalGet)
    operation="dappsCurveFeeChangeLogHistoricalGet"
    ;;
    dappsCurveGaugeDepositHistoricalGet)
    operation="dappsCurveGaugeDepositHistoricalGet"
    ;;
    dappsCurveGaugeHistoricalGet)
    operation="dappsCurveGaugeHistoricalGet"
    ;;
    dappsCurveGaugeLiquidityHistoricalGet)
    operation="dappsCurveGaugeLiquidityHistoricalGet"
    ;;
    dappsCurveGaugeTotalWeightHistoricalGet)
    operation="dappsCurveGaugeTotalWeightHistoricalGet"
    ;;
    dappsCurveGaugeTypeHistoricalGet)
    operation="dappsCurveGaugeTypeHistoricalGet"
    ;;
    dappsCurveGaugeTypeWeightHistoricalGet)
    operation="dappsCurveGaugeTypeWeightHistoricalGet"
    ;;
    dappsCurveGaugeWeightHistoricalGet)
    operation="dappsCurveGaugeWeightHistoricalGet"
    ;;
    dappsCurveGaugeWeightVoteHistoricalGet)
    operation="dappsCurveGaugeWeightVoteHistoricalGet"
    ;;
    dappsCurveGaugeWithdrawHistoricalGet)
    operation="dappsCurveGaugeWithdrawHistoricalGet"
    ;;
    dappsCurveHourlyVolumeHistoricalGet)
    operation="dappsCurveHourlyVolumeHistoricalGet"
    ;;
    dappsCurveLpTokenHistoricalGet)
    operation="dappsCurveLpTokenHistoricalGet"
    ;;
    dappsCurvePoolsHistoricalGet)
    operation="dappsCurvePoolsHistoricalGet"
    ;;
    dappsCurveProposalsHistoricalGet)
    operation="dappsCurveProposalsHistoricalGet"
    ;;
    dappsCurveProposalsVoteHistoricalGet)
    operation="dappsCurveProposalsVoteHistoricalGet"
    ;;
    dappsCurveRemoveLiquidityEventHistoricalGet)
    operation="dappsCurveRemoveLiquidityEventHistoricalGet"
    ;;
    dappsCurveRemoveLiquidityOneEventHistoricalGet)
    operation="dappsCurveRemoveLiquidityOneEventHistoricalGet"
    ;;
    dappsCurveSwapsHistoricalGet)
    operation="dappsCurveSwapsHistoricalGet"
    ;;
    dappsCurveSystemStateHistoricalGet)
    operation="dappsCurveSystemStateHistoricalGet"
    ;;
    dappsCurveTokensHistoricalGet)
    operation="dappsCurveTokensHistoricalGet"
    ;;
    dappsCurveTransferOwnershipEventHistoricalGet)
    operation="dappsCurveTransferOwnershipEventHistoricalGet"
    ;;
    dappsCurveUnderlyingCoinHistoricalGet)
    operation="dappsCurveUnderlyingCoinHistoricalGet"
    ;;
    dappsCurveVotingAppHistoricalGet)
    operation="dappsCurveVotingAppHistoricalGet"
    ;;
    dappsCurveWeeklyVolumeHistoricalGet)
    operation="dappsCurveWeeklyVolumeHistoricalGet"
    ;;
    dappsDexBatchHistoricalGet)
    operation="dappsDexBatchHistoricalGet"
    ;;
    dappsDexOrdersHistoricalGet)
    operation="dappsDexOrdersHistoricalGet"
    ;;
    dappsDexPricesHistoricalGet)
    operation="dappsDexPricesHistoricalGet"
    ;;
    dappsDexSolutionHistoricalGet)
    operation="dappsDexSolutionHistoricalGet"
    ;;
    dappsDexStatsHistoricalGet)
    operation="dappsDexStatsHistoricalGet"
    ;;
    dappsDexTokensHistoricalGet)
    operation="dappsDexTokensHistoricalGet"
    ;;
    dappsDexTradesHistoricalGet)
    operation="dappsDexTradesHistoricalGet"
    ;;
    dappsDexUsersHistoricalGet)
    operation="dappsDexUsersHistoricalGet"
    ;;
    dappsDexWithdrawHistoricalGet)
    operation="dappsDexWithdrawHistoricalGet"
    ;;
    dappsDexWithdrawRequestHistoricalGet)
    operation="dappsDexWithdrawRequestHistoricalGet"
    ;;
    dappsSushiswapBundlesHistoricalGet)
    operation="dappsSushiswapBundlesHistoricalGet"
    ;;
    dappsSushiswapBurnsHistoricalGet)
    operation="dappsSushiswapBurnsHistoricalGet"
    ;;
    dappsSushiswapDayDataHistoricalGet)
    operation="dappsSushiswapDayDataHistoricalGet"
    ;;
    dappsSushiswapFactoryHistoricalGet)
    operation="dappsSushiswapFactoryHistoricalGet"
    ;;
    dappsSushiswapHourDataHistoricalGet)
    operation="dappsSushiswapHourDataHistoricalGet"
    ;;
    dappsSushiswapLiquidityPositionHistoricalGet)
    operation="dappsSushiswapLiquidityPositionHistoricalGet"
    ;;
    dappsSushiswapLiquidityPositionSnapshotsHistoricalGet)
    operation="dappsSushiswapLiquidityPositionSnapshotsHistoricalGet"
    ;;
    dappsSushiswapMintsHistoricalGet)
    operation="dappsSushiswapMintsHistoricalGet"
    ;;
    dappsSushiswapPoolDayDataHistoricalGet)
    operation="dappsSushiswapPoolDayDataHistoricalGet"
    ;;
    dappsSushiswapPoolHourDataHistoricalGet)
    operation="dappsSushiswapPoolHourDataHistoricalGet"
    ;;
    dappsSushiswapPoolsCurrentGet)
    operation="dappsSushiswapPoolsCurrentGet"
    ;;
    dappsSushiswapPoolsHistoricalGet)
    operation="dappsSushiswapPoolsHistoricalGet"
    ;;
    dappsSushiswapSwapsCurrentGet)
    operation="dappsSushiswapSwapsCurrentGet"
    ;;
    dappsSushiswapSwapsHistoricalGet)
    operation="dappsSushiswapSwapsHistoricalGet"
    ;;
    dappsSushiswapTokenDayDataHistoricalGet)
    operation="dappsSushiswapTokenDayDataHistoricalGet"
    ;;
    dappsSushiswapTokensCurrentGet)
    operation="dappsSushiswapTokensCurrentGet"
    ;;
    dappsSushiswapTokensHistoricalGet)
    operation="dappsSushiswapTokensHistoricalGet"
    ;;
    dappsSushiswapTransactionsHistoricalGet)
    operation="dappsSushiswapTransactionsHistoricalGet"
    ;;
    dappsSushiswapUsersHistoricalGet)
    operation="dappsSushiswapUsersHistoricalGet"
    ;;
    dappsUniswapv2BundlesHistoricalGet)
    operation="dappsUniswapv2BundlesHistoricalGet"
    ;;
    dappsUniswapv2BurnsHistoricalGet)
    operation="dappsUniswapv2BurnsHistoricalGet"
    ;;
    dappsUniswapv2DayDataHistoricalGet)
    operation="dappsUniswapv2DayDataHistoricalGet"
    ;;
    dappsUniswapv2FactoryHistoricalGet)
    operation="dappsUniswapv2FactoryHistoricalGet"
    ;;
    dappsUniswapv2LiquidityPositionHistoricalGet)
    operation="dappsUniswapv2LiquidityPositionHistoricalGet"
    ;;
    dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet)
    operation="dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet"
    ;;
    dappsUniswapv2MintsHistoricalGet)
    operation="dappsUniswapv2MintsHistoricalGet"
    ;;
    dappsUniswapv2PoolDayDataHistoricalGet)
    operation="dappsUniswapv2PoolDayDataHistoricalGet"
    ;;
    dappsUniswapv2PoolHourDataHistoricalGet)
    operation="dappsUniswapv2PoolHourDataHistoricalGet"
    ;;
    dappsUniswapv2PoolsCurrentGet)
    operation="dappsUniswapv2PoolsCurrentGet"
    ;;
    dappsUniswapv2PoolsHistoricalGet)
    operation="dappsUniswapv2PoolsHistoricalGet"
    ;;
    dappsUniswapv2SwapsCurrentGet)
    operation="dappsUniswapv2SwapsCurrentGet"
    ;;
    dappsUniswapv2SwapsHistoricalGet)
    operation="dappsUniswapv2SwapsHistoricalGet"
    ;;
    dappsUniswapv2TokenDayDataHistoricalGet)
    operation="dappsUniswapv2TokenDayDataHistoricalGet"
    ;;
    dappsUniswapv2TokensCurrentGet)
    operation="dappsUniswapv2TokensCurrentGet"
    ;;
    dappsUniswapv2TokensHistoricalGet)
    operation="dappsUniswapv2TokensHistoricalGet"
    ;;
    dappsUniswapv2TransactionsHistoricalGet)
    operation="dappsUniswapv2TransactionsHistoricalGet"
    ;;
    dappsUniswapv2UsersHistoricalGet)
    operation="dappsUniswapv2UsersHistoricalGet"
    ;;
    dappsUniswapv3BundleCurrentGet)
    operation="dappsUniswapv3BundleCurrentGet"
    ;;
    dappsUniswapv3BundlesHistoricalGet)
    operation="dappsUniswapv3BundlesHistoricalGet"
    ;;
    dappsUniswapv3BurnsCurrentGet)
    operation="dappsUniswapv3BurnsCurrentGet"
    ;;
    dappsUniswapv3BurnsHistoricalGet)
    operation="dappsUniswapv3BurnsHistoricalGet"
    ;;
    dappsUniswapv3DayDataHistoricalGet)
    operation="dappsUniswapv3DayDataHistoricalGet"
    ;;
    dappsUniswapv3FactoryCurrentGet)
    operation="dappsUniswapv3FactoryCurrentGet"
    ;;
    dappsUniswapv3FactoryHistoricalGet)
    operation="dappsUniswapv3FactoryHistoricalGet"
    ;;
    dappsUniswapv3MintsCurrentGet)
    operation="dappsUniswapv3MintsCurrentGet"
    ;;
    dappsUniswapv3MintsHistoricalGet)
    operation="dappsUniswapv3MintsHistoricalGet"
    ;;
    dappsUniswapv3PoolDayDataHistoricalGet)
    operation="dappsUniswapv3PoolDayDataHistoricalGet"
    ;;
    dappsUniswapv3PoolHourDataHistoricalGet)
    operation="dappsUniswapv3PoolHourDataHistoricalGet"
    ;;
    dappsUniswapv3PoolsCurrentGet)
    operation="dappsUniswapv3PoolsCurrentGet"
    ;;
    dappsUniswapv3PoolsDayDataCurrentGet)
    operation="dappsUniswapv3PoolsDayDataCurrentGet"
    ;;
    dappsUniswapv3PoolsHistoricalGet)
    operation="dappsUniswapv3PoolsHistoricalGet"
    ;;
    dappsUniswapv3PoolsHourDataCurrentGet)
    operation="dappsUniswapv3PoolsHourDataCurrentGet"
    ;;
    dappsUniswapv3PositionSnapshotHistoricalGet)
    operation="dappsUniswapv3PositionSnapshotHistoricalGet"
    ;;
    dappsUniswapv3PositionSnapshotsCurrentGet)
    operation="dappsUniswapv3PositionSnapshotsCurrentGet"
    ;;
    dappsUniswapv3PositionsCurrentGet)
    operation="dappsUniswapv3PositionsCurrentGet"
    ;;
    dappsUniswapv3PositionsHistoricalGet)
    operation="dappsUniswapv3PositionsHistoricalGet"
    ;;
    dappsUniswapv3SwapsCurrentGet)
    operation="dappsUniswapv3SwapsCurrentGet"
    ;;
    dappsUniswapv3SwapsHistoricalGet)
    operation="dappsUniswapv3SwapsHistoricalGet"
    ;;
    dappsUniswapv3TickDayDataHistoricalGet)
    operation="dappsUniswapv3TickDayDataHistoricalGet"
    ;;
    dappsUniswapv3TicksCurrentGet)
    operation="dappsUniswapv3TicksCurrentGet"
    ;;
    dappsUniswapv3TicksDayDataCurrentGet)
    operation="dappsUniswapv3TicksDayDataCurrentGet"
    ;;
    dappsUniswapv3TicksHistoricalGet)
    operation="dappsUniswapv3TicksHistoricalGet"
    ;;
    dappsUniswapv3TokenDayDataHistoricalGet)
    operation="dappsUniswapv3TokenDayDataHistoricalGet"
    ;;
    dappsUniswapv3TokenHourDataHistoricalGet)
    operation="dappsUniswapv3TokenHourDataHistoricalGet"
    ;;
    dappsUniswapv3TokensCurrentGet)
    operation="dappsUniswapv3TokensCurrentGet"
    ;;
    dappsUniswapv3TokensDayDataCurrentGet)
    operation="dappsUniswapv3TokensDayDataCurrentGet"
    ;;
    dappsUniswapv3TokensHistoricalGet)
    operation="dappsUniswapv3TokensHistoricalGet"
    ;;
    dappsUniswapv3TokensHourDataCurrentGet)
    operation="dappsUniswapv3TokensHourDataCurrentGet"
    ;;
    dappsUniswapv3TransactionsHistoricalGet)
    operation="dappsUniswapv3TransactionsHistoricalGet"
    ;;
    dappsUniswapv3UniswapDayDataCurrentGet)
    operation="dappsUniswapv3UniswapDayDataCurrentGet"
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
    dappsCowOrdersHistoricalGet)
    call_dappsCowOrdersHistoricalGet
    ;;
    dappsCowSettlementHistoricalGet)
    call_dappsCowSettlementHistoricalGet
    ;;
    dappsCowTokensHistoricalGet)
    call_dappsCowTokensHistoricalGet
    ;;
    dappsCowTradesHistoricalGet)
    call_dappsCowTradesHistoricalGet
    ;;
    dappsCowUsersHistoricalGet)
    call_dappsCowUsersHistoricalGet
    ;;
    dappsCurveAccountsHistoricalGet)
    call_dappsCurveAccountsHistoricalGet
    ;;
    dappsCurveAddLiquidityEventHistoricalGet)
    call_dappsCurveAddLiquidityEventHistoricalGet
    ;;
    dappsCurveAdminFeeChangeLogHistoricalGet)
    call_dappsCurveAdminFeeChangeLogHistoricalGet
    ;;
    dappsCurveAmplificationCoeffChangeLogHistoricalGet)
    call_dappsCurveAmplificationCoeffChangeLogHistoricalGet
    ;;
    dappsCurveCoinsHistoricalGet)
    call_dappsCurveCoinsHistoricalGet
    ;;
    dappsCurveContractsHistoricalGet)
    call_dappsCurveContractsHistoricalGet
    ;;
    dappsCurveContractsVersionHistoricalGet)
    call_dappsCurveContractsVersionHistoricalGet
    ;;
    dappsCurveDailyVolumeHistoricalGet)
    call_dappsCurveDailyVolumeHistoricalGet
    ;;
    dappsCurveFeeChangeLogHistoricalGet)
    call_dappsCurveFeeChangeLogHistoricalGet
    ;;
    dappsCurveGaugeDepositHistoricalGet)
    call_dappsCurveGaugeDepositHistoricalGet
    ;;
    dappsCurveGaugeHistoricalGet)
    call_dappsCurveGaugeHistoricalGet
    ;;
    dappsCurveGaugeLiquidityHistoricalGet)
    call_dappsCurveGaugeLiquidityHistoricalGet
    ;;
    dappsCurveGaugeTotalWeightHistoricalGet)
    call_dappsCurveGaugeTotalWeightHistoricalGet
    ;;
    dappsCurveGaugeTypeHistoricalGet)
    call_dappsCurveGaugeTypeHistoricalGet
    ;;
    dappsCurveGaugeTypeWeightHistoricalGet)
    call_dappsCurveGaugeTypeWeightHistoricalGet
    ;;
    dappsCurveGaugeWeightHistoricalGet)
    call_dappsCurveGaugeWeightHistoricalGet
    ;;
    dappsCurveGaugeWeightVoteHistoricalGet)
    call_dappsCurveGaugeWeightVoteHistoricalGet
    ;;
    dappsCurveGaugeWithdrawHistoricalGet)
    call_dappsCurveGaugeWithdrawHistoricalGet
    ;;
    dappsCurveHourlyVolumeHistoricalGet)
    call_dappsCurveHourlyVolumeHistoricalGet
    ;;
    dappsCurveLpTokenHistoricalGet)
    call_dappsCurveLpTokenHistoricalGet
    ;;
    dappsCurvePoolsHistoricalGet)
    call_dappsCurvePoolsHistoricalGet
    ;;
    dappsCurveProposalsHistoricalGet)
    call_dappsCurveProposalsHistoricalGet
    ;;
    dappsCurveProposalsVoteHistoricalGet)
    call_dappsCurveProposalsVoteHistoricalGet
    ;;
    dappsCurveRemoveLiquidityEventHistoricalGet)
    call_dappsCurveRemoveLiquidityEventHistoricalGet
    ;;
    dappsCurveRemoveLiquidityOneEventHistoricalGet)
    call_dappsCurveRemoveLiquidityOneEventHistoricalGet
    ;;
    dappsCurveSwapsHistoricalGet)
    call_dappsCurveSwapsHistoricalGet
    ;;
    dappsCurveSystemStateHistoricalGet)
    call_dappsCurveSystemStateHistoricalGet
    ;;
    dappsCurveTokensHistoricalGet)
    call_dappsCurveTokensHistoricalGet
    ;;
    dappsCurveTransferOwnershipEventHistoricalGet)
    call_dappsCurveTransferOwnershipEventHistoricalGet
    ;;
    dappsCurveUnderlyingCoinHistoricalGet)
    call_dappsCurveUnderlyingCoinHistoricalGet
    ;;
    dappsCurveVotingAppHistoricalGet)
    call_dappsCurveVotingAppHistoricalGet
    ;;
    dappsCurveWeeklyVolumeHistoricalGet)
    call_dappsCurveWeeklyVolumeHistoricalGet
    ;;
    dappsDexBatchHistoricalGet)
    call_dappsDexBatchHistoricalGet
    ;;
    dappsDexOrdersHistoricalGet)
    call_dappsDexOrdersHistoricalGet
    ;;
    dappsDexPricesHistoricalGet)
    call_dappsDexPricesHistoricalGet
    ;;
    dappsDexSolutionHistoricalGet)
    call_dappsDexSolutionHistoricalGet
    ;;
    dappsDexStatsHistoricalGet)
    call_dappsDexStatsHistoricalGet
    ;;
    dappsDexTokensHistoricalGet)
    call_dappsDexTokensHistoricalGet
    ;;
    dappsDexTradesHistoricalGet)
    call_dappsDexTradesHistoricalGet
    ;;
    dappsDexUsersHistoricalGet)
    call_dappsDexUsersHistoricalGet
    ;;
    dappsDexWithdrawHistoricalGet)
    call_dappsDexWithdrawHistoricalGet
    ;;
    dappsDexWithdrawRequestHistoricalGet)
    call_dappsDexWithdrawRequestHistoricalGet
    ;;
    dappsSushiswapBundlesHistoricalGet)
    call_dappsSushiswapBundlesHistoricalGet
    ;;
    dappsSushiswapBurnsHistoricalGet)
    call_dappsSushiswapBurnsHistoricalGet
    ;;
    dappsSushiswapDayDataHistoricalGet)
    call_dappsSushiswapDayDataHistoricalGet
    ;;
    dappsSushiswapFactoryHistoricalGet)
    call_dappsSushiswapFactoryHistoricalGet
    ;;
    dappsSushiswapHourDataHistoricalGet)
    call_dappsSushiswapHourDataHistoricalGet
    ;;
    dappsSushiswapLiquidityPositionHistoricalGet)
    call_dappsSushiswapLiquidityPositionHistoricalGet
    ;;
    dappsSushiswapLiquidityPositionSnapshotsHistoricalGet)
    call_dappsSushiswapLiquidityPositionSnapshotsHistoricalGet
    ;;
    dappsSushiswapMintsHistoricalGet)
    call_dappsSushiswapMintsHistoricalGet
    ;;
    dappsSushiswapPoolDayDataHistoricalGet)
    call_dappsSushiswapPoolDayDataHistoricalGet
    ;;
    dappsSushiswapPoolHourDataHistoricalGet)
    call_dappsSushiswapPoolHourDataHistoricalGet
    ;;
    dappsSushiswapPoolsCurrentGet)
    call_dappsSushiswapPoolsCurrentGet
    ;;
    dappsSushiswapPoolsHistoricalGet)
    call_dappsSushiswapPoolsHistoricalGet
    ;;
    dappsSushiswapSwapsCurrentGet)
    call_dappsSushiswapSwapsCurrentGet
    ;;
    dappsSushiswapSwapsHistoricalGet)
    call_dappsSushiswapSwapsHistoricalGet
    ;;
    dappsSushiswapTokenDayDataHistoricalGet)
    call_dappsSushiswapTokenDayDataHistoricalGet
    ;;
    dappsSushiswapTokensCurrentGet)
    call_dappsSushiswapTokensCurrentGet
    ;;
    dappsSushiswapTokensHistoricalGet)
    call_dappsSushiswapTokensHistoricalGet
    ;;
    dappsSushiswapTransactionsHistoricalGet)
    call_dappsSushiswapTransactionsHistoricalGet
    ;;
    dappsSushiswapUsersHistoricalGet)
    call_dappsSushiswapUsersHistoricalGet
    ;;
    dappsUniswapv2BundlesHistoricalGet)
    call_dappsUniswapv2BundlesHistoricalGet
    ;;
    dappsUniswapv2BurnsHistoricalGet)
    call_dappsUniswapv2BurnsHistoricalGet
    ;;
    dappsUniswapv2DayDataHistoricalGet)
    call_dappsUniswapv2DayDataHistoricalGet
    ;;
    dappsUniswapv2FactoryHistoricalGet)
    call_dappsUniswapv2FactoryHistoricalGet
    ;;
    dappsUniswapv2LiquidityPositionHistoricalGet)
    call_dappsUniswapv2LiquidityPositionHistoricalGet
    ;;
    dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet)
    call_dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet
    ;;
    dappsUniswapv2MintsHistoricalGet)
    call_dappsUniswapv2MintsHistoricalGet
    ;;
    dappsUniswapv2PoolDayDataHistoricalGet)
    call_dappsUniswapv2PoolDayDataHistoricalGet
    ;;
    dappsUniswapv2PoolHourDataHistoricalGet)
    call_dappsUniswapv2PoolHourDataHistoricalGet
    ;;
    dappsUniswapv2PoolsCurrentGet)
    call_dappsUniswapv2PoolsCurrentGet
    ;;
    dappsUniswapv2PoolsHistoricalGet)
    call_dappsUniswapv2PoolsHistoricalGet
    ;;
    dappsUniswapv2SwapsCurrentGet)
    call_dappsUniswapv2SwapsCurrentGet
    ;;
    dappsUniswapv2SwapsHistoricalGet)
    call_dappsUniswapv2SwapsHistoricalGet
    ;;
    dappsUniswapv2TokenDayDataHistoricalGet)
    call_dappsUniswapv2TokenDayDataHistoricalGet
    ;;
    dappsUniswapv2TokensCurrentGet)
    call_dappsUniswapv2TokensCurrentGet
    ;;
    dappsUniswapv2TokensHistoricalGet)
    call_dappsUniswapv2TokensHistoricalGet
    ;;
    dappsUniswapv2TransactionsHistoricalGet)
    call_dappsUniswapv2TransactionsHistoricalGet
    ;;
    dappsUniswapv2UsersHistoricalGet)
    call_dappsUniswapv2UsersHistoricalGet
    ;;
    dappsUniswapv3BundleCurrentGet)
    call_dappsUniswapv3BundleCurrentGet
    ;;
    dappsUniswapv3BundlesHistoricalGet)
    call_dappsUniswapv3BundlesHistoricalGet
    ;;
    dappsUniswapv3BurnsCurrentGet)
    call_dappsUniswapv3BurnsCurrentGet
    ;;
    dappsUniswapv3BurnsHistoricalGet)
    call_dappsUniswapv3BurnsHistoricalGet
    ;;
    dappsUniswapv3DayDataHistoricalGet)
    call_dappsUniswapv3DayDataHistoricalGet
    ;;
    dappsUniswapv3FactoryCurrentGet)
    call_dappsUniswapv3FactoryCurrentGet
    ;;
    dappsUniswapv3FactoryHistoricalGet)
    call_dappsUniswapv3FactoryHistoricalGet
    ;;
    dappsUniswapv3MintsCurrentGet)
    call_dappsUniswapv3MintsCurrentGet
    ;;
    dappsUniswapv3MintsHistoricalGet)
    call_dappsUniswapv3MintsHistoricalGet
    ;;
    dappsUniswapv3PoolDayDataHistoricalGet)
    call_dappsUniswapv3PoolDayDataHistoricalGet
    ;;
    dappsUniswapv3PoolHourDataHistoricalGet)
    call_dappsUniswapv3PoolHourDataHistoricalGet
    ;;
    dappsUniswapv3PoolsCurrentGet)
    call_dappsUniswapv3PoolsCurrentGet
    ;;
    dappsUniswapv3PoolsDayDataCurrentGet)
    call_dappsUniswapv3PoolsDayDataCurrentGet
    ;;
    dappsUniswapv3PoolsHistoricalGet)
    call_dappsUniswapv3PoolsHistoricalGet
    ;;
    dappsUniswapv3PoolsHourDataCurrentGet)
    call_dappsUniswapv3PoolsHourDataCurrentGet
    ;;
    dappsUniswapv3PositionSnapshotHistoricalGet)
    call_dappsUniswapv3PositionSnapshotHistoricalGet
    ;;
    dappsUniswapv3PositionSnapshotsCurrentGet)
    call_dappsUniswapv3PositionSnapshotsCurrentGet
    ;;
    dappsUniswapv3PositionsCurrentGet)
    call_dappsUniswapv3PositionsCurrentGet
    ;;
    dappsUniswapv3PositionsHistoricalGet)
    call_dappsUniswapv3PositionsHistoricalGet
    ;;
    dappsUniswapv3SwapsCurrentGet)
    call_dappsUniswapv3SwapsCurrentGet
    ;;
    dappsUniswapv3SwapsHistoricalGet)
    call_dappsUniswapv3SwapsHistoricalGet
    ;;
    dappsUniswapv3TickDayDataHistoricalGet)
    call_dappsUniswapv3TickDayDataHistoricalGet
    ;;
    dappsUniswapv3TicksCurrentGet)
    call_dappsUniswapv3TicksCurrentGet
    ;;
    dappsUniswapv3TicksDayDataCurrentGet)
    call_dappsUniswapv3TicksDayDataCurrentGet
    ;;
    dappsUniswapv3TicksHistoricalGet)
    call_dappsUniswapv3TicksHistoricalGet
    ;;
    dappsUniswapv3TokenDayDataHistoricalGet)
    call_dappsUniswapv3TokenDayDataHistoricalGet
    ;;
    dappsUniswapv3TokenHourDataHistoricalGet)
    call_dappsUniswapv3TokenHourDataHistoricalGet
    ;;
    dappsUniswapv3TokensCurrentGet)
    call_dappsUniswapv3TokensCurrentGet
    ;;
    dappsUniswapv3TokensDayDataCurrentGet)
    call_dappsUniswapv3TokensDayDataCurrentGet
    ;;
    dappsUniswapv3TokensHistoricalGet)
    call_dappsUniswapv3TokensHistoricalGet
    ;;
    dappsUniswapv3TokensHourDataCurrentGet)
    call_dappsUniswapv3TokensHourDataCurrentGet
    ;;
    dappsUniswapv3TransactionsHistoricalGet)
    call_dappsUniswapv3TransactionsHistoricalGet
    ;;
    dappsUniswapv3UniswapDayDataCurrentGet)
    call_dappsUniswapv3UniswapDayDataCurrentGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
