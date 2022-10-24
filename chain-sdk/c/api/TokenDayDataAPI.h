#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


void
TokenDayDataAPI_chainsChainIdDappsSushiswapTokenDayDataHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
TokenDayDataAPI_chainsChainIdDappsUniswapv2TokenDayDataHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
TokenDayDataAPI_chainsChainIdDappsUniswapv3TokenDayDataHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


