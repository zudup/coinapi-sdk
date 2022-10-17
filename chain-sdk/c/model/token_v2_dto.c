#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "token_v2_dto.h"



token_v2_dto_t *token_v2_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *symbol,
    char *name,
    int decimals,
    big_integer_t *total_supply,
    char *trade_volume,
    char *trade_volume_usd,
    char *untracked_volume_usd,
    big_integer_t *tx_count,
    char *total_liquidity,
    char *derived_eth,
    char *token_symbol
    ) {
    token_v2_dto_t *token_v2_dto_local_var = malloc(sizeof(token_v2_dto_t));
    if (!token_v2_dto_local_var) {
        return NULL;
    }
    token_v2_dto_local_var->entry_time = entry_time;
    token_v2_dto_local_var->recv_time = recv_time;
    token_v2_dto_local_var->block_number = block_number;
    token_v2_dto_local_var->vid = vid;
    token_v2_dto_local_var->id = id;
    token_v2_dto_local_var->symbol = symbol;
    token_v2_dto_local_var->name = name;
    token_v2_dto_local_var->decimals = decimals;
    token_v2_dto_local_var->total_supply = total_supply;
    token_v2_dto_local_var->trade_volume = trade_volume;
    token_v2_dto_local_var->trade_volume_usd = trade_volume_usd;
    token_v2_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    token_v2_dto_local_var->tx_count = tx_count;
    token_v2_dto_local_var->total_liquidity = total_liquidity;
    token_v2_dto_local_var->derived_eth = derived_eth;
    token_v2_dto_local_var->token_symbol = token_symbol;

    return token_v2_dto_local_var;
}


