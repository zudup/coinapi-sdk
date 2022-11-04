#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/pair_dto.h"
#include "../model/swap_dto.h"
#include "../model/token_dto.h"


void
SushiswapAPI_dappsSushiswapBundlesHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
SushiswapAPI_dappsSushiswapBurnsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
SushiswapAPI_dappsSushiswapDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
SushiswapAPI_dappsSushiswapFactoryHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
SushiswapAPI_dappsSushiswapHourDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
SushiswapAPI_dappsSushiswapLiquidityPositionHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
SushiswapAPI_dappsSushiswapLiquidityPositionSnapshotsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
SushiswapAPI_dappsSushiswapMintsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
SushiswapAPI_dappsSushiswapPoolDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
SushiswapAPI_dappsSushiswapPoolHourDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetPools
//
// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
//
list_t*
SushiswapAPI_dappsSushiswapPoolsCurrentGet(apiClient_t *apiClient);


// GetPools
//
list_t*
SushiswapAPI_dappsSushiswapPoolsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// GetSwaps
//
list_t*
SushiswapAPI_dappsSushiswapSwapsCurrentGet(apiClient_t *apiClient);


// GetSwaps (historical)
//
list_t*
SushiswapAPI_dappsSushiswapSwapsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
SushiswapAPI_dappsSushiswapTokenDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTokens
//
list_t*
SushiswapAPI_dappsSushiswapTokensCurrentGet(apiClient_t *apiClient);


// GetTokens
//
list_t*
SushiswapAPI_dappsSushiswapTokensHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
SushiswapAPI_dappsSushiswapTransactionsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
SushiswapAPI_dappsSushiswapUsersHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


