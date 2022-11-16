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


// Exchanges (current) 🔥
//
// Gets exchanges.
//
list_t*
SushiswapAPI_curveGetExchangesCurrent(apiClient_t *apiClient);


// Trades (current) 🔥
//
// Gets trades.
//
list_t*
SushiswapAPI_dexGetTradesCurrent(apiClient_t *apiClient);


// Bundles (historical) 🔥
//
// Gets bundles.
//
list_t*
SushiswapAPI_sushiswapGetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Burns (historical) 🔥
//
// Gets burns.
//
list_t*
SushiswapAPI_sushiswapGetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// DayDatas (historical) 🔥
//
// Gets daydatas.
//
list_t*
SushiswapAPI_sushiswapGetDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Factorys (historical) 🔥
//
// Gets factorys.
//
list_t*
SushiswapAPI_sushiswapGetFactorysHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// HourDatas (historical) 🔥
//
// Gets hourdatas.
//
list_t*
SushiswapAPI_sushiswapGetHourDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// LiquidityPositionSnapshots (historical) 🔥
//
// Gets liquiditypositionsnapshots.
//
list_t*
SushiswapAPI_sushiswapGetLiquidityPositionSnapshotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user , char * pair );


// LiquidityPositions (historical) 🔥
//
// Gets liquiditypositions.
//
list_t*
SushiswapAPI_sushiswapGetLiquidityPositionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user , char * pair );


// Mints (historical) 🔥
//
// Gets mints.
//
list_t*
SushiswapAPI_sushiswapGetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// PairDayDatas (historical) 🔥
//
// Gets pairdaydatas.
//
list_t*
SushiswapAPI_sushiswapGetPairDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair , char * token_0 , char * token_1 );


// PairHourDatas (historical) 🔥
//
// Gets pairhourdatas.
//
list_t*
SushiswapAPI_sushiswapGetPairHourDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// Pairs (historical) 🔥
//
// Gets pairs.
//
list_t*
SushiswapAPI_sushiswapGetPairsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * name , char * token_0 , char * token_1 );


// Pools (current) 🔥
//
// Gets pools.
//
list_t*
SushiswapAPI_sushiswapGetPoolsCurrent(apiClient_t *apiClient);


// Swaps (current) 🔥
//
// Gets swaps.
//
list_t*
SushiswapAPI_sushiswapGetSwapsCurrent(apiClient_t *apiClient);


// Swaps (historical) 🔥
//
// Gets swaps.
//
list_t*
SushiswapAPI_sushiswapGetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// TokenDayDatas (historical) 🔥
//
// Gets tokendaydatas.
//
list_t*
SushiswapAPI_sushiswapGetTokenDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Tokens (current) 🔥
//
// Gets tokens.
//
list_t*
SushiswapAPI_sushiswapGetTokensCurrent(apiClient_t *apiClient);


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
SushiswapAPI_sushiswapGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * symbol , char * name );


// Transactions (historical) 🔥
//
// Gets transactions.
//
list_t*
SushiswapAPI_sushiswapGetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Users (historical) 🔥
//
// Gets users.
//
list_t*
SushiswapAPI_sushiswapGetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


