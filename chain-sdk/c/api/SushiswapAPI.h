#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/sushiswap_pair_dto.h"
#include "../model/sushiswap_swap_dto.h"
#include "../model/sushiswap_token_dto.h"


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


void
SushiswapAPI_dappsSushiswapTokenDayDataHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
SushiswapAPI_dappsSushiswapTransactionsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
SushiswapAPI_dappsSushiswapUsersHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Gets latest ETH.DeFi.DTO.Sushiswap.PairDTO.
//
list_t*
SushiswapAPI_sushiswapGetPoolsCurrent(apiClient_t *apiClient);


// Gets list of ETH.DeFi.DTO.Sushiswap.PairDTO data for the given filters.
//
list_t*
SushiswapAPI_sushiswapGetPoolsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Gets latest ETH.DeFi.DTO.Sushiswap.SwapDTO.
//
sushiswap_swap_dto_t*
SushiswapAPI_sushiswapGetSwapsCurrent(apiClient_t *apiClient);


// Gets list of ETH.DeFi.DTO.Sushiswap.SwapDTO data for the given filters.
//
list_t*
SushiswapAPI_sushiswapGetSwapsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Gets latest ETH.DeFi.DTO.Sushiswap.TokenDTO.
//
sushiswap_token_dto_t*
SushiswapAPI_sushiswapGetTokensCurrent(apiClient_t *apiClient);


// Gets list of ETH.DeFi.DTO.Sushiswap.TokenDTO for the given filters.
//
list_t*
SushiswapAPI_sushiswapGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


