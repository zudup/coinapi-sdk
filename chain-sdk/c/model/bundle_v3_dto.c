#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "bundle_v3_dto.h"



bundle_v3_dto_t *bundle_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *eth_price_usd,
    long vid
    ) {
    bundle_v3_dto_t *bundle_v3_dto_local_var = malloc(sizeof(bundle_v3_dto_t));
    if (!bundle_v3_dto_local_var) {
        return NULL;
    }
    bundle_v3_dto_local_var->entry_time = entry_time;
    bundle_v3_dto_local_var->recv_time = recv_time;
    bundle_v3_dto_local_var->block_number = block_number;
    bundle_v3_dto_local_var->id = id;
    bundle_v3_dto_local_var->eth_price_usd = eth_price_usd;
    bundle_v3_dto_local_var->vid = vid;

    return bundle_v3_dto_local_var;
}


void bundle_v3_dto_free(bundle_v3_dto_t *bundle_v3_dto) {
    if(NULL == bundle_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (bundle_v3_dto->entry_time) {
        free(bundle_v3_dto->entry_time);
        bundle_v3_dto->entry_time = NULL;
    }
    if (bundle_v3_dto->recv_time) {
        free(bundle_v3_dto->recv_time);
        bundle_v3_dto->recv_time = NULL;
    }
    if (bundle_v3_dto->id) {
        free(bundle_v3_dto->id);
        bundle_v3_dto->id = NULL;
    }
    if (bundle_v3_dto->eth_price_usd) {
        free(bundle_v3_dto->eth_price_usd);
        bundle_v3_dto->eth_price_usd = NULL;
    }
    free(bundle_v3_dto);
}

cJSON *bundle_v3_dto_convertToJSON(bundle_v3_dto_t *bundle_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // bundle_v3_dto->entry_time
    if(bundle_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", bundle_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // bundle_v3_dto->recv_time
    if(bundle_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", bundle_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // bundle_v3_dto->block_number
    if(bundle_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", bundle_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // bundle_v3_dto->id
    if(bundle_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", bundle_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // bundle_v3_dto->eth_price_usd
    if(bundle_v3_dto->eth_price_usd) {
    if(cJSON_AddStringToObject(item, "eth_price_usd", bundle_v3_dto->eth_price_usd) == NULL) {
    goto fail; //String
    }
    }


    // bundle_v3_dto->vid
    if(bundle_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", bundle_v3_dto->vid) == NULL) {
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

bundle_v3_dto_t *bundle_v3_dto_parseFromJSON(cJSON *bundle_v3_dtoJSON){

    bundle_v3_dto_t *bundle_v3_dto_local_var = NULL;

    // bundle_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(bundle_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // bundle_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(bundle_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // bundle_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(bundle_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // bundle_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(bundle_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // bundle_v3_dto->eth_price_usd
    cJSON *eth_price_usd = cJSON_GetObjectItemCaseSensitive(bundle_v3_dtoJSON, "eth_price_usd");
    if (eth_price_usd) { 
    if(!cJSON_IsString(eth_price_usd))
    {
    goto end; //String
    }
    }

    // bundle_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(bundle_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    bundle_v3_dto_local_var = bundle_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        eth_price_usd ? strdup(eth_price_usd->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return bundle_v3_dto_local_var;
end:
    return NULL;

}
