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


// Orders (historical) 🔥
//
// Gets orders.
//
list_t*
CowAPI_cowGetOrdersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Settlements (historical) 🔥
//
// Gets settlements.
//
list_t*
CowAPI_cowGetSettlementsHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id );


// Tokens (historical) 🔥
//
// Gets tokens.
//
list_t*
CowAPI_cowGetTokensHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * address , char * name , char * symbol );


// Trades (historical) 🔥
//
// Gets trades.
//
list_t*
CowAPI_cowGetTradesHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * sell_token , char * buy_token );


// Users (historical) 🔥
//
// Gets users.
//
list_t*
CowAPI_cowGetUsersHistorical(apiClient_t *apiClient, long startBlock , long endBlock , char startDate , char endDate , char * id , char * address );


