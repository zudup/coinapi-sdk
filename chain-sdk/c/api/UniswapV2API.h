#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/uniswap_v2_bundle_v2_dto.h"
#include "../model/uniswap_v2_burn_v2_dto.h"
#include "../model/uniswap_v2_liquidity_position_snapshot_v2_dto.h"
#include "../model/uniswap_v2_liquidity_position_v2_dto.h"
#include "../model/uniswap_v2_mint_v2_dto.h"
#include "../model/uniswap_v2_pair_day_data_v2_dto.h"
#include "../model/uniswap_v2_pair_hour_data_v2_dto.h"
#include "../model/uniswap_v2_pair_v2_dto.h"
#include "../model/uniswap_v2_swap_v2_dto.h"
#include "../model/uniswap_v2_token_day_data_v2_dto.h"
#include "../model/uniswap_v2_token_v2_dto.h"
#include "../model/uniswap_v2_transaction_v2_dto.h"
#include "../model/uniswap_v2_uniswap_day_data_v2_dto.h"
#include "../model/uniswap_v2_uniswap_factory_v2_dto.h"
#include "../model/uniswap_v2_user_v2_dto.h"


// GetBundles (historical)
//
// Gets bundles.
//
list_t*
UniswapV2API_uniswapV2GetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetBurns (historical)
//
// Gets burns.
//
list_t*
UniswapV2API_uniswapV2GetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetDayData (historical)
//
// Gets uniswapv2 day data.
//
list_t*
UniswapV2API_uniswapV2GetDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetFactory (historical)
//
// Gets factory.
//
list_t*
UniswapV2API_uniswapV2GetFactoryHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetLiquidityPositions (historical)
//
// Gets liquidity positions.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetLiquidityPositionsSnapshots (historical)
//
// Gets liquidity positions snapshots.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionsSnapshotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetMints (historical)
//
// Gets mints.
//
list_t*
UniswapV2API_uniswapV2GetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPools (current) 🔥
//
// Gets pools.
//
list_t*
UniswapV2API_uniswapV2GetPoolsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// GetPoolsDayData (historical)
//
// Gets pools day data.
//
list_t*
UniswapV2API_uniswapV2GetPoolsDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPools (historical) 🔥
//
// Gets pools.
//
list_t*
UniswapV2API_uniswapV2GetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPoolsHourData (historical)
//
// Gets pools tracked each our.
//
list_t*
UniswapV2API_uniswapV2GetPoolsHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetSwaps (current) 🔥
//
// Gets swaps.
//
list_t*
UniswapV2API_uniswapV2GetSwapsCurrent(apiClient_t *apiClient);


// GetSwaps (historical) 🔥
//
// Gets swaps.
//
list_t*
UniswapV2API_uniswapV2GetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetTokens (current) 🔥
//
// Gets tokens.
//
list_t*
UniswapV2API_uniswapV2GetTokensCurrent(apiClient_t *apiClient);


// GetTokensDayData (historical)
//
// Gets tokens day data.
//
list_t*
UniswapV2API_uniswapV2GetTokensDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTokens (historical) 🔥
//
// Gets tokens.
//
list_t*
UniswapV2API_uniswapV2GetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTransactions (historical)
//
// Gets transactions.
//
list_t*
UniswapV2API_uniswapV2GetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetUsers (historical)
//
// Gets users.
//
list_t*
UniswapV2API_uniswapV2GetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


