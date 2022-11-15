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
#include "../model/uniswap_v3_transaction_v3_dto.h"
#include "../model/uniswap_v3_uniswap_day_data_v3_dto.h"


// Bundles (current)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesCurrent(apiClient_t *apiClient);


// Bundles (historical)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Burns (current)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3GetBurnsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Burns (historical)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3GetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// DayData (current)
//
// Gets uniswapv3 day data.
//
list_t*
UniswapV3API_uniswapV3GetDayDataCurrent(apiClient_t *apiClient);


// DayData (historical)
//
// Gets uniswapv3 day data.
//
list_t*
UniswapV3API_uniswapV3GetDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Factory (current)
//
// Gets factory.
//
list_t*
UniswapV3API_uniswapV3GetFactoryCurrent(apiClient_t *apiClient);


// Factory (historical)
//
// Gets factory.
//
list_t*
UniswapV3API_uniswapV3GetFactoryHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Mints (current)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Mints (historical)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


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


// PoolsDayData (historical)
//
// Gets pools day data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Pools (historical) 🔥
//
// Gets pools.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PoolsHourData (current)
//
// Gets pools hour data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHourDataCurrent(apiClient_t *apiClient, char * filter_pool_id );


// PoolsHourData (historical)
//
// Gets pools hour data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Positions (current)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3GetPositionsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// Positions (historical)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3GetPositionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// PositionsSnaphots (historical)
//
// Gets positions snapshots.
//
list_t*
UniswapV3API_uniswapV3GetPositionsSnaphotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


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


// Swaps (historical) 🔥
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3GetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


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


// TicksDayData (historical)
//
// Gets ticks day data.
//
list_t*
UniswapV3API_uniswapV3GetTicksDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Ticks (historical)
//
// Gets ticks.
//
list_t*
UniswapV3API_uniswapV3GetTicksHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


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


// TokensDayData (historical)
//
// Gets tokens day data.
//
list_t*
UniswapV3API_uniswapV3GetTokensDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
UniswapV3API_uniswapV3GetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// TokensHourData (current)
//
// Gets tokens hour data.
//
list_t*
UniswapV3API_uniswapV3GetTokensHourDataCurrent(apiClient_t *apiClient, char * filter_token_id );


// TokensHourData (historical)
//
// Gets tokens hour data.
//
list_t*
UniswapV3API_uniswapV3GetTokensHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// Transactions (historical)
//
// Gets transactions.
//
list_t*
UniswapV3API_uniswapV3GetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


