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


// BundleV3s (historical) 🔥
//
// Gets bundlev3s.
//
list_t*
UniswapV3API_uniswapV3GetBundleV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Bundles (current)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesCurrent(apiClient_t *apiClient);


// BurnV3s (historical) 🔥
//
// Gets burnv3s.
//
list_t*
UniswapV3API_uniswapV3GetBurnV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool , char * token_0 , char * token_1 );


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


// FactoryV3s (historical) 🔥
//
// Gets factoryv3s.
//
list_t*
UniswapV3API_uniswapV3GetFactoryV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// MintV3s (historical) 🔥
//
// Gets mintv3s.
//
list_t*
UniswapV3API_uniswapV3GetMintV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool , char * token_0 , char * token_1 );


// Mints (current)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// PoolDayDataV3s (historical) 🔥
//
// Gets pooldaydatav3s.
//
list_t*
UniswapV3API_uniswapV3GetPoolDayDataV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// PoolHourDataV3s (historical) 🔥
//
// Gets poolhourdatav3s.
//
list_t*
UniswapV3API_uniswapV3GetPoolHourDataV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// PoolV3s (historical) 🔥
//
// Gets poolv3s.
//
list_t*
UniswapV3API_uniswapV3GetPoolV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * token_0 , char * token_1 );


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


// PositionSnapshotV3s (historical) 🔥
//
// Gets positionsnapshotv3s.
//
list_t*
UniswapV3API_uniswapV3GetPositionSnapshotV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// PositionV3s (historical) 🔥
//
// Gets positionv3s.
//
list_t*
UniswapV3API_uniswapV3GetPositionV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool , char * token_0 , char * token_1 );


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


// SwapV3s (historical) 🔥
//
// Gets swapv3s.
//
list_t*
UniswapV3API_uniswapV3GetSwapV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool , char * token_0 , char * token_1 );


// Swaps (current) 🔥
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3GetSwapsCurrent(apiClient_t *apiClient, char * filter_pool_id );


// TickDayDataV3s (historical) 🔥
//
// Gets tickdaydatav3s.
//
list_t*
UniswapV3API_uniswapV3GetTickDayDataV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// TickV3s (historical) 🔥
//
// Gets tickv3s.
//
list_t*
UniswapV3API_uniswapV3GetTickV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


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


// TokenHourDataV3s (historical) 🔥
//
// Gets tokenhourdatav3s.
//
list_t*
UniswapV3API_uniswapV3GetTokenHourDataV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// TokenV3DayDatas (historical) 🔥
//
// Gets tokenv3daydatas.
//
list_t*
UniswapV3API_uniswapV3GetTokenV3DayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// TokenV3s (historical) 🔥
//
// Gets tokenv3s.
//
list_t*
UniswapV3API_uniswapV3GetTokenV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * symbol , char * name );


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


// TransactionV3s (historical) 🔥
//
// Gets transactionv3s.
//
list_t*
UniswapV3API_uniswapV3GetTransactionV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// UniswapDayDataV3s (historical) 🔥
//
// Gets uniswapdaydatav3s.
//
list_t*
UniswapV3API_uniswapV3GetUniswapDayDataV3sHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


