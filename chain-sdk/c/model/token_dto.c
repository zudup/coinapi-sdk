#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "token_dto.h"



token_dto_t *token_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *factory,
    char *symbol,
    char *name,
    char *decimals,
    char *total_supply,
    char *volume,
    char *volume_usd,
    char *untracked_volume_usd,
    char *tx_count,
    char *liquidity,
    char *derived_eth,
    list_t *whitelist_pairs,
    long vid,
    char *token_symbol
    ) {
    token_dto_t *token_dto_local_var = malloc(sizeof(token_dto_t));
    if (!token_dto_local_var) {
        return NULL;
    }
    token_dto_local_var->entry_time = entry_time;
    token_dto_local_var->recv_time = recv_time;
    token_dto_local_var->block_number = block_number;
    token_dto_local_var->id = id;
    token_dto_local_var->factory = factory;
    token_dto_local_var->symbol = symbol;
    token_dto_local_var->name = name;
    token_dto_local_var->decimals = decimals;
    token_dto_local_var->total_supply = total_supply;
    token_dto_local_var->volume = volume;
    token_dto_local_var->volume_usd = volume_usd;
    token_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    token_dto_local_var->tx_count = tx_count;
    token_dto_local_var->liquidity = liquidity;
    token_dto_local_var->derived_eth = derived_eth;
    token_dto_local_var->whitelist_pairs = whitelist_pairs;
    token_dto_local_var->vid = vid;
    token_dto_local_var->token_symbol = token_symbol;

    return token_dto_local_var;
}


