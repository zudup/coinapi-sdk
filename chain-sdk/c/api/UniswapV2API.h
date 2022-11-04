#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/uniswap_v2_pair_v2_dto.h"
#include "../model/uniswap_v2_swap_v2_dto.h"
#include "../model/uniswap_v2_token_v2_dto.h"


void
UniswapV2API_dappsUniswapv2BundlesHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
UniswapV2API_dappsUniswapv2BurnsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV2API_dappsUniswapv2DayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
UniswapV2API_dappsUniswapv2FactoryHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
UniswapV2API_dappsUniswapv2LiquidityPositionHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV2API_dappsUniswapv2LiquidityPositionSnapshotsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV2API_dappsUniswapv2MintsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV2API_dappsUniswapv2PoolDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV2API_dappsUniswapv2PoolHourDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPools
//
list_t*
UniswapV2API_dappsUniswapv2PoolsCurrentGet(apiClient_t *apiClient, char * filter_pool_id );


void
UniswapV2API_dappsUniswapv2PoolsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetSwaps
//
list_t*
UniswapV2API_dappsUniswapv2SwapsCurrentGet(apiClient_t *apiClient);


void
UniswapV2API_dappsUniswapv2SwapsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
UniswapV2API_dappsUniswapv2TokenDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTokens
//
list_t*
UniswapV2API_dappsUniswapv2TokensCurrentGet(apiClient_t *apiClient);


void
UniswapV2API_dappsUniswapv2TokensHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
UniswapV2API_dappsUniswapv2TransactionsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
UniswapV2API_dappsUniswapv2UsersHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


