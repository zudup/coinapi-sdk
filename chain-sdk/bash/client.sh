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
operation_parameters_minimum_occurrences["chainsChainIdDappsDexBatchHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexBatchHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexBatchHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexBatchHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexBatchHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBundlesHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBundlesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBundlesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBundlesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBundlesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapDayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapFactoryHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapFactoryHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapFactoryHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapFactoryHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapFactoryHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapHourDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapHourDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapHourDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapHourDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapHourDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowOrdersHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCowOrdersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowOrdersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowOrdersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowOrdersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowPoiHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCowPoiHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowPoiHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowPoiHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowPoiHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPoiHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPoiHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPoiHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPoiHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPoiHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoiHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoiHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoiHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoiHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoiHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoiHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoiHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoiHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoiHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoiHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowSettlementHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCowSettlementHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowSettlementHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowSettlementHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowSettlementHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexStatsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexStatsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexStatsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexStatsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexStatsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapPoolsCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapSwapsCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokensCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTradesHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTradesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTradesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTradesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowTradesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTradesHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTradesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTradesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTradesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTradesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2PoolsCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2SwapsCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2TokensCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundleCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionsCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PositionsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3SwapsCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3SwapsCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TicksCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TicksCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TicksDayDataCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TicksDayDataCurrentGet:::filter_pool_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensCurrentGet:::filter_token_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensDayDataCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensDayDataCurrentGet:::filter_token_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensHourDataCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3TokensHourDataCurrentGet:::filter_token_id"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCowUsersHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsCowUsersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowUsersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowUsersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsCowUsersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexUsersHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexUsersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexUsersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexUsersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexUsersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapUsersHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapUsersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapUsersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapUsersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsSushiswapUsersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2UsersHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2UsersHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2UsersHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2UsersHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv2UsersHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::tokenId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::tokenId"]=0

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["chainsChainIdDappsDexBatchHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexBatchHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexBatchHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexBatchHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexBatchHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBundlesHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBundlesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBundlesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBundlesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBundlesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapBurnsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapDayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapFactoryHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapFactoryHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapFactoryHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapFactoryHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapFactoryHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapHourDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapHourDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapHourDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapHourDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapHourDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapMintsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2MintsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowOrdersHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowOrdersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowOrdersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowOrdersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowOrdersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexOrdersHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowPoiHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowPoiHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowPoiHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowPoiHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowPoiHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPoiHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPoiHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPoiHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPoiHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPoiHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoiHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoiHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoiHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoiHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoiHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoiHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoiHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoiHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoiHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoiHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurvePoolsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexPricesHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowSettlementHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowSettlementHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowSettlementHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowSettlementHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowSettlementHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexSolutionHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexStatsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexStatsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexStatsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexStatsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexStatsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapPoolsCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapSwapsCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokensCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveSwapsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapSwapsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TicksHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCurveTokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTradesHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTradesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTradesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTradesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowTradesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTradesHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTradesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTradesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTradesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTradesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2PoolsCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2SwapsCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2TokensCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundleCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionsCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PositionsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3SwapsCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3SwapsCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TicksCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TicksCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TicksDayDataCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TicksDayDataCurrentGet:::filter_pool_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensCurrentGet:::filter_token_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensDayDataCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensDayDataCurrentGet:::filter_token_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensHourDataCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3TokensHourDataCurrentGet:::filter_token_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowUsersHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowUsersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowUsersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowUsersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsCowUsersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexUsersHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexUsersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexUsersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexUsersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexUsersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapUsersHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapUsersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapUsersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapUsersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsSushiswapUsersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2UsersHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2UsersHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2UsersHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2UsersHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv2UsersHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawHistoricalGet:::tokenId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::tokenId"]=0

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["chainsChainIdDappsDexBatchHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexBatchHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexBatchHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexBatchHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexBatchHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBundlesHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBundlesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBundlesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBundlesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBundlesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BundlesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBurnsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBurnsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBurnsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBurnsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBurnsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapBurnsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2BurnsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapDayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapFactoryHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapFactoryHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapFactoryHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapFactoryHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapFactoryHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2FactoryHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapHourDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapHourDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapHourDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapHourDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapHourDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapMintsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapMintsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapMintsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapMintsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapMintsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapMintsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2MintsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2MintsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2MintsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2MintsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2MintsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2MintsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsCowOrdersHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCowOrdersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowOrdersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowOrdersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCowOrdersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexOrdersHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexOrdersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexOrdersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexOrdersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexOrdersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexOrdersHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsCowPoiHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCowPoiHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowPoiHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowPoiHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCowPoiHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPoiHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPoiHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPoiHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPoiHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPoiHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoiHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoiHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoiHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoiHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoiHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoiHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoiHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoiHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoiHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoiHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoiHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolDayDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolHourDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsCurvePoolsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCurvePoolsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCurvePoolsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCurvePoolsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCurvePoolsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCurvePoolsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPricesHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPricesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPricesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPricesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPricesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexPricesHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsCowSettlementHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCowSettlementHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowSettlementHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowSettlementHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCowSettlementHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexSolutionHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexSolutionHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexSolutionHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexSolutionHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexSolutionHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexSolutionHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsDexStatsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexStatsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexStatsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexStatsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexStatsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapPoolsCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapSwapsCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokensCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveSwapsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveSwapsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveSwapsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveSwapsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveSwapsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveSwapsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapSwapsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapSwapsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapSwapsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapSwapsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapSwapsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapSwapsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2SwapsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3SwapsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TickDayDataHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TicksHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TicksHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TicksHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TicksHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TicksHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TicksHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokenDayDataHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTokensHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveTokensHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveTokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveTokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveTokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveTokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCurveTokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokensHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokensHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTradesHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTradesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTradesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTradesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCowTradesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTradesHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTradesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTradesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTradesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTradesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapTransactionsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TransactionsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TransactionsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2DayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3DayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2PoolsCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2SwapsCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2TokensCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundleCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionsCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PositionsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3SwapsCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3SwapsCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TicksCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TicksCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TicksDayDataCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TicksDayDataCurrentGet:::filter_pool_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensCurrentGet:::filter_token_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensDayDataCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensDayDataCurrentGet:::filter_token_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensHourDataCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3TokensHourDataCurrentGet:::filter_token_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCowUsersHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsCowUsersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowUsersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsCowUsersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsCowUsersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexUsersHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexUsersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexUsersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexUsersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexUsersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapUsersHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapUsersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapUsersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapUsersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsSushiswapUsersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2UsersHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2UsersHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2UsersHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2UsersHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv2UsersHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawHistoricalGet:::tokenId"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexWithdrawRequestHistoricalGet:::tokenId"]=""


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
    echo -e "${BOLD}${WHITE}[batch]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsDexBatchHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[bundles]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapBundlesHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2BundlesHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3BundlesHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[burns]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapBurnsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2BurnsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3BurnsHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[dayData]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapDayDataHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[deposit]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsDexTokensHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[factory]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapFactoryHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2FactoryHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3FactoryHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[hourData]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapHourDataHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[liquidityPosition]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[liquidityPositionSnapshots]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[mints]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapMintsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2MintsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3MintsHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[orders]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsCowOrdersHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsDexOrdersHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[poi]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsCowPoiHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsDexPoiHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsSushiswapPoiHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2PoiHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3PoiHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[poolDayData]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapPoolDayDataHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[poolHourData]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapPoolHourDataHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[pools]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsCurvePoolsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsSushiswapPoolsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2PoolsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3PoolsHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[positionSnapshot]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[positions]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3PositionsHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[prices]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsDexPricesHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[settlement]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsCowSettlementHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[solution]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsDexSolutionHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[stats]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsDexStatsHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[sushiswap]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapPoolsCurrentGet${OFF};GetPools
  ${CYAN}chainsChainIdDappsSushiswapSwapsCurrentGet${OFF};GetSwaps
  ${CYAN}chainsChainIdDappsSushiswapTokensCurrentGet${OFF};GetTokens
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[swaps]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsCurveSwapsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsSushiswapSwapsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2SwapsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3SwapsHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[tickDayData]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3TickDayDataHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[ticks]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3TicksHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[tokenDayData]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapTokenDayDataHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[tokenHourData]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[tokens]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsCowTokensHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsCurveTokensHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsSushiswapTokensHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2TokensHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3TokensHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[trades]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsCowTradesHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsDexTradesHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[transactions]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsSushiswapTransactionsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2TransactionsHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3TransactionsHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapDayData]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv2DayDataHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv3DayDataHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV2]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv2PoolsCurrentGet${OFF};GetPools
  ${CYAN}chainsChainIdDappsUniswapv2SwapsCurrentGet${OFF};GetSwaps
  ${CYAN}chainsChainIdDappsUniswapv2TokensCurrentGet${OFF};GetTokens
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[uniswapV3]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3BundleCurrentGet${OFF};GetBundles
  ${CYAN}chainsChainIdDappsUniswapv3BurnsCurrentGet${OFF};GetBurns
  ${CYAN}chainsChainIdDappsUniswapv3FactoryCurrentGet${OFF};GetFactory
  ${CYAN}chainsChainIdDappsUniswapv3MintsCurrentGet${OFF};GetMints
  ${CYAN}chainsChainIdDappsUniswapv3PoolsCurrentGet${OFF};GetPools
  ${CYAN}chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet${OFF};GetPoolsDayData
  ${CYAN}chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet${OFF};GetPoolsHourData
  ${CYAN}chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet${OFF};GetPositionSnapshot
  ${CYAN}chainsChainIdDappsUniswapv3PositionsCurrentGet${OFF};GetPositions
  ${CYAN}chainsChainIdDappsUniswapv3SwapsCurrentGet${OFF};GetSwaps
  ${CYAN}chainsChainIdDappsUniswapv3TicksCurrentGet${OFF};GetTicks
  ${CYAN}chainsChainIdDappsUniswapv3TicksDayDataCurrentGet${OFF};GetTicksDayData
  ${CYAN}chainsChainIdDappsUniswapv3TokensCurrentGet${OFF};GetTokens
  ${CYAN}chainsChainIdDappsUniswapv3TokensDayDataCurrentGet${OFF};GetTokensDayData
  ${CYAN}chainsChainIdDappsUniswapv3TokensHourDataCurrentGet${OFF};GetTokensHourData
  ${CYAN}chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet${OFF};GetUniswapDayData
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[users]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsCowUsersHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsDexUsersHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsSushiswapUsersHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsUniswapv2UsersHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[withdraw]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsDexWithdrawHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[withdrawRequest]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsDexWithdrawRequestHistoricalGet${OFF};
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
# Print help for chainsChainIdDappsDexBatchHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexBatchHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexBatchHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapBundlesHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapBundlesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapBundlesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2BundlesHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2BundlesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2BundlesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3BundlesHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3BundlesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3BundlesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapBurnsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapBurnsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapBurnsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2BurnsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2BurnsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2BurnsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3BurnsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3BurnsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3BurnsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapDayDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsDexTokensHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexTokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexTokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapFactoryHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapFactoryHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapFactoryHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2FactoryHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2FactoryHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2FactoryHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3FactoryHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3FactoryHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3FactoryHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapHourDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapHourDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapHourDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapMintsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapMintsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapMintsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2MintsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2MintsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2MintsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3MintsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3MintsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3MintsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsCowOrdersHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsCowOrdersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsCowOrdersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsDexOrdersHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexOrdersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexOrdersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsCowPoiHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsCowPoiHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsCowPoiHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsDexPoiHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexPoiHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexPoiHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapPoiHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapPoiHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapPoiHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2PoiHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2PoiHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2PoiHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3PoiHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PoiHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PoiHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapPoolDayDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapPoolDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapPoolDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapPoolHourDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapPoolHourDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapPoolHourDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsCurvePoolsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsCurvePoolsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsCurvePoolsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapPoolsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapPoolsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapPoolsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2PoolsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2PoolsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2PoolsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3PoolsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PoolsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PoolsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3PositionsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PositionsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PositionsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsDexPricesHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexPricesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexPricesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsCowSettlementHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsCowSettlementHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsCowSettlementHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsDexSolutionHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexSolutionHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexSolutionHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsDexStatsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexStatsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexStatsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapPoolsCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapPoolsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapPoolsCurrentGet - GetPools${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s." | paste -sd' ' | fold -sw 80
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsSushiswapSwapsCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapSwapsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapSwapsCurrentGet - GetSwaps${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsSushiswapTokensCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapTokensCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapTokensCurrentGet - GetTokens${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsCurveSwapsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsCurveSwapsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsCurveSwapsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapSwapsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapSwapsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapSwapsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2SwapsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2SwapsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2SwapsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3SwapsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3SwapsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3SwapsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3TickDayDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TickDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TickDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3TicksHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TicksHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TicksHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapTokenDayDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapTokenDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapTokenDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsCowTokensHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsCowTokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsCowTokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsCurveTokensHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsCurveTokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsCurveTokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapTokensHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapTokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapTokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2TokensHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2TokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2TokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3TokensHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TokensHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TokensHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsCowTradesHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsCowTradesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsCowTradesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsDexTradesHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexTradesHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexTradesHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapTransactionsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapTransactionsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapTransactionsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2TransactionsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2TransactionsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2TransactionsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3TransactionsHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TransactionsHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TransactionsHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2DayDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2DayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2DayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv3DayDataHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3DayDataHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3DayDataHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2PoolsCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2PoolsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2PoolsCurrentGet - GetPools${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv2SwapsCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2SwapsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2SwapsCurrentGet - GetSwaps${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv2TokensCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2TokensCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2TokensCurrentGet - GetTokens${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3BundleCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3BundleCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3BundleCurrentGet - GetBundles${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3BurnsCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3BurnsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3BurnsCurrentGet - GetBurns${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3FactoryCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3FactoryCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3FactoryCurrentGet - GetFactory${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3MintsCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3MintsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3MintsCurrentGet - GetMints${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3PoolsCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PoolsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PoolsCurrentGet - GetPools${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet - GetPoolsDayData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet - GetPoolsHourData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet - GetPositionSnapshot${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3PositionsCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3PositionsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3PositionsCurrentGet - GetPositions${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3SwapsCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3SwapsCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3SwapsCurrentGet - GetSwaps${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3TicksCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TicksCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TicksCurrentGet - GetTicks${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3TicksDayDataCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TicksDayDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TicksDayDataCurrentGet - GetTicksDayData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_pool_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - Filter pool id${YELLOW} Specify as: filter_pool_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3TokensCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TokensCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TokensCurrentGet - GetTokens${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_token_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_token_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3TokensDayDataCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TokensDayDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TokensDayDataCurrentGet - GetTokensDayData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_token_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_token_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3TokensHourDataCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3TokensHourDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3TokensHourDataCurrentGet - GetTokensHourData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e "  * ${GREEN}filter_token_id${OFF} ${BLUE}[string]${OFF} ${CYAN}(default: null)${OFF} - ${YELLOW} Specify as: filter_token_id=value${OFF}" \
        | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet - GetUniswapDayData${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} - Chain id ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo ""
    echo -e "${BOLD}${WHITE}Responses${OFF}"
    code=200
    echo -e "${result_color_table[${code:0:1}]}  200;successful operation${OFF}" | paste -sd' ' | column -t -s ';' | fold -sw 80 | sed '2,$s/^/       /'
}
##############################################################################
#
# Print help for chainsChainIdDappsCowUsersHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsCowUsersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsCowUsersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsDexUsersHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexUsersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexUsersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsSushiswapUsersHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsSushiswapUsersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsSushiswapUsersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsUniswapv2UsersHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsUniswapv2UsersHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsUniswapv2UsersHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsDexWithdrawHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexWithdrawHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexWithdrawHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Print help for chainsChainIdDappsDexWithdrawRequestHistoricalGet operation
#
##############################################################################
print_chainsChainIdDappsDexWithdrawRequestHistoricalGet_help() {
    echo ""
    echo -e "${BOLD}${WHITE}chainsChainIdDappsDexWithdrawRequestHistoricalGet - ${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
    echo -e ""
    echo -e "${BOLD}${WHITE}Parameters${OFF}"
    echo -e "  * ${GREEN}chain_id${OFF} ${BLUE}[string]${OFF} ${RED}(required)${OFF} ${CYAN}(default: null)${OFF} -  ${YELLOW}Specify as: chain_id=value${OFF}" | paste -sd' ' | fold -sw 80 | sed '2,$s/^/    /'
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
# Call chainsChainIdDappsDexBatchHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexBatchHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/batch/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapBundlesHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapBundlesHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/bundles/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2BundlesHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2BundlesHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/bundles/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3BundlesHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3BundlesHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/bundles/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapBurnsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapBurnsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/burns/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2BurnsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2BurnsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/burns/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3BurnsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3BurnsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/burns/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapDayDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/dayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsDexTokensHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexTokensHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapFactoryHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapFactoryHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/factory/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2FactoryHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2FactoryHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/factory/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3FactoryHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3FactoryHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/factory/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapHourDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapHourDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/hourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/liquidityPosition/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/liquidityPosition/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/liquidityPositionSnapshots/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/liquidityPositionSnapshots/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapMintsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapMintsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/mints/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2MintsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2MintsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/mints/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3MintsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3MintsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/mints/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsCowOrdersHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsCowOrdersHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/cow/orders/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsDexOrdersHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexOrdersHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/orders/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsCowPoiHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsCowPoiHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/cow/poi/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsDexPoiHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexPoiHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/poi/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapPoiHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapPoiHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/poi/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2PoiHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2PoiHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/poi/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PoiHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PoiHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/poi/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapPoolDayDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapPoolDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/poolDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/poolDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/poolDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapPoolHourDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapPoolHourDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/poolHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/poolHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/poolHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsCurvePoolsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsCurvePoolsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/curve/pools/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapPoolsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapPoolsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/pools/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2PoolsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2PoolsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/pools/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PoolsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PoolsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/pools/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/positionSnapshot/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PositionsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PositionsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/positions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsDexPricesHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexPricesHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/prices/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsCowSettlementHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsCowSettlementHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/cow/settlement/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsDexSolutionHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexSolutionHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/solution/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsDexStatsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexStatsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/stats/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapPoolsCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapPoolsCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/pools/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapSwapsCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapSwapsCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/swaps/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapTokensCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapTokensCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/tokens/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsCurveSwapsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsCurveSwapsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/curve/swaps/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapSwapsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapSwapsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/swaps/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2SwapsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2SwapsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/swaps/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3SwapsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3SwapsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/swaps/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TickDayDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TickDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/tickDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TicksHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TicksHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate poolId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/ticks/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapTokenDayDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapTokenDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/tokenDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/tokenDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/tokenDayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/tokenHourData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsCowTokensHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsCowTokensHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/cow/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsCurveTokensHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsCurveTokensHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/curve/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapTokensHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapTokensHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2TokensHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2TokensHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TokensHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TokensHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/tokens/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsCowTradesHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsCowTradesHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/cow/trades/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsDexTradesHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexTradesHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/trades/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapTransactionsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapTransactionsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/transactions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2TransactionsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2TransactionsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/transactions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TransactionsHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TransactionsHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/transactions/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2DayDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2DayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/dayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3DayDataHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3DayDataHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/dayData/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2PoolsCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2PoolsCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/pools/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2SwapsCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2SwapsCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/swaps/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2TokensCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2TokensCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/tokens/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3BundleCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3BundleCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/bundle/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3BurnsCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3BurnsCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/burns/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3FactoryCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3FactoryCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/factory/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3MintsCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3MintsCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/mints/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PoolsCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PoolsCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/pools/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/poolsDayData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/poolsHourData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/positionSnapshots/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3PositionsCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3PositionsCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/positions/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3SwapsCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3SwapsCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/swaps/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TicksCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TicksCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/ticks/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TicksDayDataCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TicksDayDataCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_pool_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/ticksDayData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TokensCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TokensCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_token_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/tokens/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TokensDayDataCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TokensDayDataCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_token_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/tokensDayData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3TokensHourDataCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3TokensHourDataCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(filter_token_id)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/tokensHourData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=()
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv3/uniswapDayData/current" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsCowUsersHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsCowUsersHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/cow/users/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsDexUsersHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexUsersHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/users/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsSushiswapUsersHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsSushiswapUsersHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/sushiswap/users/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsUniswapv2UsersHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsUniswapv2UsersHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/uniswapv2/users/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsDexWithdrawHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexWithdrawHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/withdraw/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
    fi
    if [[ "$print_curl" = true ]]; then
        echo "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    else
        eval "curl -d '' ${basic_auth_option} ${curl_arguments} ${headers_curl} -X ${method} \"${host}${path}\""
    fi
}

##############################################################################
#
# Call chainsChainIdDappsDexWithdrawRequestHistoricalGet operation
#
##############################################################################
call_chainsChainIdDappsDexWithdrawRequestHistoricalGet() {
    # ignore error about 'path_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local path_parameter_names=(chain_id)
    # ignore error about 'query_parameter_names' being unused; passed by reference
    # shellcheck disable=SC2034
    local query_parameter_names=(startBlock endBlock startDate endDate tokenId)
    local path

    if ! path=$(build_request_path "/chains/{chain_id}/dapps/dex/withdrawRequest/historical" path_parameter_names query_parameter_names); then
        ERROR_MSG=$path
        exit 1
    fi
    local method="GET"
    local headers_curl
    headers_curl=$(header_arguments_to_curl)
    if [[ -n $header_accept ]]; then
        headers_curl="${headers_curl} -H 'Accept: ${header_accept}'"
    fi

    local basic_auth_option=""
    if [[ -n $basic_auth_credential ]]; then
        basic_auth_option="-u ${basic_auth_credential}"
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
    chainsChainIdDappsDexBatchHistoricalGet)
    operation="chainsChainIdDappsDexBatchHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapBundlesHistoricalGet)
    operation="chainsChainIdDappsSushiswapBundlesHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2BundlesHistoricalGet)
    operation="chainsChainIdDappsUniswapv2BundlesHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3BundlesHistoricalGet)
    operation="chainsChainIdDappsUniswapv3BundlesHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapBurnsHistoricalGet)
    operation="chainsChainIdDappsSushiswapBurnsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2BurnsHistoricalGet)
    operation="chainsChainIdDappsUniswapv2BurnsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3BurnsHistoricalGet)
    operation="chainsChainIdDappsUniswapv3BurnsHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapDayDataHistoricalGet)
    operation="chainsChainIdDappsSushiswapDayDataHistoricalGet"
    ;;
    chainsChainIdDappsDexTokensHistoricalGet)
    operation="chainsChainIdDappsDexTokensHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapFactoryHistoricalGet)
    operation="chainsChainIdDappsSushiswapFactoryHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2FactoryHistoricalGet)
    operation="chainsChainIdDappsUniswapv2FactoryHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3FactoryHistoricalGet)
    operation="chainsChainIdDappsUniswapv3FactoryHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapHourDataHistoricalGet)
    operation="chainsChainIdDappsSushiswapHourDataHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet)
    operation="chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet)
    operation="chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet)
    operation="chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet)
    operation="chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapMintsHistoricalGet)
    operation="chainsChainIdDappsSushiswapMintsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2MintsHistoricalGet)
    operation="chainsChainIdDappsUniswapv2MintsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3MintsHistoricalGet)
    operation="chainsChainIdDappsUniswapv3MintsHistoricalGet"
    ;;
    chainsChainIdDappsCowOrdersHistoricalGet)
    operation="chainsChainIdDappsCowOrdersHistoricalGet"
    ;;
    chainsChainIdDappsDexOrdersHistoricalGet)
    operation="chainsChainIdDappsDexOrdersHistoricalGet"
    ;;
    chainsChainIdDappsCowPoiHistoricalGet)
    operation="chainsChainIdDappsCowPoiHistoricalGet"
    ;;
    chainsChainIdDappsDexPoiHistoricalGet)
    operation="chainsChainIdDappsDexPoiHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapPoiHistoricalGet)
    operation="chainsChainIdDappsSushiswapPoiHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2PoiHistoricalGet)
    operation="chainsChainIdDappsUniswapv2PoiHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3PoiHistoricalGet)
    operation="chainsChainIdDappsUniswapv3PoiHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapPoolDayDataHistoricalGet)
    operation="chainsChainIdDappsSushiswapPoolDayDataHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapPoolHourDataHistoricalGet)
    operation="chainsChainIdDappsSushiswapPoolHourDataHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet"
    ;;
    chainsChainIdDappsCurvePoolsHistoricalGet)
    operation="chainsChainIdDappsCurvePoolsHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapPoolsHistoricalGet)
    operation="chainsChainIdDappsSushiswapPoolsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2PoolsHistoricalGet)
    operation="chainsChainIdDappsUniswapv2PoolsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3PoolsHistoricalGet)
    operation="chainsChainIdDappsUniswapv3PoolsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet)
    operation="chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3PositionsHistoricalGet)
    operation="chainsChainIdDappsUniswapv3PositionsHistoricalGet"
    ;;
    chainsChainIdDappsDexPricesHistoricalGet)
    operation="chainsChainIdDappsDexPricesHistoricalGet"
    ;;
    chainsChainIdDappsCowSettlementHistoricalGet)
    operation="chainsChainIdDappsCowSettlementHistoricalGet"
    ;;
    chainsChainIdDappsDexSolutionHistoricalGet)
    operation="chainsChainIdDappsDexSolutionHistoricalGet"
    ;;
    chainsChainIdDappsDexStatsHistoricalGet)
    operation="chainsChainIdDappsDexStatsHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapPoolsCurrentGet)
    operation="chainsChainIdDappsSushiswapPoolsCurrentGet"
    ;;
    chainsChainIdDappsSushiswapSwapsCurrentGet)
    operation="chainsChainIdDappsSushiswapSwapsCurrentGet"
    ;;
    chainsChainIdDappsSushiswapTokensCurrentGet)
    operation="chainsChainIdDappsSushiswapTokensCurrentGet"
    ;;
    chainsChainIdDappsCurveSwapsHistoricalGet)
    operation="chainsChainIdDappsCurveSwapsHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapSwapsHistoricalGet)
    operation="chainsChainIdDappsSushiswapSwapsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2SwapsHistoricalGet)
    operation="chainsChainIdDappsUniswapv2SwapsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3SwapsHistoricalGet)
    operation="chainsChainIdDappsUniswapv3SwapsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3TickDayDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv3TickDayDataHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3TicksHistoricalGet)
    operation="chainsChainIdDappsUniswapv3TicksHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapTokenDayDataHistoricalGet)
    operation="chainsChainIdDappsSushiswapTokenDayDataHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet"
    ;;
    chainsChainIdDappsCowTokensHistoricalGet)
    operation="chainsChainIdDappsCowTokensHistoricalGet"
    ;;
    chainsChainIdDappsCurveTokensHistoricalGet)
    operation="chainsChainIdDappsCurveTokensHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapTokensHistoricalGet)
    operation="chainsChainIdDappsSushiswapTokensHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2TokensHistoricalGet)
    operation="chainsChainIdDappsUniswapv2TokensHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3TokensHistoricalGet)
    operation="chainsChainIdDappsUniswapv3TokensHistoricalGet"
    ;;
    chainsChainIdDappsCowTradesHistoricalGet)
    operation="chainsChainIdDappsCowTradesHistoricalGet"
    ;;
    chainsChainIdDappsDexTradesHistoricalGet)
    operation="chainsChainIdDappsDexTradesHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapTransactionsHistoricalGet)
    operation="chainsChainIdDappsSushiswapTransactionsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2TransactionsHistoricalGet)
    operation="chainsChainIdDappsUniswapv2TransactionsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3TransactionsHistoricalGet)
    operation="chainsChainIdDappsUniswapv3TransactionsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2DayDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv2DayDataHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3DayDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv3DayDataHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2PoolsCurrentGet)
    operation="chainsChainIdDappsUniswapv2PoolsCurrentGet"
    ;;
    chainsChainIdDappsUniswapv2SwapsCurrentGet)
    operation="chainsChainIdDappsUniswapv2SwapsCurrentGet"
    ;;
    chainsChainIdDappsUniswapv2TokensCurrentGet)
    operation="chainsChainIdDappsUniswapv2TokensCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3BundleCurrentGet)
    operation="chainsChainIdDappsUniswapv3BundleCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3BurnsCurrentGet)
    operation="chainsChainIdDappsUniswapv3BurnsCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3FactoryCurrentGet)
    operation="chainsChainIdDappsUniswapv3FactoryCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3MintsCurrentGet)
    operation="chainsChainIdDappsUniswapv3MintsCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3PoolsCurrentGet)
    operation="chainsChainIdDappsUniswapv3PoolsCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet)
    operation="chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet)
    operation="chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet)
    operation="chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3PositionsCurrentGet)
    operation="chainsChainIdDappsUniswapv3PositionsCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3SwapsCurrentGet)
    operation="chainsChainIdDappsUniswapv3SwapsCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3TicksCurrentGet)
    operation="chainsChainIdDappsUniswapv3TicksCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3TicksDayDataCurrentGet)
    operation="chainsChainIdDappsUniswapv3TicksDayDataCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3TokensCurrentGet)
    operation="chainsChainIdDappsUniswapv3TokensCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3TokensDayDataCurrentGet)
    operation="chainsChainIdDappsUniswapv3TokensDayDataCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3TokensHourDataCurrentGet)
    operation="chainsChainIdDappsUniswapv3TokensHourDataCurrentGet"
    ;;
    chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet)
    operation="chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet"
    ;;
    chainsChainIdDappsCowUsersHistoricalGet)
    operation="chainsChainIdDappsCowUsersHistoricalGet"
    ;;
    chainsChainIdDappsDexUsersHistoricalGet)
    operation="chainsChainIdDappsDexUsersHistoricalGet"
    ;;
    chainsChainIdDappsSushiswapUsersHistoricalGet)
    operation="chainsChainIdDappsSushiswapUsersHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv2UsersHistoricalGet)
    operation="chainsChainIdDappsUniswapv2UsersHistoricalGet"
    ;;
    chainsChainIdDappsDexWithdrawHistoricalGet)
    operation="chainsChainIdDappsDexWithdrawHistoricalGet"
    ;;
    chainsChainIdDappsDexWithdrawRequestHistoricalGet)
    operation="chainsChainIdDappsDexWithdrawRequestHistoricalGet"
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
    chainsChainIdDappsDexBatchHistoricalGet)
    call_chainsChainIdDappsDexBatchHistoricalGet
    ;;
    chainsChainIdDappsSushiswapBundlesHistoricalGet)
    call_chainsChainIdDappsSushiswapBundlesHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2BundlesHistoricalGet)
    call_chainsChainIdDappsUniswapv2BundlesHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3BundlesHistoricalGet)
    call_chainsChainIdDappsUniswapv3BundlesHistoricalGet
    ;;
    chainsChainIdDappsSushiswapBurnsHistoricalGet)
    call_chainsChainIdDappsSushiswapBurnsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2BurnsHistoricalGet)
    call_chainsChainIdDappsUniswapv2BurnsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3BurnsHistoricalGet)
    call_chainsChainIdDappsUniswapv3BurnsHistoricalGet
    ;;
    chainsChainIdDappsSushiswapDayDataHistoricalGet)
    call_chainsChainIdDappsSushiswapDayDataHistoricalGet
    ;;
    chainsChainIdDappsDexTokensHistoricalGet)
    call_chainsChainIdDappsDexTokensHistoricalGet
    ;;
    chainsChainIdDappsSushiswapFactoryHistoricalGet)
    call_chainsChainIdDappsSushiswapFactoryHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2FactoryHistoricalGet)
    call_chainsChainIdDappsUniswapv2FactoryHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3FactoryHistoricalGet)
    call_chainsChainIdDappsUniswapv3FactoryHistoricalGet
    ;;
    chainsChainIdDappsSushiswapHourDataHistoricalGet)
    call_chainsChainIdDappsSushiswapHourDataHistoricalGet
    ;;
    chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet)
    call_chainsChainIdDappsSushiswapLiquidityPositionHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet)
    call_chainsChainIdDappsUniswapv2LiquidityPositionHistoricalGet
    ;;
    chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet)
    call_chainsChainIdDappsSushiswapLiquidityPositionSnapshotsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet)
    call_chainsChainIdDappsUniswapv2LiquidityPositionSnapshotsHistoricalGet
    ;;
    chainsChainIdDappsSushiswapMintsHistoricalGet)
    call_chainsChainIdDappsSushiswapMintsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2MintsHistoricalGet)
    call_chainsChainIdDappsUniswapv2MintsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3MintsHistoricalGet)
    call_chainsChainIdDappsUniswapv3MintsHistoricalGet
    ;;
    chainsChainIdDappsCowOrdersHistoricalGet)
    call_chainsChainIdDappsCowOrdersHistoricalGet
    ;;
    chainsChainIdDappsDexOrdersHistoricalGet)
    call_chainsChainIdDappsDexOrdersHistoricalGet
    ;;
    chainsChainIdDappsCowPoiHistoricalGet)
    call_chainsChainIdDappsCowPoiHistoricalGet
    ;;
    chainsChainIdDappsDexPoiHistoricalGet)
    call_chainsChainIdDappsDexPoiHistoricalGet
    ;;
    chainsChainIdDappsSushiswapPoiHistoricalGet)
    call_chainsChainIdDappsSushiswapPoiHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2PoiHistoricalGet)
    call_chainsChainIdDappsUniswapv2PoiHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3PoiHistoricalGet)
    call_chainsChainIdDappsUniswapv3PoiHistoricalGet
    ;;
    chainsChainIdDappsSushiswapPoolDayDataHistoricalGet)
    call_chainsChainIdDappsSushiswapPoolDayDataHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet)
    call_chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet)
    call_chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet
    ;;
    chainsChainIdDappsSushiswapPoolHourDataHistoricalGet)
    call_chainsChainIdDappsSushiswapPoolHourDataHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet)
    call_chainsChainIdDappsUniswapv2PoolHourDataHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet)
    call_chainsChainIdDappsUniswapv3PoolHourDataHistoricalGet
    ;;
    chainsChainIdDappsCurvePoolsHistoricalGet)
    call_chainsChainIdDappsCurvePoolsHistoricalGet
    ;;
    chainsChainIdDappsSushiswapPoolsHistoricalGet)
    call_chainsChainIdDappsSushiswapPoolsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2PoolsHistoricalGet)
    call_chainsChainIdDappsUniswapv2PoolsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3PoolsHistoricalGet)
    call_chainsChainIdDappsUniswapv3PoolsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet)
    call_chainsChainIdDappsUniswapv3PositionSnapshotHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3PositionsHistoricalGet)
    call_chainsChainIdDappsUniswapv3PositionsHistoricalGet
    ;;
    chainsChainIdDappsDexPricesHistoricalGet)
    call_chainsChainIdDappsDexPricesHistoricalGet
    ;;
    chainsChainIdDappsCowSettlementHistoricalGet)
    call_chainsChainIdDappsCowSettlementHistoricalGet
    ;;
    chainsChainIdDappsDexSolutionHistoricalGet)
    call_chainsChainIdDappsDexSolutionHistoricalGet
    ;;
    chainsChainIdDappsDexStatsHistoricalGet)
    call_chainsChainIdDappsDexStatsHistoricalGet
    ;;
    chainsChainIdDappsSushiswapPoolsCurrentGet)
    call_chainsChainIdDappsSushiswapPoolsCurrentGet
    ;;
    chainsChainIdDappsSushiswapSwapsCurrentGet)
    call_chainsChainIdDappsSushiswapSwapsCurrentGet
    ;;
    chainsChainIdDappsSushiswapTokensCurrentGet)
    call_chainsChainIdDappsSushiswapTokensCurrentGet
    ;;
    chainsChainIdDappsCurveSwapsHistoricalGet)
    call_chainsChainIdDappsCurveSwapsHistoricalGet
    ;;
    chainsChainIdDappsSushiswapSwapsHistoricalGet)
    call_chainsChainIdDappsSushiswapSwapsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2SwapsHistoricalGet)
    call_chainsChainIdDappsUniswapv2SwapsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3SwapsHistoricalGet)
    call_chainsChainIdDappsUniswapv3SwapsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3TickDayDataHistoricalGet)
    call_chainsChainIdDappsUniswapv3TickDayDataHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3TicksHistoricalGet)
    call_chainsChainIdDappsUniswapv3TicksHistoricalGet
    ;;
    chainsChainIdDappsSushiswapTokenDayDataHistoricalGet)
    call_chainsChainIdDappsSushiswapTokenDayDataHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet)
    call_chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet)
    call_chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet)
    call_chainsChainIdDappsUniswapv3TokenHourDataHistoricalGet
    ;;
    chainsChainIdDappsCowTokensHistoricalGet)
    call_chainsChainIdDappsCowTokensHistoricalGet
    ;;
    chainsChainIdDappsCurveTokensHistoricalGet)
    call_chainsChainIdDappsCurveTokensHistoricalGet
    ;;
    chainsChainIdDappsSushiswapTokensHistoricalGet)
    call_chainsChainIdDappsSushiswapTokensHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2TokensHistoricalGet)
    call_chainsChainIdDappsUniswapv2TokensHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3TokensHistoricalGet)
    call_chainsChainIdDappsUniswapv3TokensHistoricalGet
    ;;
    chainsChainIdDappsCowTradesHistoricalGet)
    call_chainsChainIdDappsCowTradesHistoricalGet
    ;;
    chainsChainIdDappsDexTradesHistoricalGet)
    call_chainsChainIdDappsDexTradesHistoricalGet
    ;;
    chainsChainIdDappsSushiswapTransactionsHistoricalGet)
    call_chainsChainIdDappsSushiswapTransactionsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2TransactionsHistoricalGet)
    call_chainsChainIdDappsUniswapv2TransactionsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3TransactionsHistoricalGet)
    call_chainsChainIdDappsUniswapv3TransactionsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2DayDataHistoricalGet)
    call_chainsChainIdDappsUniswapv2DayDataHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3DayDataHistoricalGet)
    call_chainsChainIdDappsUniswapv3DayDataHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2PoolsCurrentGet)
    call_chainsChainIdDappsUniswapv2PoolsCurrentGet
    ;;
    chainsChainIdDappsUniswapv2SwapsCurrentGet)
    call_chainsChainIdDappsUniswapv2SwapsCurrentGet
    ;;
    chainsChainIdDappsUniswapv2TokensCurrentGet)
    call_chainsChainIdDappsUniswapv2TokensCurrentGet
    ;;
    chainsChainIdDappsUniswapv3BundleCurrentGet)
    call_chainsChainIdDappsUniswapv3BundleCurrentGet
    ;;
    chainsChainIdDappsUniswapv3BurnsCurrentGet)
    call_chainsChainIdDappsUniswapv3BurnsCurrentGet
    ;;
    chainsChainIdDappsUniswapv3FactoryCurrentGet)
    call_chainsChainIdDappsUniswapv3FactoryCurrentGet
    ;;
    chainsChainIdDappsUniswapv3MintsCurrentGet)
    call_chainsChainIdDappsUniswapv3MintsCurrentGet
    ;;
    chainsChainIdDappsUniswapv3PoolsCurrentGet)
    call_chainsChainIdDappsUniswapv3PoolsCurrentGet
    ;;
    chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet)
    call_chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet
    ;;
    chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet)
    call_chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet
    ;;
    chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet)
    call_chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet
    ;;
    chainsChainIdDappsUniswapv3PositionsCurrentGet)
    call_chainsChainIdDappsUniswapv3PositionsCurrentGet
    ;;
    chainsChainIdDappsUniswapv3SwapsCurrentGet)
    call_chainsChainIdDappsUniswapv3SwapsCurrentGet
    ;;
    chainsChainIdDappsUniswapv3TicksCurrentGet)
    call_chainsChainIdDappsUniswapv3TicksCurrentGet
    ;;
    chainsChainIdDappsUniswapv3TicksDayDataCurrentGet)
    call_chainsChainIdDappsUniswapv3TicksDayDataCurrentGet
    ;;
    chainsChainIdDappsUniswapv3TokensCurrentGet)
    call_chainsChainIdDappsUniswapv3TokensCurrentGet
    ;;
    chainsChainIdDappsUniswapv3TokensDayDataCurrentGet)
    call_chainsChainIdDappsUniswapv3TokensDayDataCurrentGet
    ;;
    chainsChainIdDappsUniswapv3TokensHourDataCurrentGet)
    call_chainsChainIdDappsUniswapv3TokensHourDataCurrentGet
    ;;
    chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet)
    call_chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet
    ;;
    chainsChainIdDappsCowUsersHistoricalGet)
    call_chainsChainIdDappsCowUsersHistoricalGet
    ;;
    chainsChainIdDappsDexUsersHistoricalGet)
    call_chainsChainIdDappsDexUsersHistoricalGet
    ;;
    chainsChainIdDappsSushiswapUsersHistoricalGet)
    call_chainsChainIdDappsSushiswapUsersHistoricalGet
    ;;
    chainsChainIdDappsUniswapv2UsersHistoricalGet)
    call_chainsChainIdDappsUniswapv2UsersHistoricalGet
    ;;
    chainsChainIdDappsDexWithdrawHistoricalGet)
    call_chainsChainIdDappsDexWithdrawHistoricalGet
    ;;
    chainsChainIdDappsDexWithdrawRequestHistoricalGet)
    call_chainsChainIdDappsDexWithdrawRequestHistoricalGet
    ;;
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
