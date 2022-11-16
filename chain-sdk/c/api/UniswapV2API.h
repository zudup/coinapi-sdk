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


// BundleV2s (historical) 🔥
//
// Gets bundlev2s.
//
list_t*
UniswapV2API_uniswapV2GetBundleV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// BurnV2s (historical) 🔥
//
// Gets burnv2s.
//
list_t*
UniswapV2API_uniswapV2GetBurnV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// LiquidityPositionSnapshotV2s (historical) 🔥
//
// Gets liquiditypositionsnapshotv2s.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionSnapshotV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user , char * pair );


// LiquidityPositionV2s (historical) 🔥
//
// Gets liquiditypositionv2s.
//
list_t*
UniswapV2API_uniswapV2GetLiquidityPositionV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user , char * pair );


// MintV2s (historical) 🔥
//
// Gets mintv2s.
//
list_t*
UniswapV2API_uniswapV2GetMintV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// PairDayDataV2s (historical) 🔥
//
// Gets pairdaydatav2s.
//
list_t*
UniswapV2API_uniswapV2GetPairDayDataV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * token_0 , char * token_1 );


// PairHourDataV2s (historical) 🔥
//
// Gets pairhourdatav2s.
//
list_t*
UniswapV2API_uniswapV2GetPairHourDataV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// PairV2s (historical) 🔥
//
// Gets pairv2s.
//
list_t*
UniswapV2API_uniswapV2GetPairV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * token_0 , char * token_1 );


// Pools (current) 🔥
//
// Gets pools.
//
list_t*
UniswapV2API_uniswapV2GetPoolsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// SwapV2s (historical) 🔥
//
// Gets swapv2s.
//
list_t*
UniswapV2API_uniswapV2GetSwapV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pair );


// Swaps (current) 🔥
//
// Gets swaps.
//
list_t*
UniswapV2API_uniswapV2GetSwapsCurrent(apiClient_t *apiClient);


// TokenDayDataV2s (historical) 🔥
//
// Gets tokendaydatav2s.
//
list_t*
UniswapV2API_uniswapV2GetTokenDayDataV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// TokenV2s (historical) 🔥
//
// Gets tokenv2s.
//
list_t*
UniswapV2API_uniswapV2GetTokenV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * symbol , char * name );


// Tokens (current) 🔥
//
// Gets tokens.
//
list_t*
UniswapV2API_uniswapV2GetTokensCurrent(apiClient_t *apiClient);


// TransactionV2s (historical) 🔥
//
// Gets transactionv2s.
//
list_t*
UniswapV2API_uniswapV2GetTransactionV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// UniswapDayDataV2s (historical) 🔥
//
// Gets uniswapdaydatav2s.
//
list_t*
UniswapV2API_uniswapV2GetUniswapDayDataV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// UniswapFactoryV2s (historical) 🔥
//
// Gets uniswapfactoryv2s.
//
list_t*
UniswapV2API_uniswapV2GetUniswapFactoryV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// UserV2s (historical) 🔥
//
// Gets userv2s.
//
list_t*
UniswapV2API_uniswapV2GetUserV2sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


