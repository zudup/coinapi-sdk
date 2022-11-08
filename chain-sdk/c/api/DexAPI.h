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


// Batches (historical)
//
// Gets batches.
//
list_t*
DexAPI_dexGetBatchesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Deposits (historical)
//
// Gets deposits.
//
list_t*
DexAPI_dexGetDepositsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// Orders (historical)
//
// Gets orders.
//
list_t*
DexAPI_dexGetOrdersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// Prices (historical)
//
// Gets prices.
//
list_t*
DexAPI_dexGetPricesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// Solutions (historical)
//
// Gets solutions.
//
list_t*
DexAPI_dexGetSolutionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// Stats (historical)
//
// Gets stats.
//
list_t*
DexAPI_dexGetStatsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
DexAPI_dexGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// Trades (historical) 🔥
//
// Gets trades.
//
list_t*
DexAPI_dexGetTradesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Users (historical)
//
// Gets users.
//
list_t*
DexAPI_dexGetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// Withdraws (historical)
//
// Gets withdraws.
//
list_t*
DexAPI_dexGetWithdrawsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// WithdrawsRequests (historical)
//
// Gets withdraws requests.
//
list_t*
DexAPI_dexGetWithdrawsRequestsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


