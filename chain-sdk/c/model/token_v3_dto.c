#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "token_v3_dto.h"



token_v3_dto_t *token_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *symbol,
    char *name,
    int decimals,
    big_integer_t *total_supply,
    char *volume,
    char *volume_usd,
    char *untracked_volume_usd,
    char *fees_usd,
    big_integer_t *tx_count,
    big_integer_t *pool_count,
    char *total_value_locked,
    char *total_value_locked_usd,
    char *total_value_locked_usd_untracked,
    char *derived_eth,
    list_t *whitelist_pools,
    char *token_symbol
    ) {
    token_v3_dto_t *token_v3_dto_local_var = malloc(sizeof(token_v3_dto_t));
    if (!token_v3_dto_local_var) {
        return NULL;
    }
    token_v3_dto_local_var->entry_time = entry_time;
    token_v3_dto_local_var->recv_time = recv_time;
    token_v3_dto_local_var->block_number = block_number;
    token_v3_dto_local_var->vid = vid;
    token_v3_dto_local_var->id = id;
    token_v3_dto_local_var->symbol = symbol;
    token_v3_dto_local_var->name = name;
    token_v3_dto_local_var->decimals = decimals;
    token_v3_dto_local_var->total_supply = total_supply;
    token_v3_dto_local_var->volume = volume;
    token_v3_dto_local_var->volume_usd = volume_usd;
    token_v3_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    token_v3_dto_local_var->fees_usd = fees_usd;
    token_v3_dto_local_var->tx_count = tx_count;
    token_v3_dto_local_var->pool_count = pool_count;
    token_v3_dto_local_var->total_value_locked = total_value_locked;
    token_v3_dto_local_var->total_value_locked_usd = total_value_locked_usd;
    token_v3_dto_local_var->total_value_locked_usd_untracked = total_value_locked_usd_untracked;
    token_v3_dto_local_var->derived_eth = derived_eth;
    token_v3_dto_local_var->whitelist_pools = whitelist_pools;
    token_v3_dto_local_var->token_symbol = token_symbol;

    return token_v3_dto_local_var;
}


