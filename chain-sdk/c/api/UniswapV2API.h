#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/uniswap_v2_bundle_dto.h"
#include "../model/uniswap_v2_burn_dto.h"
#include "../model/uniswap_v2_liquidity_position_dto.h"
#include "../model/uniswap_v2_liquidity_position_snapshot_dto.h"
#include "../model/uniswap_v2_mint_dto.h"
#include "../model/uniswap_v2_pair_day_data_dto.h"
#include "../model/uniswap_v2_pair_dto.h"
#include "../model/uniswap_v2_pair_hour_data_dto.h"
#include "../model/uniswap_v2_swap_dto.h"
#include "../model/uniswap_v2_token_day_data_dto.h"
#include "../model/uniswap_v2_token_dto.h"
#include "../model/uniswap_v2_transaction_dto.h"
#include "../model/uniswap_v2_uniswap_day_data_dto.h"
#include "../model/uniswap_v2_uniswap_factory_dto.h"
#include "../model/uniswap_v2_user_dto.h"


// Bundles (current)
//
// Gets bundles.
//
list_t*
UniswapV2API_uniswapV2BundlesCurrent(apiClient_t *apiClient);


// Burns (current)
//
// Gets burns.
//
list_t*
UniswapV2API_uniswapV2BurnsCurrent(apiClient_t *apiClient);


// Bundles (historical)
//
// Gets bundles.
//
list_t*
UniswapV2API_uniswapV2GetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Burns (historical)
//
// Gets burns.
//
list_t*
UniswapV2API_uniswapV2GetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// LiquidityPositionSnapshots (historical)
//
// Gets liquidityPositionSnapshots.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionSnapshotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user , char * pair );


// LiquidityPositions (historical)
//
// Gets liquidityPositions.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user , char * pair );


// Mints (historical)
//
// Gets mints.
//
list_t*
UniswapV2API_uniswapV2GetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// PairDayDatas (historical)
//
// Gets pairDayDatas.
//
list_t*
UniswapV2API_uniswapV2GetPairDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * token_0 , char * token_1 );


// PairHourDatas (historical)
//
// Gets pairHourDatas.
//
list_t*
UniswapV2API_uniswapV2GetPairHourDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// Pairs (historical)
//
// Gets pairs.
//
list_t*
UniswapV2API_uniswapV2GetPairsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * token_0 , char * token_1 );


// Swaps (historical)
//
// Gets swaps.
//
list_t*
UniswapV2API_uniswapV2GetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// TokenDayDatas (historical)
//
// Gets tokenDayDatas.
//
list_t*
UniswapV2API_uniswapV2GetTokenDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Tokens (historical)
//
// Gets tokens.
//
list_t*
UniswapV2API_uniswapV2GetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * symbol , char * name );


// Transactions (historical)
//
// Gets transactions.
//
list_t*
UniswapV2API_uniswapV2GetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// UniswapDayDatas (historical)
//
// Gets uniswapDayDatas.
//
list_t*
UniswapV2API_uniswapV2GetUniswapDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// UniswapFactorys (historical)
//
// Gets uniswapFactorys.
//
list_t*
UniswapV2API_uniswapV2GetUniswapFactorysHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Users (historical)
//
// Gets users.
//
list_t*
UniswapV2API_uniswapV2GetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// LiquidityPositionSnapshots (current)
//
// Gets liquidityPositionSnapshots.
//
list_t*
UniswapV2API_uniswapV2LiquidityPositionSnapshotsCurrent(apiClient_t *apiClient);


// LiquidityPositions (current)
//
// Gets liquidityPositions.
//
list_t*
UniswapV2API_uniswapV2LiquidityPositionsCurrent(apiClient_t *apiClient);


// Mints (current)
//
// Gets mints.
//
list_t*
UniswapV2API_uniswapV2MintsCurrent(apiClient_t *apiClient);


// PairDayDatas (current)
//
// Gets pairDayDatas.
//
list_t*
UniswapV2API_uniswapV2PairDayDatasCurrent(apiClient_t *apiClient);


// PairHourDatas (current)
//
// Gets pairHourDatas.
//
list_t*
UniswapV2API_uniswapV2PairHourDatasCurrent(apiClient_t *apiClient);


// Pairs (current)
//
// Gets pairs.
//
list_t*
UniswapV2API_uniswapV2PairsCurrent(apiClient_t *apiClient, char * id );


// Swaps (current)
//
// Gets swaps.
//
list_t*
UniswapV2API_uniswapV2SwapsCurrent(apiClient_t *apiClient, char * pair );


// TokenDayDatas (current)
//
// Gets tokenDayDatas.
//
list_t*
UniswapV2API_uniswapV2TokenDayDatasCurrent(apiClient_t *apiClient);


// Tokens (current)
//
// Gets tokens.
//
list_t*
UniswapV2API_uniswapV2TokensCurrent(apiClient_t *apiClient);


// Transactions (current)
//
// Gets transactions.
//
list_t*
UniswapV2API_uniswapV2TransactionsCurrent(apiClient_t *apiClient);


// UniswapDayDatas (current)
//
// Gets uniswapDayDatas.
//
list_t*
UniswapV2API_uniswapV2UniswapDayDatasCurrent(apiClient_t *apiClient);


// UniswapFactorys (current)
//
// Gets uniswapFactorys.
//
list_t*
UniswapV2API_uniswapV2UniswapFactorysCurrent(apiClient_t *apiClient);


// Users (current)
//
// Gets users.
//
list_t*
UniswapV2API_uniswapV2UsersCurrent(apiClient_t *apiClient);


