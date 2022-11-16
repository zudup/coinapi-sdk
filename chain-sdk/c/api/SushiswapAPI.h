#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/curve_exchange_dto.h"
#include "../model/dex_trade_dto.h"
#include "../model/sushiswap_pair_dto.h"
#include "../model/sushiswap_swap_dto.h"
#include "../model/sushiswap_token_dto.h"


// Exchanges (current) 🔥
//
// Gets exchanges.
//
list_t*
SushiswapAPI_curveGetExchangesCurrent(apiClient_t *apiClient);


// Trades (current) 🔥
//
// Gets trades.
//
list_t*
SushiswapAPI_dexGetTradesCurrent(apiClient_t *apiClient);


// Pools (current) 🔥
//
// Gets pools.
//
list_t*
SushiswapAPI_sushiswapGetPoolsCurrent(apiClient_t *apiClient);


// Swaps (current) 🔥
//
// Gets swaps.
//
list_t*
SushiswapAPI_sushiswapGetSwapsCurrent(apiClient_t *apiClient);


// Tokens (current) 🔥
//
// Gets tokens.
//
list_t*
SushiswapAPI_sushiswapGetTokensCurrent(apiClient_t *apiClient);


