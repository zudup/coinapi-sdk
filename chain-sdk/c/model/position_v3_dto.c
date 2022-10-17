#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "position_v3_dto.h"



position_v3_dto_t *position_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *owner,
    char *pool,
    char *token_0,
    char *token_1,
    char *tick_lower,
    char *tick_upper,
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
    position_v3_dto_t *position_v3_dto_local_var = malloc(sizeof(position_v3_dto_t));
    if (!position_v3_dto_local_var) {
        return NULL;
    }
    position_v3_dto_local_var->entry_time = entry_time;
    position_v3_dto_local_var->recv_time = recv_time;
    position_v3_dto_local_var->block_number = block_number;
    position_v3_dto_local_var->id = id;
    position_v3_dto_local_var->owner = owner;
    position_v3_dto_local_var->pool = pool;
    position_v3_dto_local_var->token_0 = token_0;
    position_v3_dto_local_var->token_1 = token_1;
    position_v3_dto_local_var->tick_lower = tick_lower;
    position_v3_dto_local_var->tick_upper = tick_upper;
    position_v3_dto_local_var->liquidity = liquidity;
    position_v3_dto_local_var->deposited_token_0 = deposited_token_0;
    position_v3_dto_local_var->deposited_token_1 = deposited_token_1;
    position_v3_dto_local_var->withdrawn_token_0 = withdrawn_token_0;
    position_v3_dto_local_var->withdrawn_token_1 = withdrawn_token_1;
    position_v3_dto_local_var->collected_fees_token_0 = collected_fees_token_0;
    position_v3_dto_local_var->collected_fees_token_1 = collected_fees_token_1;
    position_v3_dto_local_var->transaction = transaction;
    position_v3_dto_local_var->fee_growth_inside_0_last_x128 = fee_growth_inside_0_last_x128;
    position_v3_dto_local_var->fee_growth_inside_1_last_x128 = fee_growth_inside_1_last_x128;
    position_v3_dto_local_var->vid = vid;

    return position_v3_dto_local_var;
}


