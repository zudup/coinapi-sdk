#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"
#include "../model/cow_order_dto.h"
#include "../model/cow_settlement_dto.h"
#include "../model/cow_token_dto.h"
#include "../model/cow_trade_dto.h"
#include "../model/cow_user_dto.h"


// OrderDTOs (historical) 🔥
//
// Gets OrderDTOs.
//
list_t*
CowAPI_cowGetOrderDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Orders (historical)
//
// Gets orders.
//
list_t*
CowAPI_cowGetOrdersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// SettlementDTOs (historical) 🔥
//
// Gets SettlementDTOs.
//
list_t*
CowAPI_cowGetSettlementDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Settlements (historical)
//
// Gets settlements.
//
list_t*
CowAPI_cowGetSettlementsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// TokenDTOs (historical) 🔥
//
// Gets TokenDTOs.
//
list_t*
CowAPI_cowGetTokenDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
CowAPI_cowGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * tokenId );


// TradeDTOs (historical) 🔥
//
// Gets TradeDTOs.
//
list_t*
CowAPI_cowGetTradeDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Trades (historical) 🔥
//
// Gets trades.
//
list_t*
CowAPI_cowGetTradesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


// UserDTOs (historical) 🔥
//
// Gets UserDTOs.
//
list_t*
CowAPI_cowGetUserDTOsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * poolId );


// Users (historical)
//
// Gets users.
//
list_t*
CowAPI_cowGetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate );


