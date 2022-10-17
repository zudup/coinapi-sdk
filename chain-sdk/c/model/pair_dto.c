#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pair_dto.h"



pair_dto_t *pair_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *factory,
    char *name,
    char *token_0,
    char *token_1,
    char *reserve_0,
    char *reserve_1,
    char *total_supply,
    char *reserve_eth,
    char *reserve_usd,
    char *tracked_reserve_eth,
    char *token_0_price,
    char *token_1_price,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *untracked_volume_usd,
    char *tx_count,
    char *liquidity_provider_count,
    char *timestamp,
    char *block,
    long vid,
    double evaluated_ask
    ) {
    pair_dto_t *pair_dto_local_var = malloc(sizeof(pair_dto_t));
    if (!pair_dto_local_var) {
        return NULL;
    }
    pair_dto_local_var->entry_time = entry_time;
    pair_dto_local_var->recv_time = recv_time;
    pair_dto_local_var->block_number = block_number;
    pair_dto_local_var->id = id;
    pair_dto_local_var->factory = factory;
    pair_dto_local_var->name = name;
    pair_dto_local_var->token_0 = token_0;
    pair_dto_local_var->token_1 = token_1;
    pair_dto_local_var->reserve_0 = reserve_0;
    pair_dto_local_var->reserve_1 = reserve_1;
    pair_dto_local_var->total_supply = total_supply;
    pair_dto_local_var->reserve_eth = reserve_eth;
    pair_dto_local_var->reserve_usd = reserve_usd;
    pair_dto_local_var->tracked_reserve_eth = tracked_reserve_eth;
    pair_dto_local_var->token_0_price = token_0_price;
    pair_dto_local_var->token_1_price = token_1_price;
    pair_dto_local_var->volume_token_0 = volume_token_0;
    pair_dto_local_var->volume_token_1 = volume_token_1;
    pair_dto_local_var->volume_usd = volume_usd;
    pair_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    pair_dto_local_var->tx_count = tx_count;
    pair_dto_local_var->liquidity_provider_count = liquidity_provider_count;
    pair_dto_local_var->timestamp = timestamp;
    pair_dto_local_var->block = block;
    pair_dto_local_var->vid = vid;
    pair_dto_local_var->evaluated_ask = evaluated_ask;

    return pair_dto_local_var;
}


