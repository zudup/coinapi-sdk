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
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::poolId"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::poolId"]=0
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
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::chain_id"]=1
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::startBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::endBlock"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::startDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::endDate"]=0
operation_parameters_minimum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::tokenId"]=0
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

##
# This array stores the maximum number of allowed occurrences for parameter
# 1 - single value
# 2 - 2 values
# N - N values
# 0 - unlimited
declare -A operation_parameters_maximum_occurrences
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3MintsHistoricalGet:::poolId"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::poolId"]=0
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
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::chain_id"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::startBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::endBlock"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::startDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::endDate"]=0
operation_parameters_maximum_occurrences["chainsChainIdDappsDexTokensHistoricalGet:::tokenId"]=0
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

##
# The type of collection for specifying multiple values for parameter:
# - multi, csv, ssv, tsv
declare -A operation_parameters_collection_type
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BundlesHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3BurnsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3FactoryHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3MintsHistoricalGet:::poolId"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoiHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoiHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoiHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet:::poolId"]=""
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
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::chain_id"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::startBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::endBlock"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::startDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::endDate"]=""
operation_parameters_collection_type["chainsChainIdDappsDexTokensHistoricalGet:::tokenId"]=""
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
    echo -e "${BOLD}${WHITE}[bundles]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3BundlesHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[burns]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3BurnsHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[factory]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3FactoryHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[mints]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3MintsHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[poi]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3PoiHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[poolDayData]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet${OFF};
EOF
echo "  $ops" | column -t -s ';'
    echo ""
    echo -e "${BOLD}${WHITE}[poolHourData]${OFF}"
read -r -d '' ops <<EOF
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
    echo -e "${BOLD}${WHITE}[tokens]${OFF}"
read -r -d '' ops <<EOF
  ${CYAN}chainsChainIdDappsCowTokensHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsCurveTokensHistoricalGet${OFF};
  ${CYAN}chainsChainIdDappsDexTokensHistoricalGet${OFF};
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
    chainsChainIdDappsUniswapv3BundlesHistoricalGet)
    operation="chainsChainIdDappsUniswapv3BundlesHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3BurnsHistoricalGet)
    operation="chainsChainIdDappsUniswapv3BurnsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3FactoryHistoricalGet)
    operation="chainsChainIdDappsUniswapv3FactoryHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3MintsHistoricalGet)
    operation="chainsChainIdDappsUniswapv3MintsHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3PoiHistoricalGet)
    operation="chainsChainIdDappsUniswapv3PoiHistoricalGet"
    ;;
    chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet)
    operation="chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet"
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
    chainsChainIdDappsCowTokensHistoricalGet)
    operation="chainsChainIdDappsCowTokensHistoricalGet"
    ;;
    chainsChainIdDappsCurveTokensHistoricalGet)
    operation="chainsChainIdDappsCurveTokensHistoricalGet"
    ;;
    chainsChainIdDappsDexTokensHistoricalGet)
    operation="chainsChainIdDappsDexTokensHistoricalGet"
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
    chainsChainIdDappsUniswapv3BundlesHistoricalGet)
    call_chainsChainIdDappsUniswapv3BundlesHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3BurnsHistoricalGet)
    call_chainsChainIdDappsUniswapv3BurnsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3FactoryHistoricalGet)
    call_chainsChainIdDappsUniswapv3FactoryHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3MintsHistoricalGet)
    call_chainsChainIdDappsUniswapv3MintsHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3PoiHistoricalGet)
    call_chainsChainIdDappsUniswapv3PoiHistoricalGet
    ;;
    chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet)
    call_chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet
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
    chainsChainIdDappsCowTokensHistoricalGet)
    call_chainsChainIdDappsCowTokensHistoricalGet
    ;;
    chainsChainIdDappsCurveTokensHistoricalGet)
    call_chainsChainIdDappsCurveTokensHistoricalGet
    ;;
    chainsChainIdDappsDexTokensHistoricalGet)
    call_chainsChainIdDappsDexTokensHistoricalGet
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
    *)
    ERROR_MSG="ERROR: Unknown operation: $operation"
    exit 1
esac
