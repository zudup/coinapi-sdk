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


// GetBundles (current)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesCurrent(apiClient_t *apiClient);


// GetBundles (historical)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetBurns (current)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3GetBurnsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetBurns (historical)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3GetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetDayData (current)
//
// Gets uniswapv3 day data.
//
list_t*
UniswapV3API_uniswapV3GetDayDataCurrent(apiClient_t *apiClient);


// GetDayData (historical)
//
// Gets uniswapv3 day data.
//
list_t*
UniswapV3API_uniswapV3GetDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetFactory (current)
//
// Gets factory.
//
list_t*
UniswapV3API_uniswapV3GetFactoryCurrent(apiClient_t *apiClient);


// GetFactory (historical)
//
// Gets factory.
//
list_t*
UniswapV3API_uniswapV3GetFactoryHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetMints (current)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetMints (historical)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPools (current) 🔥
//
// Gets pools.
//
list_t*
UniswapV3API_uniswapV3GetPoolsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetPoolsDayData (current)
//
// Gets pools day data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsDayDataCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetPoolsDayData (historical)
//
// Gets pools day data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPools (historical) 🔥
//
// Gets pools.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPoolsHourData (current)
//
// Gets pools hour data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHourDataCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetPoolsHourData (historical)
//
// Gets pools hour data.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPositions (current)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3GetPositionsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetPositions (historical)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3GetPositionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPositionsSnaphots (historical)
//
// Gets positions snapshots.
//
list_t*
UniswapV3API_uniswapV3GetPositionsSnaphotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPositionsSnapshots (current)
//
// Gets positions snapshots.
//
list_t*
UniswapV3API_uniswapV3GetPositionsSnapshotsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetSwaps (current) 🔥
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3GetSwapsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetSwaps (historical) 🔥
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3GetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetTicks (current)
//
// Gets ticks.
//
list_t*
UniswapV3API_uniswapV3GetTicksCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetTicksDayData (current)
//
// Gets ticks day data.
//
list_t*
UniswapV3API_uniswapV3GetTicksDayDataCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetTicksDayData (historical)
//
// Gets ticks day data.
//
list_t*
UniswapV3API_uniswapV3GetTicksDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetTicks (historical)
//
// Gets ticks.
//
list_t*
UniswapV3API_uniswapV3GetTicksHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetTokens (current) 🔥
//
// Gets tokens.
//
list_t*
UniswapV3API_uniswapV3GetTokensCurrent(apiClient_t *apiClient, char * filter_token_id );


// GetTokensDayData (current)
//
// Gets tokens day data.
//
list_t*
UniswapV3API_uniswapV3GetTokensDayDataCurrent(apiClient_t *apiClient, char * filter_token_id );


// GetTokensDayData (historical)
//
// Gets tokens day data.
//
list_t*
UniswapV3API_uniswapV3GetTokensDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTokens (historical) 🔥
//
// Gets tokens.
//
list_t*
UniswapV3API_uniswapV3GetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTokensHourData (current)
//
// Gets tokens hour data.
//
list_t*
UniswapV3API_uniswapV3GetTokensHourDataCurrent(apiClient_t *apiClient, char * filter_token_id );


// GetTokensHourData (historical)
//
// Gets tokens hour data.
//
list_t*
UniswapV3API_uniswapV3GetTokensHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTransactions (historical)
//
// Gets transactions.
//
list_t*
UniswapV3API_uniswapV3GetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


