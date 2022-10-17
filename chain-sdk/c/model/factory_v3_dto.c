#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "factory_v3_dto.h"



factory_v3_dto_t *factory_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *pool_count,
    char *tx_count,
    char *total_volume_usd,
    char *total_volume_eth,
    char *total_fees_usd,
    char *total_fees_eth,
    char *untracked_volume_usd,
    char *total_value_locked_usd,
    char *total_value_locked_eth,
    char *total_value_locked_usd_untracked,
    char *total_value_locked_eth_untracked,
    char *owner,
    long vid
    ) {
    factory_v3_dto_t *factory_v3_dto_local_var = malloc(sizeof(factory_v3_dto_t));
    if (!factory_v3_dto_local_var) {
        return NULL;
    }
    factory_v3_dto_local_var->entry_time = entry_time;
    factory_v3_dto_local_var->recv_time = recv_time;
    factory_v3_dto_local_var->block_number = block_number;
    factory_v3_dto_local_var->id = id;
    factory_v3_dto_local_var->pool_count = pool_count;
    factory_v3_dto_local_var->tx_count = tx_count;
    factory_v3_dto_local_var->total_volume_usd = total_volume_usd;
    factory_v3_dto_local_var->total_volume_eth = total_volume_eth;
    factory_v3_dto_local_var->total_fees_usd = total_fees_usd;
    factory_v3_dto_local_var->total_fees_eth = total_fees_eth;
    factory_v3_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    factory_v3_dto_local_var->total_value_locked_usd = total_value_locked_usd;
    factory_v3_dto_local_var->total_value_locked_eth = total_value_locked_eth;
    factory_v3_dto_local_var->total_value_locked_usd_untracked = total_value_locked_usd_untracked;
    factory_v3_dto_local_var->total_value_locked_eth_untracked = total_value_locked_eth_untracked;
    factory_v3_dto_local_var->owner = owner;
    factory_v3_dto_local_var->vid = vid;

    return factory_v3_dto_local_var;
}


