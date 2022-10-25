#include <stdlib.h>
#include <stdio.h>
#include "../include/apiClient.h"
#include "../include/list.h"
#include "../external/cJSON.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"


void
OrdersAPI_chainsChainIdDappsCowOrdersHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate );


void
OrdersAPI_chainsChainIdDappsDexOrdersHistoricalGet(apiClient_t *apiClient, char * chain_id , long startBlock , long endBlock , char startDate , char endDate , char * tokenId );

