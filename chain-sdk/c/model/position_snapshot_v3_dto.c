#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "position_snapshot_v3_dto.h"



position_snapshot_v3_dto_t *position_snapshot_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *owner,
    char *pool,
    char *position,
    char *timestamp,
    char *liquidity,
    char *deposited_token_0,
    char *deposited_token_1,
    char *withdrawn_token_0,
    char *withdrawn_token_1,
    char *collected_fees_token_0,
    char *collected_fees_token_1,
    char *transaction,
    char *fee_growth_inside_0_last_x128,
    char *fee_growth_inside_1_last_x128,
    long vid
    ) {
    position_snapshot_v3_dto_t *position_snapshot_v3_dto_local_var = malloc(sizeof(position_snapshot_v3_dto_t));
    if (!position_snapshot_v3_dto_local_var) {
        return NULL;
    }
    position_snapshot_v3_dto_local_var->entry_time = entry_time;
    position_snapshot_v3_dto_local_var->recv_time = recv_time;
    position_snapshot_v3_dto_local_var->block_number = block_number;
    position_snapshot_v3_dto_local_var->id = id;
    position_snapshot_v3_dto_local_var->owner = owner;
    position_snapshot_v3_dto_local_var->pool = pool;
    position_snapshot_v3_dto_local_var->position = position;
    position_snapshot_v3_dto_local_var->timestamp = timestamp;
    position_snapshot_v3_dto_local_var->liquidity = liquidity;
    position_snapshot_v3_dto_local_var->deposited_token_0 = deposited_token_0;
    position_snapshot_v3_dto_local_var->deposited_token_1 = deposited_token_1;
    position_snapshot_v3_dto_local_var->withdrawn_token_0 = withdrawn_token_0;
    position_snapshot_v3_dto_local_var->withdrawn_token_1 = withdrawn_token_1;
    position_snapshot_v3_dto_local_var->collected_fees_token_0 = collected_fees_token_0;
    position_snapshot_v3_dto_local_var->collected_fees_token_1 = collected_fees_token_1;
    position_snapshot_v3_dto_local_var->transaction = transaction;
    position_snapshot_v3_dto_local_var->fee_growth_inside_0_last_x128 = fee_growth_inside_0_last_x128;
    position_snapshot_v3_dto_local_var->fee_growth_inside_1_last_x128 = fee_growth_inside_1_last_x128;
    position_snapshot_v3_dto_local_var->vid = vid;

    return position_snapshot_v3_dto_local_var;
}


