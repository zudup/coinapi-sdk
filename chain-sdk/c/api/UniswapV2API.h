#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/pair_v2_dto.h"
#include "../model/swap_v2_dto.h"
#include "../model/token_v2_dto.h"


// GetPools
//
list_t*
UniswapV2API_chainsChainIdDappsUniswapv2PoolsCurrentGet(apiClient_t *apiClient, char * chain_id );


// GetSwaps
//
list_t*
UniswapV2API_chainsChainIdDappsUniswapv2SwapsCurrentGet(apiClient_t *apiClient, char * chain_id );


// GetTokens
//
list_t*
UniswapV2API_chainsChainIdDappsUniswapv2TokensCurrentGet(apiClient_t *apiClient, char * chain_id );