void pair_dto_free(pair_dto_t *pair_dto) {
    if(NULL == pair_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (pair_dto->entry_time) {
        free(pair_dto->entry_time);
        pair_dto->entry_time = NULL;
    }
    if (pair_dto->recv_time) {
        free(pair_dto->recv_time);
        pair_dto->recv_time = NULL;
    }
    if (pair_dto->id) {
        free(pair_dto->id);
        pair_dto->id = NULL;
    }
    if (pair_dto->factory) {
        free(pair_dto->factory);
        pair_dto->factory = NULL;
    }
    if (pair_dto->name) {
        free(pair_dto->name);
        pair_dto->name = NULL;
    }
    if (pair_dto->token_0) {
        free(pair_dto->token_0);
        pair_dto->token_0 = NULL;
    }
    if (pair_dto->token_1) {
        free(pair_dto->token_1);
        pair_dto->token_1 = NULL;
    }
    if (pair_dto->reserve_0) {
        free(pair_dto->reserve_0);
        pair_dto->reserve_0 = NULL;
    }
    if (pair_dto->reserve_1) {
        free(pair_dto->reserve_1);
        pair_dto->reserve_1 = NULL;
    }
    if (pair_dto->total_supply) {
        free(pair_dto->total_supply);
        pair_dto->total_supply = NULL;
    }
    if (pair_dto->reserve_eth) {
        free(pair_dto->reserve_eth);
        pair_dto->reserve_eth = NULL;
    }
    if (pair_dto->reserve_usd) {
        free(pair_dto->reserve_usd);
        pair_dto->reserve_usd = NULL;
    }
    if (pair_dto->tracked_reserve_eth) {
        free(pair_dto->tracked_reserve_eth);
        pair_dto->tracked_reserve_eth = NULL;
    }
    if (pair_dto->token_0_price) {
        free(pair_dto->token_0_price);
        pair_dto->token_0_price = NULL;
    }
    if (pair_dto->token_1_price) {
        free(pair_dto->token_1_price);
        pair_dto->token_1_price = NULL;
    }
    if (pair_dto->volume_token_0) {
        free(pair_dto->volume_token_0);
        pair_dto->volume_token_0 = NULL;
    }
    if (pair_dto->volume_token_1) {
        free(pair_dto->volume_token_1);
        pair_dto->volume_token_1 = NULL;
    }
    if (pair_dto->volume_usd) {
        free(pair_dto->volume_usd);
        pair_dto->volume_usd = NULL;
    }
    if (pair_dto->untracked_volume_usd) {
        free(pair_dto->untracked_volume_usd);
        pair_dto->untracked_volume_usd = NULL;
    }
    if (pair_dto->tx_count) {
        free(pair_dto->tx_count);
        pair_dto->tx_count = NULL;
    }
    if (pair_dto->liquidity_provider_count) {
        free(pair_dto->liquidity_provider_count);
        pair_dto->liquidity_provider_count = NULL;
    }
    if (pair_dto->timestamp) {
        free(pair_dto->timestamp);
        pair_dto->timestamp = NULL;
    }
    if (pair_dto->block) {
        free(pair_dto->block);
        pair_dto->block = NULL;
    }
    free(pair_dto);
}

cJSON *pair_dto_convertToJSON(pair_dto_t *pair_dto) {
    cJSON *item = cJSON_CreateObject();

    // pair_dto->entry_time
    if(pair_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", pair_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // pair_dto->recv_time
    if(pair_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", pair_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // pair_dto->block_number
    if(pair_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", pair_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // pair_dto->id
    if(pair_dto->id) {
    if(cJSON_AddStringToObject(item, "id", pair_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->factory
    if(pair_dto->factory) {
    if(cJSON_AddStringToObject(item, "factory", pair_dto->factory) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->name
    if(pair_dto->name) {
    if(cJSON_AddStringToObject(item, "name", pair_dto->name) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->token_0
    if(pair_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", pair_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->token_1
    if(pair_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", pair_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->reserve_0
    if(pair_dto->reserve_0) {
    if(cJSON_AddStringToObject(item, "reserve_0", pair_dto->reserve_0) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->reserve_1
    if(pair_dto->reserve_1) {
    if(cJSON_AddStringToObject(item, "reserve_1", pair_dto->reserve_1) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->total_supply
    if(pair_dto->total_supply) {
    if(cJSON_AddStringToObject(item, "total_supply", pair_dto->total_supply) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->reserve_eth
    if(pair_dto->reserve_eth) {
    if(cJSON_AddStringToObject(item, "reserve_eth", pair_dto->reserve_eth) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->reserve_usd
    if(pair_dto->reserve_usd) {
    if(cJSON_AddStringToObject(item, "reserve_usd", pair_dto->reserve_usd) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->tracked_reserve_eth
    if(pair_dto->tracked_reserve_eth) {
    if(cJSON_AddStringToObject(item, "tracked_reserve_eth", pair_dto->tracked_reserve_eth) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->token_0_price
    if(pair_dto->token_0_price) {
    if(cJSON_AddStringToObject(item, "token_0_price", pair_dto->token_0_price) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->token_1_price
    if(pair_dto->token_1_price) {
    if(cJSON_AddStringToObject(item, "token_1_price", pair_dto->token_1_price) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->volume_token_0
    if(pair_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", pair_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->volume_token_1
    if(pair_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", pair_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->volume_usd
    if(pair_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", pair_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->untracked_volume_usd
    if(pair_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", pair_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->tx_count
    if(pair_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", pair_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->liquidity_provider_count
    if(pair_dto->liquidity_provider_count) {
    if(cJSON_AddStringToObject(item, "liquidity_provider_count", pair_dto->liquidity_provider_count) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->timestamp
    if(pair_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", pair_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->block
    if(pair_dto->block) {
    if(cJSON_AddStringToObject(item, "block", pair_dto->block) == NULL) {
    goto fail; //String
    }
    }


    // pair_dto->vid
    if(pair_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", pair_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // pair_dto->evaluated_ask
    if(pair_dto->evaluated_ask) {
    if(cJSON_AddNumberToObject(item, "evaluated_ask", pair_dto->evaluated_ask) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

pair_dto_t *pair_dto_parseFromJSON(cJSON *pair_dtoJSON){

    pair_dto_t *pair_dto_local_var = NULL;

    // pair_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // pair_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // pair_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // pair_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // pair_dto->factory
    cJSON *factory = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "factory");
    if (factory) { 
    if(!cJSON_IsString(factory))
    {
    goto end; //String
    }
    }

    // pair_dto->name
    cJSON *name = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "name");
    if (name) { 
    if(!cJSON_IsString(name))
    {
    goto end; //String
    }
    }

    // pair_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0))
    {
    goto end; //String
    }
    }

    // pair_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1))
    {
    goto end; //String
    }
    }

    // pair_dto->reserve_0
    cJSON *reserve_0 = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "reserve_0");
    if (reserve_0) { 
    if(!cJSON_IsString(reserve_0))
    {
    goto end; //String
    }
    }

    // pair_dto->reserve_1
    cJSON *reserve_1 = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "reserve_1");
    if (reserve_1) { 
    if(!cJSON_IsString(reserve_1))
    {
    goto end; //String
    }
    }

    // pair_dto->total_supply
    cJSON *total_supply = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "total_supply");
    if (total_supply) { 
    if(!cJSON_IsString(total_supply))
    {
    goto end; //String
    }
    }

    // pair_dto->reserve_eth
    cJSON *reserve_eth = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "reserve_eth");
    if (reserve_eth) { 
    if(!cJSON_IsString(reserve_eth))
    {
    goto end; //String
    }
    }

    // pair_dto->reserve_usd
    cJSON *reserve_usd = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "reserve_usd");
    if (reserve_usd) { 
    if(!cJSON_IsString(reserve_usd))
    {
    goto end; //String
    }
    }

    // pair_dto->tracked_reserve_eth
    cJSON *tracked_reserve_eth = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "tracked_reserve_eth");
    if (tracked_reserve_eth) { 
    if(!cJSON_IsString(tracked_reserve_eth))
    {
    goto end; //String
    }
    }

    // pair_dto->token_0_price
    cJSON *token_0_price = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "token_0_price");
    if (token_0_price) { 
    if(!cJSON_IsString(token_0_price))
    {
    goto end; //String
    }
    }

    // pair_dto->token_1_price
    cJSON *token_1_price = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "token_1_price");
    if (token_1_price) { 
    if(!cJSON_IsString(token_1_price))
    {
    goto end; //String
    }
    }

    // pair_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0))
    {
    goto end; //String
    }
    }

    // pair_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1))
    {
    goto end; //String
    }
    }

    // pair_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd))
    {
    goto end; //String
    }
    }

    // pair_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // pair_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count))
    {
    goto end; //String
    }
    }

    // pair_dto->liquidity_provider_count
    cJSON *liquidity_provider_count = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "liquidity_provider_count");
    if (liquidity_provider_count) { 
    if(!cJSON_IsString(liquidity_provider_count))
    {
    goto end; //String
    }
    }

    // pair_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp))
    {
    goto end; //String
    }
    }

    // pair_dto->block
    cJSON *block = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "block");
    if (block) { 
    if(!cJSON_IsString(block))
    {
    goto end; //String
    }
    }

    // pair_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // pair_dto->evaluated_ask
    cJSON *evaluated_ask = cJSON_GetObjectItemCaseSensitive(pair_dtoJSON, "evaluated_ask");
    if (evaluated_ask) { 
    if(!cJSON_IsNumber(evaluated_ask))
    {
    goto end; //Numeric
    }
    }


    pair_dto_local_var = pair_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        factory ? strdup(factory->valuestring) : NULL,
        name ? strdup(name->valuestring) : NULL,
        token_0 ? strdup(token_0->valuestring) : NULL,
        token_1 ? strdup(token_1->valuestring) : NULL,
        reserve_0 ? strdup(reserve_0->valuestring) : NULL,
        reserve_1 ? strdup(reserve_1->valuestring) : NULL,
        total_supply ? strdup(total_supply->valuestring) : NULL,
        reserve_eth ? strdup(reserve_eth->valuestring) : NULL,
        reserve_usd ? strdup(reserve_usd->valuestring) : NULL,
        tracked_reserve_eth ? strdup(tracked_reserve_eth->valuestring) : NULL,
        token_0_price ? strdup(token_0_price->valuestring) : NULL,
        token_1_price ? strdup(token_1_price->valuestring) : NULL,
        volume_token_0 ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd ? strdup(untracked_volume_usd->valuestring) : NULL,
        tx_count ? strdup(tx_count->valuestring) : NULL,
        liquidity_provider_count ? strdup(liquidity_provider_count->valuestring) : NULL,
        timestamp ? strdup(timestamp->valuestring) : NULL,
        block ? strdup(block->valuestring) : NULL,
        vid ? vid->valuedouble : 0,
        evaluated_ask ? evaluated_ask->valuedouble : 0
        );

    return pair_dto_local_var;
end:
    return NULL;

}