void position_v3_dto_free(position_v3_dto_t *position_v3_dto) {
    if(NULL == position_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (position_v3_dto->entry_time) {
        free(position_v3_dto->entry_time);
        position_v3_dto->entry_time = NULL;
    }
    if (position_v3_dto->recv_time) {
        free(position_v3_dto->recv_time);
        position_v3_dto->recv_time = NULL;
    }
    if (position_v3_dto->id) {
        free(position_v3_dto->id);
        position_v3_dto->id = NULL;
    }
    if (position_v3_dto->owner) {
        free(position_v3_dto->owner);
        position_v3_dto->owner = NULL;
    }
    if (position_v3_dto->pool) {
        free(position_v3_dto->pool);
        position_v3_dto->pool = NULL;
    }
    if (position_v3_dto->token_0) {
        free(position_v3_dto->token_0);
        position_v3_dto->token_0 = NULL;
    }
    if (position_v3_dto->token_1) {
        free(position_v3_dto->token_1);
        position_v3_dto->token_1 = NULL;
    }
    if (position_v3_dto->tick_lower) {
        free(position_v3_dto->tick_lower);
        position_v3_dto->tick_lower = NULL;
    }
    if (position_v3_dto->tick_upper) {
        free(position_v3_dto->tick_upper);
        position_v3_dto->tick_upper = NULL;
    }
    if (position_v3_dto->liquidity) {
        free(position_v3_dto->liquidity);
        position_v3_dto->liquidity = NULL;
    }
    if (position_v3_dto->deposited_token_0) {
        free(position_v3_dto->deposited_token_0);
        position_v3_dto->deposited_token_0 = NULL;
    }
    if (position_v3_dto->deposited_token_1) {
        free(position_v3_dto->deposited_token_1);
        position_v3_dto->deposited_token_1 = NULL;
    }
    if (position_v3_dto->withdrawn_token_0) {
        free(position_v3_dto->withdrawn_token_0);
        position_v3_dto->withdrawn_token_0 = NULL;
    }
    if (position_v3_dto->withdrawn_token_1) {
        free(position_v3_dto->withdrawn_token_1);
        position_v3_dto->withdrawn_token_1 = NULL;
    }
    if (position_v3_dto->collected_fees_token_0) {
        free(position_v3_dto->collected_fees_token_0);
        position_v3_dto->collected_fees_token_0 = NULL;
    }
    if (position_v3_dto->collected_fees_token_1) {
        free(position_v3_dto->collected_fees_token_1);
        position_v3_dto->collected_fees_token_1 = NULL;
    }
    if (position_v3_dto->transaction) {
        free(position_v3_dto->transaction);
        position_v3_dto->transaction = NULL;
    }
    if (position_v3_dto->fee_growth_inside_0_last_x128) {
        free(position_v3_dto->fee_growth_inside_0_last_x128);
        position_v3_dto->fee_growth_inside_0_last_x128 = NULL;
    }
    if (position_v3_dto->fee_growth_inside_1_last_x128) {
        free(position_v3_dto->fee_growth_inside_1_last_x128);
        position_v3_dto->fee_growth_inside_1_last_x128 = NULL;
    }
    free(position_v3_dto);
}

cJSON *position_v3_dto_convertToJSON(position_v3_dto_t *position_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // position_v3_dto->entry_time
    if(position_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", position_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // position_v3_dto->recv_time
    if(position_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", position_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // position_v3_dto->block_number
    if(position_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", position_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // position_v3_dto->id
    if(position_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", position_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->owner
    if(position_v3_dto->owner) {
    if(cJSON_AddStringToObject(item, "owner", position_v3_dto->owner) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->pool
    if(position_v3_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", position_v3_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->token_0
    if(position_v3_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", position_v3_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->token_1
    if(position_v3_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", position_v3_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->tick_lower
    if(position_v3_dto->tick_lower) {
    if(cJSON_AddStringToObject(item, "tick_lower", position_v3_dto->tick_lower) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->tick_upper
    if(position_v3_dto->tick_upper) {
    if(cJSON_AddStringToObject(item, "tick_upper", position_v3_dto->tick_upper) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->liquidity
    if(position_v3_dto->liquidity) {
    if(cJSON_AddStringToObject(item, "liquidity", position_v3_dto->liquidity) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->deposited_token_0
    if(position_v3_dto->deposited_token_0) {
    if(cJSON_AddStringToObject(item, "deposited_token_0", position_v3_dto->deposited_token_0) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->deposited_token_1
    if(position_v3_dto->deposited_token_1) {
    if(cJSON_AddStringToObject(item, "deposited_token_1", position_v3_dto->deposited_token_1) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->withdrawn_token_0
    if(position_v3_dto->withdrawn_token_0) {
    if(cJSON_AddStringToObject(item, "withdrawn_token_0", position_v3_dto->withdrawn_token_0) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->withdrawn_token_1
    if(position_v3_dto->withdrawn_token_1) {
    if(cJSON_AddStringToObject(item, "withdrawn_token_1", position_v3_dto->withdrawn_token_1) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->collected_fees_token_0
    if(position_v3_dto->collected_fees_token_0) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_0", position_v3_dto->collected_fees_token_0) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->collected_fees_token_1
    if(position_v3_dto->collected_fees_token_1) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_1", position_v3_dto->collected_fees_token_1) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->transaction
    if(position_v3_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", position_v3_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->fee_growth_inside_0_last_x128
    if(position_v3_dto->fee_growth_inside_0_last_x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_inside_0_last_x128", position_v3_dto->fee_growth_inside_0_last_x128) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->fee_growth_inside_1_last_x128
    if(position_v3_dto->fee_growth_inside_1_last_x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_inside_1_last_x128", position_v3_dto->fee_growth_inside_1_last_x128) == NULL) {
    goto fail; //String
    }
    }


    // position_v3_dto->vid
    if(position_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", position_v3_dto->vid) == NULL) {
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

position_v3_dto_t *position_v3_dto_parseFromJSON(cJSON *position_v3_dtoJSON){

    position_v3_dto_t *position_v3_dto_local_var = NULL;

    // position_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // position_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // position_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // position_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // position_v3_dto->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "owner");
    if (owner) { 
    if(!cJSON_IsString(owner))
    {
    goto end; //String
    }
    }

    // position_v3_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool))
    {
    goto end; //String
    }
    }

    // position_v3_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0))
    {
    goto end; //String
    }
    }

    // position_v3_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1))
    {
    goto end; //String
    }
    }

    // position_v3_dto->tick_lower
    cJSON *tick_lower = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "tick_lower");
    if (tick_lower) { 
    if(!cJSON_IsString(tick_lower))
    {
    goto end; //String
    }
    }

    // position_v3_dto->tick_upper
    cJSON *tick_upper = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "tick_upper");
    if (tick_upper) { 
    if(!cJSON_IsString(tick_upper))
    {
    goto end; //String
    }
    }

    // position_v3_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "liquidity");
    if (liquidity) { 
    if(!cJSON_IsString(liquidity))
    {
    goto end; //String
    }
    }

    // position_v3_dto->deposited_token_0
    cJSON *deposited_token_0 = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "deposited_token_0");
    if (deposited_token_0) { 
    if(!cJSON_IsString(deposited_token_0))
    {
    goto end; //String
    }
    }

    // position_v3_dto->deposited_token_1
    cJSON *deposited_token_1 = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "deposited_token_1");
    if (deposited_token_1) { 
    if(!cJSON_IsString(deposited_token_1))
    {
    goto end; //String
    }
    }

    // position_v3_dto->withdrawn_token_0
    cJSON *withdrawn_token_0 = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "withdrawn_token_0");
    if (withdrawn_token_0) { 
    if(!cJSON_IsString(withdrawn_token_0))
    {
    goto end; //String
    }
    }

    // position_v3_dto->withdrawn_token_1
    cJSON *withdrawn_token_1 = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "withdrawn_token_1");
    if (withdrawn_token_1) { 
    if(!cJSON_IsString(withdrawn_token_1))
    {
    goto end; //String
    }
    }

    // position_v3_dto->collected_fees_token_0
    cJSON *collected_fees_token_0 = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "collected_fees_token_0");
    if (collected_fees_token_0) { 
    if(!cJSON_IsString(collected_fees_token_0))
    {
    goto end; //String
    }
    }

    // position_v3_dto->collected_fees_token_1
    cJSON *collected_fees_token_1 = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "collected_fees_token_1");
    if (collected_fees_token_1) { 
    if(!cJSON_IsString(collected_fees_token_1))
    {
    goto end; //String
    }
    }

    // position_v3_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction))
    {
    goto end; //String
    }
    }

    // position_v3_dto->fee_growth_inside_0_last_x128
    cJSON *fee_growth_inside_0_last_x128 = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "fee_growth_inside_0_last_x128");
    if (fee_growth_inside_0_last_x128) { 
    if(!cJSON_IsString(fee_growth_inside_0_last_x128))
    {
    goto end; //String
    }
    }

    // position_v3_dto->fee_growth_inside_1_last_x128
    cJSON *fee_growth_inside_1_last_x128 = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "fee_growth_inside_1_last_x128");
    if (fee_growth_inside_1_last_x128) { 
    if(!cJSON_IsString(fee_growth_inside_1_last_x128))
    {
    goto end; //String
    }
    }

    // position_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(position_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    position_v3_dto_local_var = position_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        owner ? strdup(owner->valuestring) : NULL,
        pool ? strdup(pool->valuestring) : NULL,
        token_0 ? strdup(token_0->valuestring) : NULL,
        token_1 ? strdup(token_1->valuestring) : NULL,
        tick_lower ? strdup(tick_lower->valuestring) : NULL,
        tick_upper ? strdup(tick_upper->valuestring) : NULL,
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

    return position_v3_dto_local_var;
end:
    return NULL;

}
