#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


void
BurnsAPI_chainsChainIdDappsSushiswapBurnsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
BurnsAPI_chainsChainIdDappsUniswapv2BurnsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
BurnsAPI_chainsChainIdDappsUniswapv3BurnsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


