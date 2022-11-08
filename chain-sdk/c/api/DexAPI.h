#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/dex_batch_dto.h"
#include "../model/dex_deposit_dto.h"
#include "../model/dex_order_dto.h"
#include "../model/dex_price_dto.h"
#include "../model/dex_solution_dto.h"
#include "../model/dex_stats_dto.h"
#include "../model/dex_token_dto.h"
#include "../model/dex_trade_dto.h"
#include "../model/dex_user_dto.h"
#include "../model/dex_withdraw_dto.h"
#include "../model/dex_withdraw_request_dto.h"


// GetBatches (historical)
//
// Gets batches.
//
list_t*
DexAPI_dexGetBatchesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetDeposits (historical)
//
// Gets deposits.
//
list_t*
DexAPI_dexGetDepositsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetOrders (historical)
//
// Gets orders.
//
list_t*
DexAPI_dexGetOrdersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetPrices (historical)
//
// Gets prices.
//
list_t*
DexAPI_dexGetPricesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetSolutions (historical)
//
// Gets solutions.
//
list_t*
DexAPI_dexGetSolutionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetStats (historical)
//
// Gets stats.
//
list_t*
DexAPI_dexGetStatsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetTokens (historical) 🔥
//
// Gets tokens.
//
list_t*
DexAPI_dexGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetTrades (historical) 🔥
//
// Gets trades.
//
list_t*
DexAPI_dexGetTradesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetUsers (historical)
//
// Gets users.
//
list_t*
DexAPI_dexGetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// GetWithdraws (historical)
//
// Gets withdraws.
//
list_t*
DexAPI_dexGetWithdrawsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// GetWithdrawsRequests (historical)
//
// Gets withdraws requests.
//
list_t*
DexAPI_dexGetWithdrawsRequestsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