void position_snapshot_v3_dto_free(position_snapshot_v3_dto_t *position_snapshot_v3_dto) {
    if(NULL == position_snapshot_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (position_snapshot_v3_dto->entry_time) {
        free(position_snapshot_v3_dto->entry_time);
        position_snapshot_v3_dto->entry_time = NULL;
    }
    if (position_snapshot_v3_dto->recv_time) {
        free(position_snapshot_v3_dto->recv_time);
        position_snapshot_v3_dto->recv_time = NULL;
    }
    if (position_snapshot_v3_dto->id) {
        free(position_snapshot_v3_dto->id);
        position_snapshot_v3_dto->id = NULL;
    }
    if (position_snapshot_v3_dto->owner) {
        free(position_snapshot_v3_dto->owner);
        position_snapshot_v3_dto->owner = NULL;
    }
    if (position_snapshot_v3_dto->pool) {
        free(position_snapshot_v3_dto->pool);
        position_snapshot_v3_dto->pool = NULL;
    }
    if (position_snapshot_v3_dto->position) {
        free(position_snapshot_v3_dto->position);
        position_snapshot_v3_dto->position = NULL;
    }
    if (position_snapshot_v3_dto->timestamp) {
        free(position_snapshot_v3_dto->timestamp);
        position_snapshot_v3_dto->timestamp = NULL;
    }
    if (position_snapshot_v3_dto->liquidity) {
        free(position_snapshot_v3_dto->liquidity);
        position_snapshot_v3_dto->liquidity = NULL;
    }
    if (position_snapshot_v3_dto->deposited_token_0) {
        free(position_snapshot_v3_dto->deposited_token_0);
        position_snapshot_v3_dto->deposited_token_0 = NULL;
    }
    if (position_snapshot_v3_dto->deposited_token_1) {
        free(position_snapshot_v3_dto->deposited_token_1);
        position_snapshot_v3_dto->deposited_token_1 = NULL;
    }
    if (position_snapshot_v3_dto->withdrawn_token_0) {
        free(position_snapshot_v3_dto->withdrawn_token_0);
        position_snapshot_v3_dto->withdrawn_token_0 = NULL;
    }
    if (position_snapshot_v3_dto->withdrawn_token_1) {
        free(position_snapshot_v3_dto->withdrawn_token_1);
        position_snapshot_v3_dto->withdrawn_token_1 = NULL;
    }
    if (position_snapshot_v3_dto->collected_fees_token_0) {
        free(position_snapshot_v3_dto->collected_fees_token_0);
        position_snapshot_v3_dto->collected_fees_token_0 = NULL;
    }
    if (position_snapshot_v3_dto->collected_fees_token_1) {
        free(position_snapshot_v3_dto->collected_fees_token_1);
        position_snapshot_v3_dto->collected_fees_token_1 = NULL;
    }
    if (position_snapshot_v3_dto->transaction) {
        free(position_snapshot_v3_dto->transaction);
        position_snapshot_v3_dto->transaction = NULL;
    }
    if (position_snapshot_v3_dto->fee_growth_inside_0_last_x128) {
        free(position_snapshot_v3_dto->fee_growth_inside_0_last_x128);
        position_snapshot_v3_dto->fee_growth_inside_0_last_x128 = NULL;
    }
    if (position_snapshot_v3_dto->fee_growth_inside_1_last_x128) {
        free(position_snapshot_v3_dto->fee_growth_inside_1_last_x128);
        position_snapshot_v3_dto->fee_growth_inside_1_last_x128 = NULL;
    }
    free(position_snapshot_v3_dto);
}

cJSON *position_snapshot_v3_dto_convertToJSON(position_snapshot_v3_dto_t *position_snapshot_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // position_snapshot_v3_dto->entry_time
    if(position_snapshot_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", position_snapshot_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // position_snapshot_v3_dto->recv_time
    if(position_snapshot_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", position_snapshot_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // position_snapshot_v3_dto->block_number
    if(position_snapshot_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", position_snapshot_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // position_snapshot_v3_dto->id
    if(position_snapshot_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", position_snapshot_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->owner
    if(position_snapshot_v3_dto->owner) {
    if(cJSON_AddStringToObject(item, "owner", position_snapshot_v3_dto->owner) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->pool
    if(position_snapshot_v3_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", position_snapshot_v3_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->position
    if(position_snapshot_v3_dto->position) {
    if(cJSON_AddStringToObject(item, "position", position_snapshot_v3_dto->position) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->timestamp
    if(position_snapshot_v3_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", position_snapshot_v3_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->liquidity
    if(position_snapshot_v3_dto->liquidity) {
    if(cJSON_AddStringToObject(item, "liquidity", position_snapshot_v3_dto->liquidity) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->deposited_token_0
    if(position_snapshot_v3_dto->deposited_token_0) {
    if(cJSON_AddStringToObject(item, "deposited_token_0", position_snapshot_v3_dto->deposited_token_0) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->deposited_token_1
    if(position_snapshot_v3_dto->deposited_token_1) {
    if(cJSON_AddStringToObject(item, "deposited_token_1", position_snapshot_v3_dto->deposited_token_1) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->withdrawn_token_0
    if(position_snapshot_v3_dto->withdrawn_token_0) {
    if(cJSON_AddStringToObject(item, "withdrawn_token_0", position_snapshot_v3_dto->withdrawn_token_0) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->withdrawn_token_1
    if(position_snapshot_v3_dto->withdrawn_token_1) {
    if(cJSON_AddStringToObject(item, "withdrawn_token_1", position_snapshot_v3_dto->withdrawn_token_1) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->collected_fees_token_0
    if(position_snapshot_v3_dto->collected_fees_token_0) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_0", position_snapshot_v3_dto->collected_fees_token_0) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->collected_fees_token_1
    if(position_snapshot_v3_dto->collected_fees_token_1) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_1", position_snapshot_v3_dto->collected_fees_token_1) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->transaction
    if(position_snapshot_v3_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", position_snapshot_v3_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->fee_growth_inside_0_last_x128
    if(position_snapshot_v3_dto->fee_growth_inside_0_last_x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_inside_0_last_x128", position_snapshot_v3_dto->fee_growth_inside_0_last_x128) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->fee_growth_inside_1_last_x128
    if(position_snapshot_v3_dto->fee_growth_inside_1_last_x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_inside_1_last_x128", position_snapshot_v3_dto->fee_growth_inside_1_last_x128) == NULL) {
    goto fail; //String
    }
    }


    // position_snapshot_v3_dto->vid
    if(position_snapshot_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", position_snapshot_v3_dto->vid) == NULL) {
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

position_snapshot_v3_dto_t *position_snapshot_v3_dto_parseFromJSON(cJSON *position_snapshot_v3_dtoJSON){

    position_snapshot_v3_dto_t *position_snapshot_v3_dto_local_var = NULL;

    // position_snapshot_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // position_snapshot_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // position_snapshot_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // position_snapshot_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "owner");
    if (owner) { 
    if(!cJSON_IsString(owner))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->position
    cJSON *position = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "position");
    if (position) { 
    if(!cJSON_IsString(position))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "liquidity");
    if (liquidity) { 
    if(!cJSON_IsString(liquidity))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->deposited_token_0
    cJSON *deposited_token_0 = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "deposited_token_0");
    if (deposited_token_0) { 
    if(!cJSON_IsString(deposited_token_0))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->deposited_token_1
    cJSON *deposited_token_1 = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "deposited_token_1");
    if (deposited_token_1) { 
    if(!cJSON_IsString(deposited_token_1))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->withdrawn_token_0
    cJSON *withdrawn_token_0 = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "withdrawn_token_0");
    if (withdrawn_token_0) { 
    if(!cJSON_IsString(withdrawn_token_0))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->withdrawn_token_1
    cJSON *withdrawn_token_1 = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "withdrawn_token_1");
    if (withdrawn_token_1) { 
    if(!cJSON_IsString(withdrawn_token_1))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->collected_fees_token_0
    cJSON *collected_fees_token_0 = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "collected_fees_token_0");
    if (collected_fees_token_0) { 
    if(!cJSON_IsString(collected_fees_token_0))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->collected_fees_token_1
    cJSON *collected_fees_token_1 = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "collected_fees_token_1");
    if (collected_fees_token_1) { 
    if(!cJSON_IsString(collected_fees_token_1))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->fee_growth_inside_0_last_x128
    cJSON *fee_growth_inside_0_last_x128 = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "fee_growth_inside_0_last_x128");
    if (fee_growth_inside_0_last_x128) { 
    if(!cJSON_IsString(fee_growth_inside_0_last_x128))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->fee_growth_inside_1_last_x128
    cJSON *fee_growth_inside_1_last_x128 = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "fee_growth_inside_1_last_x128");
    if (fee_growth_inside_1_last_x128) { 
    if(!cJSON_IsString(fee_growth_inside_1_last_x128))
    {
    goto end; //String
    }
    }

    // position_snapshot_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(position_snapshot_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    position_snapshot_v3_dto_local_var = position_snapshot_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        owner ? strdup(owner->valuestring) : NULL,
        pool ? strdup(pool->valuestring) : NULL,
        position ? strdup(position->valuestring) : NULL,
        timestamp ? strdup(timestamp->valuestring) : NULL,
        liquidity ? strdup(liquidity->valuestring) : NULL,
        deposited_token_0 ? strdup(deposited_token_0->valuestring) : NULL,
        deposited_token_1 ? strdup(deposited_token_1->valuestring) : NULL,
        withdrawn_token_0 ? strdup(withdrawn_token_0->valuestring) : NULL,
        withdrawn_token_1 ? strdup(withdrawn_token_1->valuestring) : NULL,
        collected_fees_token_0 ? strdup(collected_fees_token_0->valuestring) : NULL,
        collected_fees_token_1 ? strdup(collected_fees_token_1->valuestring) : NULL,
        transaction ? strdup(transaction->valuestring) : NULL,
        fee_growth_inside_0_last_x128 ? strdup(fee_growth_inside_0_last_x128->valuestring) : NULL,
        fee_growth_inside_1_last_x128 ? strdup(fee_growth_inside_1_last_x128->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return position_snapshot_v3_dto_local_var;
end:
    return NULL;

}
