#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/uniswap_v3_bundle_v3_dto.h"
#include "../model/uniswap_v3_burn_v3_dto.h"
#include "../model/uniswap_v3_factory_v3_dto.h"
#include "../model/uniswap_v3_mint_v3_dto.h"
#include "../model/uniswap_v3_pool_day_data_v3_dto.h"
#include "../model/uniswap_v3_pool_hour_data_v3_dto.h"
#include "../model/uniswap_v3_pool_v3_dto.h"
#include "../model/uniswap_v3_position_snapshot_v3_dto.h"
#include "../model/uniswap_v3_position_v3_dto.h"
#include "../model/uniswap_v3_swap_v3_dto.h"
#include "../model/uniswap_v3_tick_day_data_v3_dto.h"
#include "../model/uniswap_v3_tick_v3_dto.h"
#include "../model/uniswap_v3_token_hour_data_v3_dto.h"
#include "../model/uniswap_v3_token_v3_day_data_dto.h"
#include "../model/uniswap_v3_token_v3_dto.h"
#include "../model/uniswap_v3_uniswap_day_data_v3_dto.h"


// Bundles (current)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesCurrent(apiClient_t *apiClient);


// Burns (current)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3GetBurnsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// DayData (current)
//
// Gets uniswapv3 day data.
//
list_t*
UniswapV3API_uniswapV3GetDayDataCurrent(apiClient_t *apiClient);


// Factory (current)
//
// Gets factory.
//
list_t*
UniswapV3API_uniswapV3GetFactoryCurrent(apiClient_t *apiClient);


// Mints (current)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Pools (current) 🔥
//
// Gets pools.
//
list_t*
UniswapV3API_uniswapV3GetPoolsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// PoolsDayData (current)
//
// Gets pools day data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsDayDataCurrent(apiClient_t *apiClient, char * filter_pool_id );


// PoolsHourData (current)
//
// Gets pools hour data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHourDataCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Positions (current)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3GetPositionsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// PositionsSnapshots (current)
//
// Gets positions snapshots.
//
list_t*
UniswapV3API_uniswapV3GetPositionsSnapshotsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Swaps (current) 🔥
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3GetSwapsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Ticks (current)
//
// Gets ticks.
//
list_t*
UniswapV3API_uniswapV3GetTicksCurrent(apiClient_t *apiClient, char * filter_pool_id );


// TicksDayData (current)
//
// Gets ticks day data.
//
list_t*
UniswapV3API_uniswapV3GetTicksDayDataCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Tokens (current) 🔥
//
// Gets tokens.
//
list_t*
UniswapV3API_uniswapV3GetTokensCurrent(apiClient_t *apiClient, char * filter_token_id );


// TokensDayData (current)
//
// Gets tokens day data.
//
list_t*
UniswapV3API_uniswapV3GetTokensDayDataCurrent(apiClient_t *apiClient, char * filter_token_id );


// TokensHourData (current)
//
// Gets tokens hour data.
//
list_t*
UniswapV3API_uniswapV3GetTokensHourDataCurrent(apiClient_t *apiClient, char * filter_token_id );


