#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/curve_exchange_dto.h"
#include "../model/dex_trade_dto.h"
#include "../model/sushiswap_bundle_dto.h"
#include "../model/sushiswap_burn_dto.h"
#include "../model/sushiswap_day_data_dto.h"
#include "../model/sushiswap_factory_dto.h"
#include "../model/sushiswap_hour_data_dto.h"
#include "../model/sushiswap_liquidity_position_dto.h"
#include "../model/sushiswap_liquidity_position_snapshot_dto.h"
#include "../model/sushiswap_mint_dto.h"
#include "../model/sushiswap_pair_day_data_dto.h"
#include "../model/sushiswap_pair_dto.h"
#include "../model/sushiswap_pair_hour_data_dto.h"
#include "../model/sushiswap_swap_dto.h"
#include "../model/sushiswap_token_day_data_dto.h"
#include "../model/sushiswap_token_dto.h"
#include "../model/sushiswap_transaction_dto.h"
#include "../model/sushiswap_user_dto.h"


// GetExchanges (current) 🔥
//
// Gets exchanges.
//
list_t*
SushiswapAPI_curveGetExchangesCurrent(apiClient_t *apiClient);


// GetTrades (current) 🔥
//
// Gets trades.
//
list_t*
SushiswapAPI_dexGetTradesCurrent(apiClient_t *apiClient);


// GetBundles (historical)
//
// Gets bundles.
//
list_t*
SushiswapAPI_sushiswapGetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetBurns (historical)
//
// Gets burns.
//
list_t*
SushiswapAPI_sushiswapGetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetDayData (historical)
//
// Gets day data.
//
list_t*
SushiswapAPI_sushiswapGetDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetFactory (historical)
//
// Gets factory.
//
list_t*
SushiswapAPI_sushiswapGetFactoryHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetHourData (historical)
//
// Gets hour data.
//
list_t*
SushiswapAPI_sushiswapGetHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetLiquidityPosition (historical)
//
// Gets liquidity position.
//
list_t*
SushiswapAPI_sushiswapGetLiquidityPositionHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetLiquidityPositionSnapshot (historical)
//
// Gets liquidity position snapshot.
//
list_t*
SushiswapAPI_sushiswapGetLiquidityPositionSnapshotHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetMints (historical)
//
// Gets mints.
//
list_t*
SushiswapAPI_sushiswapGetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPools (current) 🔥
//
// Gets pools.
//
list_t*
SushiswapAPI_sushiswapGetPoolsCurrent(apiClient_t *apiClient);


// GetPoolsDayData (historical)
//
// Gets pools day data.
//
list_t*
SushiswapAPI_sushiswapGetPoolsDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPools (historical) 🔥
//
// Gets list of pools for given filters.
//
list_t*
SushiswapAPI_sushiswapGetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPoolsHourData (historical)
//
// Gets pools tracked each our.
//
list_t*
SushiswapAPI_sushiswapGetPoolsHourDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetSwaps (current) 🔥
//
// Gets swaps.
//
list_t*
SushiswapAPI_sushiswapGetSwapsCurrent(apiClient_t *apiClient);


// GetSwaps (historical) 🔥
//
// Gets list of swaps for given filters.
//
list_t*
SushiswapAPI_sushiswapGetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetTokens (current) 🔥
//
// Gets tokens.
//
list_t*
SushiswapAPI_sushiswapGetTokensCurrent(apiClient_t *apiClient);


// GetTokensDayData (historical)
//
// Gets tokens day data.
//
list_t*
SushiswapAPI_sushiswapGetTokensDayDataHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTokens (historical) 🔥
//
// Gets list of tokens for given filters.
//
list_t*
SushiswapAPI_sushiswapGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTransactions (historical)
//
// Gets transactions.
//
list_t*
SushiswapAPI_sushiswapGetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetUsers (historical)
//
// Gets users.
//
list_t*
SushiswapAPI_sushiswapGetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


