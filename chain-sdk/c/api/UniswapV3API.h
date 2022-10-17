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
UniswapV3API_chainsChainIdDappsUniswapv3BundleCurrentGet(apiClient_t *apiClient, char * chain_id );


// GetBurns
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3BurnsCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_pool_id );


// GetFactory
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3FactoryCurrentGet(apiClient_t *apiClient, char * chain_id );


// GetMints
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3MintsCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_pool_id );


// GetPools
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3PoolsCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_pool_id );


// GetPoolsDayData
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3PoolsDayDataCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_pool_id );


// GetPoolsHourData
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3PoolsHourDataCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_pool_id );


// GetPositionSnapshot
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3PositionSnapshotsCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_pool_id );


// GetPositions
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3PositionsCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_pool_id );


// GetSwaps
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3SwapsCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_pool_id );


// GetTicks
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3TicksCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_pool_id );


// GetTicksDayData
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3TicksDayDataCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_pool_id );


// GetTokens
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3TokensCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_token_id );


// GetTokensDayData
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3TokensDayDataCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_token_id );


// GetTokensHourData
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3TokensHourDataCurrentGet(apiClient_t *apiClient, char * chain_id , char * filter_token_id );


// GetUniswapDayData
//
list_t*
UniswapV3API_chainsChainIdDappsUniswapv3UniswapDayDataCurrentGet(apiClient_t *apiClient, char * chain_id );


