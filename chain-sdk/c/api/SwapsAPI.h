#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


void
SwapsAPI_chainsChainIdDappsCurveSwapsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
SwapsAPI_chainsChainIdDappsSushiswapSwapsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
SwapsAPI_chainsChainIdDappsUniswapv2SwapsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


void
SwapsAPI_chainsChainIdDappsUniswapv3SwapsHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * poolId );