void token_dto_free(token_dto_t *token_dto) {
    if(NULL == token_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (token_dto->entry_time) {
        free(token_dto->entry_time);
        token_dto->entry_time = NULL;
    }
    if (token_dto->recv_time) {
        free(token_dto->recv_time);
        token_dto->recv_time = NULL;
    }
    if (token_dto->id) {
        free(token_dto->id);
        token_dto->id = NULL;
    }
    if (token_dto->factory) {
        free(token_dto->factory);
        token_dto->factory = NULL;
    }
    if (token_dto->symbol) {
        free(token_dto->symbol);
        token_dto->symbol = NULL;
    }
    if (token_dto->name) {
        free(token_dto->name);
        token_dto->name = NULL;
    }
    if (token_dto->decimals) {
        free(token_dto->decimals);
        token_dto->decimals = NULL;
    }
    if (token_dto->total_supply) {
        free(token_dto->total_supply);
        token_dto->total_supply = NULL;
    }
    if (token_dto->volume) {
        free(token_dto->volume);
        token_dto->volume = NULL;
    }
    if (token_dto->volume_usd) {
        free(token_dto->volume_usd);
        token_dto->volume_usd = NULL;
    }
    if (token_dto->untracked_volume_usd) {
        free(token_dto->untracked_volume_usd);
        token_dto->untracked_volume_usd = NULL;
    }
    if (token_dto->tx_count) {
        free(token_dto->tx_count);
        token_dto->tx_count = NULL;
    }
    if (token_dto->liquidity) {
        free(token_dto->liquidity);
        token_dto->liquidity = NULL;
    }
    if (token_dto->derived_eth) {
        free(token_dto->derived_eth);
        token_dto->derived_eth = NULL;
    }
    if (token_dto->whitelist_pairs) {
        list_ForEach(listEntry, token_dto->whitelist_pairs) {
            free(listEntry->data);
        }
        list_freeList(token_dto->whitelist_pairs);
        token_dto->whitelist_pairs = NULL;
    }
    if (token_dto->token_symbol) {
        free(token_dto->token_symbol);
        token_dto->token_symbol = NULL;
    }
    free(token_dto);
}

cJSON *token_dto_convertToJSON(token_dto_t *token_dto) {
    cJSON *item = cJSON_CreateObject();

    // token_dto->entry_time
    if(token_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", token_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // token_dto->recv_time
    if(token_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", token_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // token_dto->block_number
    if(token_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", token_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_dto->id
    if(token_dto->id) {
    if(cJSON_AddStringToObject(item, "id", token_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->factory
    if(token_dto->factory) {
    if(cJSON_AddStringToObject(item, "factory", token_dto->factory) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->symbol
    if(token_dto->symbol) {
    if(cJSON_AddStringToObject(item, "symbol", token_dto->symbol) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->name
    if(token_dto->name) {
    if(cJSON_AddStringToObject(item, "name", token_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->decimals
    if(token_dto->decimals) {
    if(cJSON_AddStringToObject(item, "decimals", token_dto->decimals) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->total_supply
    if(token_dto->total_supply) {
    if(cJSON_AddStringToObject(item, "total_supply", token_dto->total_supply) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->volume
    if(token_dto->volume) {
    if(cJSON_AddStringToObject(item, "volume", token_dto->volume) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->volume_usd
    if(token_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", token_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->untracked_volume_usd
    if(token_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", token_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->tx_count
    if(token_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", token_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->liquidity
    if(token_dto->liquidity) {
    if(cJSON_AddStringToObject(item, "liquidity", token_dto->liquidity) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->derived_eth
    if(token_dto->derived_eth) {
    if(cJSON_AddStringToObject(item, "derived_eth", token_dto->derived_eth) == NULL) {
    goto fail; //String
    }
    }


    // token_dto->whitelist_pairs
    if(token_dto->whitelist_pairs) {
    cJSON *whitelist_pairs = cJSON_AddArrayToObject(item, "whitelist_pairs");
    if(whitelist_pairs == NULL) {
        goto fail; //primitive container
    }

    listEntry_t *whitelist_pairsListEntry;
    list_ForEach(whitelist_pairsListEntry, token_dto->whitelist_pairs) {
    if(cJSON_AddStringToObject(whitelist_pairs, "", (char*)whitelist_pairsListEntry->data) == NULL)
    {
        goto fail;
    }
    }
    }


    // token_dto->vid
    if(token_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", token_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_dto->token_symbol
    if(token_dto->token_symbol) {
    if(cJSON_AddStringToObject(item, "token_symbol", token_dto->token_symbol) == NULL) {
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

token_dto_t *token_dto_parseFromJSON(cJSON *token_dtoJSON){

    token_dto_t *token_dto_local_var = NULL;

    // define the local list for token_dto->whitelist_pairs
    list_t *whitelist_pairsList = NULL;

    // token_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // token_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // token_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // token_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // token_dto->factory
    cJSON *factory = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "factory");
    if (factory) { 
    if(!cJSON_IsString(factory))
    {
    goto end; //String
    }
    }

    // token_dto->symbol
    cJSON *symbol = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "symbol");
    if (symbol) { 
    if(!cJSON_IsString(symbol))
    {
    goto end; //String
    }
    }

    // token_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // token_dto->decimals
    cJSON *decimals = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "decimals");
    if (decimals) { 
    if(!cJSON_IsString(decimals))
    {
    goto end; //String
    }
    }

    // token_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "total_supply");
    if (total_supply) { 
    if(!cJSON_IsString(total_supply))
    {
    goto end; //String
    }
    }

    // token_dto->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "volume");
    if (volume) { 
    if(!cJSON_IsString(volume))
    {
    goto end; //String
    }
    }

    // token_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd))
    {
    goto end; //String
    }
    }

    // token_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // token_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count))
    {
    goto end; //String
    }
    }

    // token_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "liquidity");
    if (liquidity) { 
    if(!cJSON_IsString(liquidity))
    {
    goto end; //String
    }
    }

    // token_dto->derived_eth
    cJSON *derived_eth = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "derived_eth");
    if (derived_eth) { 
    if(!cJSON_IsString(derived_eth))
    {
    goto end; //String
    }
    }

    // token_dto->whitelist_pairs
    cJSON *whitelist_pairs = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "whitelist_pairs");
    if (whitelist_pairs) { 
    cJSON *whitelist_pairs_local = NULL;
    if(!cJSON_IsArray(whitelist_pairs)) {
        goto end;//primitive container
    }
    whitelist_pairsList = list_createList();

    cJSON_ArrayForEach(whitelist_pairs_local, whitelist_pairs)
    {
        if(!cJSON_IsString(whitelist_pairs_local))
        {
            goto end;
        }
        list_addElement(whitelist_pairsList , strdup(whitelist_pairs_local->valuestring));
    }
    }

    // token_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // token_dto->token_symbol
    cJSON *token_symbol = cJSON_GetObjectItemCaseSensitive(token_dtoJSON, "token_symbol");
    if (token_symbol) { 
    if(!cJSON_IsString(token_symbol))
    {
    goto end; //String
    }
    }


    token_dto_local_var = token_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        factory ? strdup(factory->valuestring) : NULL,
        symbol ? strdup(symbol->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL,
        decimals ? strdup(decimals->valuestring) : NULL,
        total_supply ? strdup(total_supply->valuestring) : NULL,
        volume ? strdup(volume->valuestring) : NULL,
        volume_usd ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd ? strdup(untracked_volume_usd->valuestring) : NULL,
        tx_count ? strdup(tx_count->valuestring) : NULL,
        liquidity ? strdup(liquidity->valuestring) : NULL,
        derived_eth ? strdup(derived_eth->valuestring) : NULL,
        whitelist_pairs ? whitelist_pairsList : NULL,
        vid ? vid->valuedouble : 0,
        token_symbol ? strdup(token_symbol->valuestring) : NULL
        );

    return token_dto_local_var;
end:
    if (whitelist_pairsList) {
        listEntry_t *listEntry = NULL;
        list_ForEach(listEntry, whitelist_pairsList) {
            free(listEntry->data);
            listEntry->data = NULL;
        }
        list_freeList(whitelist_pairsList);
        whitelist_pairsList = NULL;
    }
    return NULL;

}
