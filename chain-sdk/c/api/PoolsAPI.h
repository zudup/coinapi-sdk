#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


void
PoolsAPI_chainsChainIdDappsCurvePoolsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
PoolsAPI_chainsChainIdDappsSushiswapPoolsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
PoolsAPI_chainsChainIdDappsUniswapv2PoolsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
PoolsAPI_chainsChainIdDappsUniswapv3PoolsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


