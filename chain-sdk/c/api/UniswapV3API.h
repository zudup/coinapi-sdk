#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/bundle_v3_dto.h"
#include "../model/burn_v3_dto.h"
#include "../model/factory_v3_dto.h"
#include "../model/mint_v3_dto.h"
#include "../model/pool_day_data_v3_dto.h"
#include "../model/pool_hour_data_v3_dto.h"
#include "../model/pool_v3_dto.h"
#include "../model/position_snapshot_v3_dto.h"
#include "../model/position_v3_dto.h"
#include "../model/swap_v3_dto.h"
#include "../model/tick_day_data_v3_dto.h"
#include "../model/tick_v3_dto.h"
#include "../model/token_hour_data_v3_dto.h"
#include "../model/token_v3_day_data_dto.h"
#include "../model/token_v3_dto.h"
#include "../model/uniswap_day_data_v3_dto.h"


// GetBundles
//
list_t*
UniswapV3API_dappsUniswapv3BundleCurrentGet(apiClient_t *apiClient);


void
UniswapV3API_dappsUniswapv3BundlesHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetBurns
//
list_t*
UniswapV3API_dappsUniswapv3BurnsCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


void
UniswapV3API_dappsUniswapv3BurnsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV3API_dappsUniswapv3DayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetFactory
//
list_t*
UniswapV3API_dappsUniswapv3FactoryCurrentGet(apiClient_t *apiClient, char * chain_id );


void
UniswapV3API_dappsUniswapv3FactoryHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetMints
//
list_t*
UniswapV3API_dappsUniswapv3MintsCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


void
UniswapV3API_dappsUniswapv3MintsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV3API_dappsUniswapv3PoiHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
UniswapV3API_dappsUniswapv3PoolDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV3API_dappsUniswapv3PoolHourDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPools
//
list_t*
UniswapV3API_dappsUniswapv3PoolsCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


// GetPoolsDayData
//
list_t*
UniswapV3API_dappsUniswapv3PoolsDayDataCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


void
UniswapV3API_dappsUniswapv3PoolsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPoolsHourData
//
list_t*
UniswapV3API_dappsUniswapv3PoolsHourDataCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


void
UniswapV3API_dappsUniswapv3PositionSnapshotHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPositionSnapshot
//
list_t*
UniswapV3API_dappsUniswapv3PositionSnapshotsCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


// GetPositions
//
list_t*
UniswapV3API_dappsUniswapv3PositionsCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


void
UniswapV3API_dappsUniswapv3PositionsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetSwaps
//
list_t*
UniswapV3API_dappsUniswapv3SwapsCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


void
UniswapV3API_dappsUniswapv3SwapsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV3API_dappsUniswapv3TickDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetTicks
//
list_t*
UniswapV3API_dappsUniswapv3TicksCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


// GetTicksDayData
//
list_t*
UniswapV3API_dappsUniswapv3TicksDayDataCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


void
UniswapV3API_dappsUniswapv3TicksHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV3API_dappsUniswapv3TokenDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
UniswapV3API_dappsUniswapv3TokenHourDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTokens
//
list_t*
UniswapV3API_dappsUniswapv3TokensCurrentGet(apiClient_t *apiClient, char * filter_token_id );


// GetTokensDayData
//
list_t*
UniswapV3API_dappsUniswapv3TokensDayDataCurrentGet(apiClient_t *apiClient, char * filter_token_id );


void
UniswapV3API_dappsUniswapv3TokensHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTokensHourData
//
list_t*
UniswapV3API_dappsUniswapv3TokensHourDataCurrentGet(apiClient_t *apiClient, char * filter_token_id );


void
UniswapV3API_dappsUniswapv3TransactionsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetUniswapDayData
//
list_t*
UniswapV3API_dappsUniswapv3UniswapDayDataCurrentGet(apiClient_t *apiClient);


