#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


void
PoolDayDataAPI_chainsChainIdDappsSushiswapPoolDayDataHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
PoolDayDataAPI_chainsChainIdDappsUniswapv2PoolDayDataHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
PoolDayDataAPI_chainsChainIdDappsUniswapv3PoolDayDataHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


