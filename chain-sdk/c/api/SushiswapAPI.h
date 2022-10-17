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


// GetPools
//
// Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
//
list_t*
SushiswapAPI_chainsChainIdDappsSushiswapPoolsCurrentGet(apiClient_t *apiClient, char * chain_id );


// GetSwaps
//
list_t*
SushiswapAPI_chainsChainIdDappsSushiswapSwapsCurrentGet(apiClient_t *apiClient, char * chain_id );


// GetTokens
//
list_t*
SushiswapAPI_chainsChainIdDappsSushiswapTokensCurrentGet(apiClient_t *apiClient, char * chain_id );


