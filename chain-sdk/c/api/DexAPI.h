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


// Batchs (historical) 🔥
//
// Gets batchs.
//
list_t*
DexAPI_dexGetBatchsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Deposits (historical) 🔥
//
// Gets deposits.
//
list_t*
DexAPI_dexGetDepositsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user );


// Orders (historical) 🔥
//
// Gets orders.
//
list_t*
DexAPI_dexGetOrdersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * buy_token , char * sell_token );


// Prices (historical) 🔥
//
// Gets prices.
//
list_t*
DexAPI_dexGetPricesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Solutions (historical) 🔥
//
// Gets solutions.
//
list_t*
DexAPI_dexGetSolutionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Statss (historical) 🔥
//
// Gets statss.
//
list_t*
DexAPI_dexGetStatssHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
DexAPI_dexGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * address , char * symbol , char * name );


// Trades (historical) 🔥
//
// Gets trades.
//
list_t*
DexAPI_dexGetTradesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * buy_token , char * sell_token );


// Users (historical) 🔥
//
// Gets users.
//
list_t*
DexAPI_dexGetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// WithdrawRequests (historical) 🔥
//
// Gets withdrawrequests.
//
list_t*
DexAPI_dexGetWithdrawRequestsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user );


// Withdraws (historical) 🔥
//
// Gets withdraws.
//
list_t*
DexAPI_dexGetWithdrawsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * user );