void factory_v3_dto_free(factory_v3_dto_t *factory_v3_dto) {
    if(NULL == factory_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (factory_v3_dto->entry_time) {
        free(factory_v3_dto->entry_time);
        factory_v3_dto->entry_time = NULL;
    }
    if (factory_v3_dto->recv_time) {
        free(factory_v3_dto->recv_time);
        factory_v3_dto->recv_time = NULL;
    }
    if (factory_v3_dto->id) {
        free(factory_v3_dto->id);
        factory_v3_dto->id = NULL;
    }
    if (factory_v3_dto->pool_count) {
        free(factory_v3_dto->pool_count);
        factory_v3_dto->pool_count = NULL;
    }
    if (factory_v3_dto->tx_count) {
        free(factory_v3_dto->tx_count);
        factory_v3_dto->tx_count = NULL;
    }
    if (factory_v3_dto->total_volume_usd) {
        free(factory_v3_dto->total_volume_usd);
        factory_v3_dto->total_volume_usd = NULL;
    }
    if (factory_v3_dto->total_volume_eth) {
        free(factory_v3_dto->total_volume_eth);
        factory_v3_dto->total_volume_eth = NULL;
    }
    if (factory_v3_dto->total_fees_usd) {
        free(factory_v3_dto->total_fees_usd);
        factory_v3_dto->total_fees_usd = NULL;
    }
    if (factory_v3_dto->total_fees_eth) {
        free(factory_v3_dto->total_fees_eth);
        factory_v3_dto->total_fees_eth = NULL;
    }
    if (factory_v3_dto->untracked_volume_usd) {
        free(factory_v3_dto->untracked_volume_usd);
        factory_v3_dto->untracked_volume_usd = NULL;
    }
    if (factory_v3_dto->total_value_locked_usd) {
        free(factory_v3_dto->total_value_locked_usd);
        factory_v3_dto->total_value_locked_usd = NULL;
    }
    if (factory_v3_dto->total_value_locked_eth) {
        free(factory_v3_dto->total_value_locked_eth);
        factory_v3_dto->total_value_locked_eth = NULL;
    }
    if (factory_v3_dto->total_value_locked_usd_untracked) {
        free(factory_v3_dto->total_value_locked_usd_untracked);
        factory_v3_dto->total_value_locked_usd_untracked = NULL;
    }
    if (factory_v3_dto->total_value_locked_eth_untracked) {
        free(factory_v3_dto->total_value_locked_eth_untracked);
        factory_v3_dto->total_value_locked_eth_untracked = NULL;
    }
    if (factory_v3_dto->owner) {
        free(factory_v3_dto->owner);
        factory_v3_dto->owner = NULL;
    }
    free(factory_v3_dto);
}

cJSON *factory_v3_dto_convertToJSON(factory_v3_dto_t *factory_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // factory_v3_dto->entry_time
    if(factory_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", factory_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // factory_v3_dto->recv_time
    if(factory_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", factory_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // factory_v3_dto->block_number
    if(factory_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", factory_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // factory_v3_dto->id
    if(factory_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", factory_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->pool_count
    if(factory_v3_dto->pool_count) {
    if(cJSON_AddStringToObject(item, "pool_count", factory_v3_dto->pool_count) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->tx_count
    if(factory_v3_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", factory_v3_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->total_volume_usd
    if(factory_v3_dto->total_volume_usd) {
    if(cJSON_AddStringToObject(item, "total_volume_usd", factory_v3_dto->total_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->total_volume_eth
    if(factory_v3_dto->total_volume_eth) {
    if(cJSON_AddStringToObject(item, "total_volume_eth", factory_v3_dto->total_volume_eth) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->total_fees_usd
    if(factory_v3_dto->total_fees_usd) {
    if(cJSON_AddStringToObject(item, "total_fees_usd", factory_v3_dto->total_fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->total_fees_eth
    if(factory_v3_dto->total_fees_eth) {
    if(cJSON_AddStringToObject(item, "total_fees_eth", factory_v3_dto->total_fees_eth) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->untracked_volume_usd
    if(factory_v3_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", factory_v3_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->total_value_locked_usd
    if(factory_v3_dto->total_value_locked_usd) {
    if(cJSON_AddStringToObject(item, "total_value_locked_usd", factory_v3_dto->total_value_locked_usd) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->total_value_locked_eth
    if(factory_v3_dto->total_value_locked_eth) {
    if(cJSON_AddStringToObject(item, "total_value_locked_eth", factory_v3_dto->total_value_locked_eth) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->total_value_locked_usd_untracked
    if(factory_v3_dto->total_value_locked_usd_untracked) {
    if(cJSON_AddStringToObject(item, "total_value_locked_usd_untracked", factory_v3_dto->total_value_locked_usd_untracked) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->total_value_locked_eth_untracked
    if(factory_v3_dto->total_value_locked_eth_untracked) {
    if(cJSON_AddStringToObject(item, "total_value_locked_eth_untracked", factory_v3_dto->total_value_locked_eth_untracked) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->owner
    if(factory_v3_dto->owner) {
    if(cJSON_AddStringToObject(item, "owner", factory_v3_dto->owner) == NULL) {
    goto fail; //String
    }
    }


    // factory_v3_dto->vid
    if(factory_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", factory_v3_dto->vid) == NULL) {
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

factory_v3_dto_t *factory_v3_dto_parseFromJSON(cJSON *factory_v3_dtoJSON){

    factory_v3_dto_t *factory_v3_dto_local_var = NULL;

    // factory_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // factory_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // factory_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // factory_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->pool_count
    cJSON *pool_count = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "pool_count");
    if (pool_count) { 
    if(!cJSON_IsString(pool_count))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->total_volume_usd
    cJSON *total_volume_usd = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "total_volume_usd");
    if (total_volume_usd) { 
    if(!cJSON_IsString(total_volume_usd))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->total_volume_eth
    cJSON *total_volume_eth = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "total_volume_eth");
    if (total_volume_eth) { 
    if(!cJSON_IsString(total_volume_eth))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->total_fees_usd
    cJSON *total_fees_usd = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "total_fees_usd");
    if (total_fees_usd) { 
    if(!cJSON_IsString(total_fees_usd))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->total_fees_eth
    cJSON *total_fees_eth = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "total_fees_eth");
    if (total_fees_eth) { 
    if(!cJSON_IsString(total_fees_eth))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->total_value_locked_usd
    cJSON *total_value_locked_usd = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "total_value_locked_usd");
    if (total_value_locked_usd) { 
    if(!cJSON_IsString(total_value_locked_usd))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->total_value_locked_eth
    cJSON *total_value_locked_eth = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "total_value_locked_eth");
    if (total_value_locked_eth) { 
    if(!cJSON_IsString(total_value_locked_eth))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->total_value_locked_usd_untracked
    cJSON *total_value_locked_usd_untracked = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "total_value_locked_usd_untracked");
    if (total_value_locked_usd_untracked) { 
    if(!cJSON_IsString(total_value_locked_usd_untracked))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->total_value_locked_eth_untracked
    cJSON *total_value_locked_eth_untracked = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "total_value_locked_eth_untracked");
    if (total_value_locked_eth_untracked) { 
    if(!cJSON_IsString(total_value_locked_eth_untracked))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "owner");
    if (owner) { 
    if(!cJSON_IsString(owner))
    {
    goto end; //String
    }
    }

    // factory_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(factory_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    factory_v3_dto_local_var = factory_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        pool_count ? strdup(pool_count->valuestring) : NULL,
        tx_count ? strdup(tx_count->valuestring) : NULL,
        total_volume_usd ? strdup(total_volume_usd->valuestring) : NULL,
        total_volume_eth ? strdup(total_volume_eth->valuestring) : NULL,
        total_fees_usd ? strdup(total_fees_usd->valuestring) : NULL,
        total_fees_eth ? strdup(total_fees_eth->valuestring) : NULL,
        untracked_volume_usd ? strdup(untracked_volume_usd->valuestring) : NULL,
        total_value_locked_usd ? strdup(total_value_locked_usd->valuestring) : NULL,
        total_value_locked_eth ? strdup(total_value_locked_eth->valuestring) : NULL,
        total_value_locked_usd_untracked ? strdup(total_value_locked_usd_untracked->valuestring) : NULL,
        total_value_locked_eth_untracked ? strdup(total_value_locked_eth_untracked->valuestring) : NULL,
        owner ? strdup(owner->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return factory_v3_dto_local_var;
end:
    return NULL;

}
