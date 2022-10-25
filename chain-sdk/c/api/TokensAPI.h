#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


void
TokensAPI_chainsChainIdDappsCowTokensHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
TokensAPI_chainsChainIdDappsCurveTokensHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
TokensAPI_chainsChainIdDappsSushiswapTokensHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
TokensAPI_chainsChainIdDappsUniswapv2TokensHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
TokensAPI_chainsChainIdDappsUniswapv3TokensHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


