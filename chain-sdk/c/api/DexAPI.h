#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


void
DexAPI_dappsDexBatchHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
DexAPI_dappsDexOrdersHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
DexAPI_dappsDexPricesHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
DexAPI_dappsDexSolutionHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
DexAPI_dappsDexStatsHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
DexAPI_dappsDexTokensHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
DexAPI_dappsDexTradesHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
DexAPI_dappsDexUsersHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


void
DexAPI_dappsDexWithdrawHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


void
DexAPI_dappsDexWithdrawRequestHistoricalGet(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