void token_v3_dto_free(token_v3_dto_t *token_v3_dto) {
    if(NULL == token_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (token_v3_dto->entry_time) {
        free(token_v3_dto->entry_time);
        token_v3_dto->entry_time = NULL;
    }
    if (token_v3_dto->recv_time) {
        free(token_v3_dto->recv_time);
        token_v3_dto->recv_time = NULL;
    }
    if (token_v3_dto->id) {
        free(token_v3_dto->id);
        token_v3_dto->id = NULL;
    }
    if (token_v3_dto->symbol) {
        free(token_v3_dto->symbol);
        token_v3_dto->symbol = NULL;
    }
    if (token_v3_dto->name) {
        free(token_v3_dto->name);
        token_v3_dto->name = NULL;
    }
    if (token_v3_dto->total_supply) {
        big_integer_free(token_v3_dto->total_supply);
        token_v3_dto->total_supply = NULL;
    }
    if (token_v3_dto->volume) {
        free(token_v3_dto->volume);
        token_v3_dto->volume = NULL;
    }
    if (token_v3_dto->volume_usd) {
        free(token_v3_dto->volume_usd);
        token_v3_dto->volume_usd = NULL;
    }
    if (token_v3_dto->untracked_volume_usd) {
        free(token_v3_dto->untracked_volume_usd);
        token_v3_dto->untracked_volume_usd = NULL;
    }
    if (token_v3_dto->fees_usd) {
        free(token_v3_dto->fees_usd);
        token_v3_dto->fees_usd = NULL;
    }
    if (token_v3_dto->tx_count) {
        big_integer_free(token_v3_dto->tx_count);
        token_v3_dto->tx_count = NULL;
    }
    if (token_v3_dto->pool_count) {
        big_integer_free(token_v3_dto->pool_count);
        token_v3_dto->pool_count = NULL;
    }
    if (token_v3_dto->total_value_locked) {
        free(token_v3_dto->total_value_locked);
        token_v3_dto->total_value_locked = NULL;
    }
    if (token_v3_dto->total_value_locked_usd) {
        free(token_v3_dto->total_value_locked_usd);
        token_v3_dto->total_value_locked_usd = NULL;
    }
    if (token_v3_dto->total_value_locked_usd_untracked) {
        free(token_v3_dto->total_value_locked_usd_untracked);
        token_v3_dto->total_value_locked_usd_untracked = NULL;
    }
    if (token_v3_dto->derived_eth) {
        free(token_v3_dto->derived_eth);
        token_v3_dto->derived_eth = NULL;
    }
    if (token_v3_dto->whitelist_pools) {
        list_ForEach(listEntry, token_v3_dto->whitelist_pools) {
            free(listEntry->data);
        }
        list_freeList(token_v3_dto->whitelist_pools);
        token_v3_dto->whitelist_pools = NULL;
    }
    if (token_v3_dto->token_symbol) {
        free(token_v3_dto->token_symbol);
        token_v3_dto->token_symbol = NULL;
    }
    free(token_v3_dto);
}

cJSON *token_v3_dto_convertToJSON(token_v3_dto_t *token_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // token_v3_dto->entry_time
    if(token_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", token_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // token_v3_dto->recv_time
    if(token_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", token_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // token_v3_dto->block_number
    if(token_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", token_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_v3_dto->vid
    if(token_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", token_v3_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_v3_dto->id
    if(token_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", token_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->symbol
    if(token_v3_dto->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", token_v3_dto->symbol) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->name
    if(token_v3_dto->name) {
    if(cJSON_AddStringToObject(item, "name", token_v3_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->decimals
    if(token_v3_dto->decimals) {
    if(cJSON_AddNumberToObject(item, "decimals", token_v3_dto->decimals) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_v3_dto->total_supply
    if(token_v3_dto->total_supply) {
    cJSON *total_supply_local_JSON = big_integer_convertToJSON(token_v3_dto->total_supply);
    if(total_supply_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "total_supply", total_supply_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // token_v3_dto->volume
    if(token_v3_dto->volume) {
    if(cJSON_AddStringToObject(item, "volume", token_v3_dto->volume) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->volume_usd
    if(token_v3_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", token_v3_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->untracked_volume_usd
    if(token_v3_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", token_v3_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->fees_usd
    if(token_v3_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", token_v3_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->tx_count
    if(token_v3_dto->tx_count) {
    cJSON *tx_count_local_JSON = big_integer_convertToJSON(token_v3_dto->tx_count);
    if(tx_count_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tx_count", tx_count_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // token_v3_dto->pool_count
    if(token_v3_dto->pool_count) {
    cJSON *pool_count_local_JSON = big_integer_convertToJSON(token_v3_dto->pool_count);
    if(pool_count_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "pool_count", pool_count_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // token_v3_dto->total_value_locked
    if(token_v3_dto->total_value_locked) {
    if(cJSON_AddStringToObject(item, "total_value_locked", token_v3_dto->total_value_locked) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->total_value_locked_usd
    if(token_v3_dto->total_value_locked_usd) {
    if(cJSON_AddStringToObject(item, "total_value_locked_usd", token_v3_dto->total_value_locked_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->total_value_locked_usd_untracked
    if(token_v3_dto->total_value_locked_usd_untracked) {
    if(cJSON_AddStringToObject(item, "total_value_locked_usd_untracked", token_v3_dto->total_value_locked_usd_untracked) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->derived_eth
    if(token_v3_dto->derived_eth) {
    if(cJSON_AddStringToObject(item, "derived_eth", token_v3_dto->derived_eth) == NULL) {
    goto fail; //String
    }
    }


    // token_v3_dto->whitelist_pools
    if(token_v3_dto->whitelist_pools) {
    cJSON *whitelist_pools = cJSON_AddArrayToObject(item, "whitelist_pools");
    if(whitelist_pools == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *whitelist_poolsListEntry;
    list_ForEach(whitelist_poolsListEntry, token_v3_dto->whitelist_pools) {
    if(cJSON_AddStringToObject(whitelist_pools, "", (char*)whitelist_poolsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // token_v3_dto->token_symbol
    if(token_v3_dto->token_symbol) {
    if(cJSON_AddStringToObject(item, "token_symbol", token_v3_dto->token_symbol) == NULL) {
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

token_v3_dto_t *token_v3_dto_parseFromJSON(cJSON *token_v3_dtoJSON){

    token_v3_dto_t *token_v3_dto_local_var = NULL;

    // define the local variable for token_v3_dto->total_supply
    big_integer_t *total_supply_local_nonprim = NULL;

    // define the local variable for token_v3_dto->tx_count
    big_integer_t *tx_count_local_nonprim = NULL;

    // define the local variable for token_v3_dto->pool_count
    big_integer_t *pool_count_local_nonprim = NULL;

    // define the local list for token_v3_dto->whitelist_pools
    list_t *whitelist_poolsList = NULL;

    // token_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // token_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // token_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // token_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // token_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // token_v3_dto->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "symbol");
    if (symbol) { 
    if(!cJSON_IsString(symbol))
    {
    goto end; //String
    }
    }

    // token_v3_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // token_v3_dto->decimals
    cJSON *decimals = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "decimals");
    if (decimals) { 
    if(!cJSON_IsNumber(decimals))
    {
    goto end; //Numeric
    }
    }

    // token_v3_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "total_supply");
    if (total_supply) { 
    total_supply_local_nonprim = big_integer_parseFromJSON(total_supply); //nonprimitive
    }

    // token_v3_dto->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "volume");
    if (volume) { 
    if(!cJSON_IsString(volume))
    {
    goto end; //String
    }
    }

    // token_v3_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd))
    {
    goto end; //String
    }
    }

    // token_v3_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // token_v3_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd))
    {
    goto end; //String
    }
    }

    // token_v3_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "tx_count");
    if (tx_count) { 
    tx_count_local_nonprim = big_integer_parseFromJSON(tx_count); //nonprimitive
    }

    // token_v3_dto->pool_count
    cJSON *pool_count = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "pool_count");
    if (pool_count) { 
    pool_count_local_nonprim = big_integer_parseFromJSON(pool_count); //nonprimitive
    }

    // token_v3_dto->total_value_locked
    cJSON *total_value_locked = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "total_value_locked");
    if (total_value_locked) { 
    if(!cJSON_IsString(total_value_locked))
    {
    goto end; //String
    }
    }

    // token_v3_dto->total_value_locked_usd
    cJSON *total_value_locked_usd = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "total_value_locked_usd");
    if (total_value_locked_usd) { 
    if(!cJSON_IsString(total_value_locked_usd))
    {
    goto end; //String
    }
    }

    // token_v3_dto->total_value_locked_usd_untracked
    cJSON *total_value_locked_usd_untracked = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "total_value_locked_usd_untracked");
    if (total_value_locked_usd_untracked) { 
    if(!cJSON_IsString(total_value_locked_usd_untracked))
    {
    goto end; //String
    }
    }

    // token_v3_dto->derived_eth
    cJSON *derived_eth = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "derived_eth");
    if (derived_eth) { 
    if(!cJSON_IsString(derived_eth))
    {
    goto end; //String
    }
    }

    // token_v3_dto->whitelist_pools
    cJSON *whitelist_pools = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "whitelist_pools");
    if (whitelist_pools) { 
    cJSON *whitelist_pools_local = NULL;
    if(!cJSON_IsArray(whitelist_pools)) {
        goto end;//primitive container
    }
    whitelist_poolsList = list_createList();

    cJSON_ArrayForEach(whitelist_pools_local, whitelist_pools)
    {
        if(!cJSON_IsString(whitelist_pools_local))
        {
            goto end;
        }
        list_addElement(whitelist_poolsList , strdup(whitelist_pools_local->valuestring));
    }
    }

    // token_v3_dto->token_symbol
    cJSON *token_symbol = cJSON_GetObjectItemCaseSensitive(token_v3_dtoJSON, "token_symbol");
    if (token_symbol) { 
    if(!cJSON_IsString(token_symbol))
    {
    goto end; //String
    }
    }


    token_v3_dto_local_var = token_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        symbol ? strdup(symbol->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL,
        decimals ? decimals->valuedouble : 0,
        total_supply ? total_supply_local_nonprim : NULL,
        volume ? strdup(volume->valuestring) : NULL,
        volume_usd ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd ? strdup(untracked_volume_usd->valuestring) : NULL,
        fees_usd ? strdup(fees_usd->valuestring) : NULL,
        tx_count ? tx_count_local_nonprim : NULL,
        pool_count ? pool_count_local_nonprim : NULL,
        total_value_locked ? strdup(total_value_locked->valuestring) : NULL,
        total_value_locked_usd ? strdup(total_value_locked_usd->valuestring) : NULL,
        total_value_locked_usd_untracked ? strdup(total_value_locked_usd_untracked->valuestring) : NULL,
        derived_eth ? strdup(derived_eth->valuestring) : NULL,
        whitelist_pools ? whitelist_poolsList : NULL,
        token_symbol ? strdup(token_symbol->valuestring) : NULL
        );

    return token_v3_dto_local_var;
end:
    if (total_supply_local_nonprim) {
        big_integer_free(total_supply_local_nonprim);
        total_supply_local_nonprim = NULL;
    }
    if (tx_count_local_nonprim) {
        big_integer_free(tx_count_local_nonprim);
        tx_count_local_nonprim = NULL;
    }
    if (pool_count_local_nonprim) {
        big_integer_free(pool_count_local_nonprim);
        pool_count_local_nonprim = NULL;
    }
    if (whitelist_poolsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, whitelist_poolsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(whitelist_poolsList);
        whitelist_poolsList = NULL;
    }
    return NULL;

}
