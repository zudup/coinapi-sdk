#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "e_trade_aggressive_side.h"


char* e_trade_aggressive_side_e_trade_aggressive_side_ToString(onchain_api_e_trade_aggressive_side__e e_trade_aggressive_side) {
    char *e_trade_aggressive_sideArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
    return e_trade_aggressive_sideArray[e_trade_aggressive_side];
}

onchain_api_e_trade_aggressive_side__e e_trade_aggressive_side_e_trade_aggressive_side_FromString(char* e_trade_aggressive_side) {
    int stringToReturn = 0;
    char *e_trade_aggressive_sideArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
    size_t sizeofArray = sizeof(e_trade_aggressive_sideArray) / sizeof(e_trade_aggressive_sideArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(e_trade_aggressive_side, e_trade_aggressive_sideArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

cJSON *e_trade_aggressive_side_e_trade_aggressive_side_convertToJSON(onchain_api_e_trade_aggressive_side__e e_trade_aggressive_side) {
    cJSON *item = cJSON_CreateObject();
    if(cJSON_AddStringToObject(item, "e_trade_aggressive_side", e_trade_aggressive_side_e_trade_aggressive_side_ToString(e_trade_aggressive_side)) == NULL) {
        goto fail;
    }
    return item;
fail:
    cJSON_Delete(item);
    return NULL;
}

onchain_api_e_trade_aggressive_side__e e_trade_aggressive_side_e_trade_aggressive_side_parseFromJSON(cJSON *e_trade_aggressive_sideJSON) {
    onchain_api_e_trade_aggressive_side__e *e_trade_aggressive_side = NULL;
    onchain_api_e_trade_aggressive_side__e e_trade_aggressive_sideVariable;
    cJSON *e_trade_aggressive_sideVar = cJSON_GetObjectItemCaseSensitive(e_trade_aggressive_sideJSON, "e_trade_aggressive_side");
    if(!cJSON_IsString(e_trade_aggressive_sideVar) || (e_trade_aggressive_sideVar->valuestring == NULL)){
        goto end;
    }
    e_trade_aggressive_sideVariable = e_trade_aggressive_side_e_trade_aggressive_side_FromString(e_trade_aggressive_sideVar->valuestring);
    return e_trade_aggressive_sideVariable;
end:
    return 0;
}