void token_v2_dto_free(token_v2_dto_t *token_v2_dto) {
    if(NULL == token_v2_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (token_v2_dto->entry_time) {
        free(token_v2_dto->entry_time);
        token_v2_dto->entry_time = NULL;
    }
    if (token_v2_dto->recv_time) {
        free(token_v2_dto->recv_time);
        token_v2_dto->recv_time = NULL;
    }
    if (token_v2_dto->id) {
        free(token_v2_dto->id);
        token_v2_dto->id = NULL;
    }
    if (token_v2_dto->symbol) {
        free(token_v2_dto->symbol);
        token_v2_dto->symbol = NULL;
    }
    if (token_v2_dto->name) {
        free(token_v2_dto->name);
        token_v2_dto->name = NULL;
    }
    if (token_v2_dto->total_supply) {
        big_integer_free(token_v2_dto->total_supply);
        token_v2_dto->total_supply = NULL;
    }
    if (token_v2_dto->trade_volume) {
        free(token_v2_dto->trade_volume);
        token_v2_dto->trade_volume = NULL;
    }
    if (token_v2_dto->trade_volume_usd) {
        free(token_v2_dto->trade_volume_usd);
        token_v2_dto->trade_volume_usd = NULL;
    }
    if (token_v2_dto->untracked_volume_usd) {
        free(token_v2_dto->untracked_volume_usd);
        token_v2_dto->untracked_volume_usd = NULL;
    }
    if (token_v2_dto->tx_count) {
        big_integer_free(token_v2_dto->tx_count);
        token_v2_dto->tx_count = NULL;
    }
    if (token_v2_dto->total_liquidity) {
        free(token_v2_dto->total_liquidity);
        token_v2_dto->total_liquidity = NULL;
    }
    if (token_v2_dto->derived_eth) {
        free(token_v2_dto->derived_eth);
        token_v2_dto->derived_eth = NULL;
    }
    if (token_v2_dto->token_symbol) {
        free(token_v2_dto->token_symbol);
        token_v2_dto->token_symbol = NULL;
    }
    free(token_v2_dto);
}

cJSON *token_v2_dto_convertToJSON(token_v2_dto_t *token_v2_dto) {
    cJSON *item = cJSON_CreateObject();

    // token_v2_dto->entry_time
    if(token_v2_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", token_v2_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // token_v2_dto->recv_time
    if(token_v2_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", token_v2_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // token_v2_dto->block_number
    if(token_v2_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", token_v2_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_v2_dto->vid
    if(token_v2_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", token_v2_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_v2_dto->id
    if(token_v2_dto->id) {
    if(cJSON_AddStringToObject(item, "id", token_v2_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // token_v2_dto->symbol
    if(token_v2_dto->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", token_v2_dto->symbol) == NULL) {
    goto fail; //String
    }
    }


    // token_v2_dto->name
    if(token_v2_dto->name) {
    if(cJSON_AddStringToObject(item, "name", token_v2_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // token_v2_dto->decimals
    if(token_v2_dto->decimals) {
    if(cJSON_AddNumberToObject(item, "decimals", token_v2_dto->decimals) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_v2_dto->total_supply
    if(token_v2_dto->total_supply) {
    cJSON *total_supply_local_JSON = big_integer_convertToJSON(token_v2_dto->total_supply);
    if(total_supply_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "total_supply", total_supply_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // token_v2_dto->trade_volume
    if(token_v2_dto->trade_volume) {
    if(cJSON_AddStringToObject(item, "trade_volume", token_v2_dto->trade_volume) == NULL) {
    goto fail; //String
    }
    }


    // token_v2_dto->trade_volume_usd
    if(token_v2_dto->trade_volume_usd) {
    if(cJSON_AddStringToObject(item, "trade_volume_usd", token_v2_dto->trade_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_v2_dto->untracked_volume_usd
    if(token_v2_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", token_v2_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_v2_dto->tx_count
    if(token_v2_dto->tx_count) {
    cJSON *tx_count_local_JSON = big_integer_convertToJSON(token_v2_dto->tx_count);
    if(tx_count_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tx_count", tx_count_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // token_v2_dto->total_liquidity
    if(token_v2_dto->total_liquidity) {
    if(cJSON_AddStringToObject(item, "total_liquidity", token_v2_dto->total_liquidity) == NULL) {
    goto fail; //String
    }
    }


    // token_v2_dto->derived_eth
    if(token_v2_dto->derived_eth) {
    if(cJSON_AddStringToObject(item, "derived_eth", token_v2_dto->derived_eth) == NULL) {
    goto fail; //String
    }
    }


    // token_v2_dto->token_symbol
    if(token_v2_dto->token_symbol) {
    if(cJSON_AddStringToObject(item, "token_symbol", token_v2_dto->token_symbol) == NULL) {
    goto fail; //String
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

token_v2_dto_t *token_v2_dto_parseFromJSON(cJSON *token_v2_dtoJSON){

    token_v2_dto_t *token_v2_dto_local_var = NULL;

    // define the local variable for token_v2_dto->total_supply
    big_integer_t *total_supply_local_nonprim = NULL;

    // define the local variable for token_v2_dto->tx_count
    big_integer_t *tx_count_local_nonprim = NULL;

    // token_v2_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // token_v2_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // token_v2_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // token_v2_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // token_v2_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // token_v2_dto->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "symbol");
    if (symbol) { 
    if(!cJSON_IsString(symbol))
    {
    goto end; //String
    }
    }

    // token_v2_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // token_v2_dto->decimals
    cJSON *decimals = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "decimals");
    if (decimals) { 
    if(!cJSON_IsNumber(decimals))
    {
    goto end; //Numeric
    }
    }

    // token_v2_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "total_supply");
    if (total_supply) { 
    total_supply_local_nonprim = big_integer_parseFromJSON(total_supply); //nonprimitive
    }

    // token_v2_dto->trade_volume
    cJSON *trade_volume = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "trade_volume");
    if (trade_volume) { 
    if(!cJSON_IsString(trade_volume))
    {
    goto end; //String
    }
    }

    // token_v2_dto->trade_volume_usd
    cJSON *trade_volume_usd = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "trade_volume_usd");
    if (trade_volume_usd) { 
    if(!cJSON_IsString(trade_volume_usd))
    {
    goto end; //String
    }
    }

    // token_v2_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // token_v2_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "tx_count");
    if (tx_count) { 
    tx_count_local_nonprim = big_integer_parseFromJSON(tx_count); //nonprimitive
    }

    // token_v2_dto->total_liquidity
    cJSON *total_liquidity = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "total_liquidity");
    if (total_liquidity) { 
    if(!cJSON_IsString(total_liquidity))
    {
    goto end; //String
    }
    }

    // token_v2_dto->derived_eth
    cJSON *derived_eth = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "derived_eth");
    if (derived_eth) { 
    if(!cJSON_IsString(derived_eth))
    {
    goto end; //String
    }
    }

    // token_v2_dto->token_symbol
    cJSON *token_symbol = cJSON_GetObjectItemCaseSensitive(token_v2_dtoJSON, "token_symbol");
    if (token_symbol) { 
    if(!cJSON_IsString(token_symbol))
    {
    goto end; //String
    }
    }


    token_v2_dto_local_var = token_v2_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        symbol ? strdup(symbol->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL,
        decimals ? decimals->valuedouble : 0,
        total_supply ? total_supply_local_nonprim : NULL,
        trade_volume ? strdup(trade_volume->valuestring) : NULL,
        trade_volume_usd ? strdup(trade_volume_usd->valuestring) : NULL,
        untracked_volume_usd ? strdup(untracked_volume_usd->valuestring) : NULL,
        tx_count ? tx_count_local_nonprim : NULL,
        total_liquidity ? strdup(total_liquidity->valuestring) : NULL,
        derived_eth ? strdup(derived_eth->valuestring) : NULL,
        token_symbol ? strdup(token_symbol->valuestring) : NULL
        );

    return token_v2_dto_local_var;
end:
    if (total_supply_local_nonprim) {
        big_integer_free(total_supply_local_nonprim);
        total_supply_local_nonprim = NULL;
    }
    if (tx_count_local_nonprim) {
        big_integer_free(tx_count_local_nonprim);
        tx_count_local_nonprim = NULL;
    }
    return NULL;

}
