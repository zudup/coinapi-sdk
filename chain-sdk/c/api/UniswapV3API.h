#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/uniswap_v3_bundle_dto.h"
#include "../model/uniswap_v3_burn_dto.h"
#include "../model/uniswap_v3_factory_dto.h"
#include "../model/uniswap_v3_mint_dto.h"
#include "../model/uniswap_v3_pool_day_data_dto.h"
#include "../model/uniswap_v3_pool_dto.h"
#include "../model/uniswap_v3_pool_hour_data_dto.h"
#include "../model/uniswap_v3_position_dto.h"
#include "../model/uniswap_v3_position_snapshot_dto.h"
#include "../model/uniswap_v3_swap_dto.h"
#include "../model/uniswap_v3_tick_day_data_dto.h"
#include "../model/uniswap_v3_tick_dto.h"
#include "../model/uniswap_v3_token_dto.h"
#include "../model/uniswap_v3_token_hour_data_dto.h"
#include "../model/uniswap_v3_token_v3_day_data_dto.h"
#include "../model/uniswap_v3_transaction_dto.h"
#include "../model/uniswap_v3_uniswap_day_data_dto.h"


// Bundles (current)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3BundlesCurrent(apiClient_t *apiClient);


// Burns (current)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3BurnsCurrent(apiClient_t *apiClient);


// Factorys (current)
//
// Gets factorys.
//
list_t*
UniswapV3API_uniswapV3FactorysCurrent(apiClient_t *apiClient);


// Bundles (historical)
//
// Gets bundles.
//
list_t*
UniswapV3API_uniswapV3GetBundlesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Burns (historical)
//
// Gets burns.
//
list_t*
UniswapV3API_uniswapV3GetBurnsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool , char * token_0 , char * token_1 );


// Factorys (historical)
//
// Gets factorys.
//
list_t*
UniswapV3API_uniswapV3GetFactorysHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Mints (historical)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3GetMintsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool , char * token_0 , char * token_1 );


// PoolDayDatas (historical)
//
// Gets poolDayDatas.
//
list_t*
UniswapV3API_uniswapV3GetPoolDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// PoolHourDatas (historical)
//
// Gets poolHourDatas.
//
list_t*
UniswapV3API_uniswapV3GetPoolHourDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// Pools (historical)
//
// Gets pools.
//
list_t*
UniswapV3API_uniswapV3GetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * token_0 , char * token_1 );


// PositionSnapshots (historical)
//
// Gets positionSnapshots.
//
list_t*
UniswapV3API_uniswapV3GetPositionSnapshotsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// Positions (historical)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3GetPositionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool , char * token_0 , char * token_1 );


// Swaps (historical)
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3GetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool , char * token_0 , char * token_1 );


// TickDayDatas (historical)
//
// Gets tickDayDatas.
//
list_t*
UniswapV3API_uniswapV3GetTickDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// Ticks (historical)
//
// Gets ticks.
//
list_t*
UniswapV3API_uniswapV3GetTicksHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * pool );


// TokenHourDatas (historical)
//
// Gets tokenHourDatas.
//
list_t*
UniswapV3API_uniswapV3GetTokenHourDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// TokenV3DayDatas (historical)
//
// Gets tokenV3DayDatas.
//
list_t*
UniswapV3API_uniswapV3GetTokenV3DayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Tokens (historical)
//
// Gets tokens.
//
list_t*
UniswapV3API_uniswapV3GetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * symbol , char * name );


// Transactions (historical)
//
// Gets transactions.
//
list_t*
UniswapV3API_uniswapV3GetTransactionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// UniswapDayDatas (historical)
//
// Gets uniswapDayDatas.
//
list_t*
UniswapV3API_uniswapV3GetUniswapDayDatasHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Mints (current)
//
// Gets mints.
//
list_t*
UniswapV3API_uniswapV3MintsCurrent(apiClient_t *apiClient);


// PoolDayDatas (current)
//
// Gets poolDayDatas.
//
list_t*
UniswapV3API_uniswapV3PoolDayDatasCurrent(apiClient_t *apiClient);


// PoolHourDatas (current)
//
// Gets poolHourDatas.
//
list_t*
UniswapV3API_uniswapV3PoolHourDatasCurrent(apiClient_t *apiClient);


// Pools (current)
//
// Gets pools.
//
list_t*
UniswapV3API_uniswapV3PoolsCurrent(apiClient_t *apiClient, char * id );


// PositionSnapshots (current)
//
// Gets positionSnapshots.
//
list_t*
UniswapV3API_uniswapV3PositionSnapshotsCurrent(apiClient_t *apiClient);


// Positions (current)
//
// Gets positions.
//
list_t*
UniswapV3API_uniswapV3PositionsCurrent(apiClient_t *apiClient);


// Swaps (current)
//
// Gets swaps.
//
list_t*
UniswapV3API_uniswapV3SwapsCurrent(apiClient_t *apiClient, char * pool );


// TickDayDatas (current)
//
// Gets tickDayDatas.
//
list_t*
UniswapV3API_uniswapV3TickDayDatasCurrent(apiClient_t *apiClient);


// Ticks (current)
//
// Gets ticks.
//
list_t*
UniswapV3API_uniswapV3TicksCurrent(apiClient_t *apiClient);


// TokenHourDatas (current)
//
// Gets tokenHourDatas.
//
list_t*
UniswapV3API_uniswapV3TokenHourDatasCurrent(apiClient_t *apiClient);


// TokenV3DayDatas (current)
//
// Gets tokenV3DayDatas.
//
list_t*
UniswapV3API_uniswapV3TokenV3DayDatasCurrent(apiClient_t *apiClient);


// Tokens (current)
//
// Gets tokens.
//
list_t*
UniswapV3API_uniswapV3TokensCurrent(apiClient_t *apiClient);


// Transactions (current)
//
// Gets transactions.
//
list_t*
UniswapV3API_uniswapV3TransactionsCurrent(apiClient_t *apiClient);


// UniswapDayDatas (current)
//
// Gets uniswapDayDatas.
//
list_t*
UniswapV3API_uniswapV3UniswapDayDatasCurrent(apiClient_t *apiClient);


