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


// BatchDTOs (historical) 🔥
//
// Gets BatchDTOs.
//
list_t*
DexAPI_dexGetBatchDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Batches (historical)
//
// Gets batches.
//
list_t*
DexAPI_dexGetBatchesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// DepositDTOs (historical) 🔥
//
// Gets DepositDTOs.
//
list_t*
DexAPI_dexGetDepositDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Deposits (historical)
//
// Gets deposits.
//
list_t*
DexAPI_dexGetDepositsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// OrderDTOs (historical) 🔥
//
// Gets OrderDTOs.
//
list_t*
DexAPI_dexGetOrderDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Orders (historical)
//
// Gets orders.
//
list_t*
DexAPI_dexGetOrdersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// PriceDTOs (historical) 🔥
//
// Gets PriceDTOs.
//
list_t*
DexAPI_dexGetPriceDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Prices (historical)
//
// Gets prices.
//
list_t*
DexAPI_dexGetPricesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// SolutionDTOs (historical) 🔥
//
// Gets SolutionDTOs.
//
list_t*
DexAPI_dexGetSolutionDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Solutions (historical)
//
// Gets solutions.
//
list_t*
DexAPI_dexGetSolutionsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// StatsDTOs (historical) 🔥
//
// Gets StatsDTOs.
//
list_t*
DexAPI_dexGetStatsDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Stats (historical)
//
// Gets stats.
//
list_t*
DexAPI_dexGetStatsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// TokenDTOs (historical) 🔥
//
// Gets TokenDTOs.
//
list_t*
DexAPI_dexGetTokenDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
DexAPI_dexGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// TradeDTOs (historical) 🔥
//
// Gets TradeDTOs.
//
list_t*
DexAPI_dexGetTradeDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Trades (historical) 🔥
//
// Gets trades.
//
list_t*
DexAPI_dexGetTradesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// UserDTOs (historical) 🔥
//
// Gets UserDTOs.
//
list_t*
DexAPI_dexGetUserDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Users (historical)
//
// Gets users.
//
list_t*
DexAPI_dexGetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// WithdrawDTOs (historical) 🔥
//
// Gets WithdrawDTOs.
//
list_t*
DexAPI_dexGetWithdrawDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// WithdrawRequestDTOs (historical) 🔥
//
// Gets WithdrawRequestDTOs.
//
list_t*
DexAPI_dexGetWithdrawRequestDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


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


