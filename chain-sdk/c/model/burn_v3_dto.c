#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "burn_v3_dto.h"



burn_v3_dto_t *burn_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *transaction,
    char *pool,
    char *token_0,
    char *token_1,
    char *timestamp,
    char *owner,
    char *origin,
    char *amount,
    char *amount_0,
    char *amount_1,
    char *amount_usd,
    char *tick_lower,
    char *tick_upper,
    char *log_index,
    long vid
    ) {
    burn_v3_dto_t *burn_v3_dto_local_var = malloc(sizeof(burn_v3_dto_t));
    if (!burn_v3_dto_local_var) {
        return NULL;
    }
    burn_v3_dto_local_var->entry_time = entry_time;
    burn_v3_dto_local_var->recv_time = recv_time;
    burn_v3_dto_local_var->block_number = block_number;
    burn_v3_dto_local_var->id = id;
    burn_v3_dto_local_var->transaction = transaction;
    burn_v3_dto_local_var->pool = pool;
    burn_v3_dto_local_var->token_0 = token_0;
    burn_v3_dto_local_var->token_1 = token_1;
    burn_v3_dto_local_var->timestamp = timestamp;
    burn_v3_dto_local_var->owner = owner;
    burn_v3_dto_local_var->origin = origin;
    burn_v3_dto_local_var->amount = amount;
    burn_v3_dto_local_var->amount_0 = amount_0;
    burn_v3_dto_local_var->amount_1 = amount_1;
    burn_v3_dto_local_var->amount_usd = amount_usd;
    burn_v3_dto_local_var->tick_lower = tick_lower;
    burn_v3_dto_local_var->tick_upper = tick_upper;
    burn_v3_dto_local_var->log_index = log_index;
    burn_v3_dto_local_var->vid = vid;

    return burn_v3_dto_local_var;
}


void burn_v3_dto_free(burn_v3_dto_t *burn_v3_dto) {
    if(NULL == burn_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (burn_v3_dto->entry_time) {
        free(burn_v3_dto->entry_time);
        burn_v3_dto->entry_time = NULL;
    }
    if (burn_v3_dto->recv_time) {
        free(burn_v3_dto->recv_time);
        burn_v3_dto->recv_time = NULL;
    }
    if (burn_v3_dto->id) {
        free(burn_v3_dto->id);
        burn_v3_dto->id = NULL;
    }
    if (burn_v3_dto->transaction) {
        free(burn_v3_dto->transaction);
        burn_v3_dto->transaction = NULL;
    }
    if (burn_v3_dto->pool) {
        free(burn_v3_dto->pool);
        burn_v3_dto->pool = NULL;
    }
    if (burn_v3_dto->token_0) {
        free(burn_v3_dto->token_0);
        burn_v3_dto->token_0 = NULL;
    }
    if (burn_v3_dto->token_1) {
        free(burn_v3_dto->token_1);
        burn_v3_dto->token_1 = NULL;
    }
    if (burn_v3_dto->timestamp) {
        free(burn_v3_dto->timestamp);
        burn_v3_dto->timestamp = NULL;
    }
    if (burn_v3_dto->owner) {
        free(burn_v3_dto->owner);
        burn_v3_dto->owner = NULL;
    }
    if (burn_v3_dto->origin) {
        free(burn_v3_dto->origin);
        burn_v3_dto->origin = NULL;
    }
    if (burn_v3_dto->amount) {
        free(burn_v3_dto->amount);
        burn_v3_dto->amount = NULL;
    }
    if (burn_v3_dto->amount_0) {
        free(burn_v3_dto->amount_0);
        burn_v3_dto->amount_0 = NULL;
    }
    if (burn_v3_dto->amount_1) {
        free(burn_v3_dto->amount_1);
        burn_v3_dto->amount_1 = NULL;
    }
    if (burn_v3_dto->amount_usd) {
        free(burn_v3_dto->amount_usd);
        burn_v3_dto->amount_usd = NULL;
    }
    if (burn_v3_dto->tick_lower) {
        free(burn_v3_dto->tick_lower);
        burn_v3_dto->tick_lower = NULL;
    }
    if (burn_v3_dto->tick_upper) {
        free(burn_v3_dto->tick_upper);
        burn_v3_dto->tick_upper = NULL;
    }
    if (burn_v3_dto->log_index) {
        free(burn_v3_dto->log_index);
        burn_v3_dto->log_index = NULL;
    }
    free(burn_v3_dto);
}

cJSON *burn_v3_dto_convertToJSON(burn_v3_dto_t *burn_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // burn_v3_dto->entry_time
    if(burn_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", burn_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // burn_v3_dto->recv_time
    if(burn_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", burn_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // burn_v3_dto->block_number
    if(burn_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", burn_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // burn_v3_dto->id
    if(burn_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", burn_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->transaction
    if(burn_v3_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", burn_v3_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->pool
    if(burn_v3_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", burn_v3_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->token_0
    if(burn_v3_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", burn_v3_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->token_1
    if(burn_v3_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", burn_v3_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->timestamp
    if(burn_v3_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", burn_v3_dto->timestamp) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->owner
    if(burn_v3_dto->owner) {
    if(cJSON_AddStringToObject(item, "owner", burn_v3_dto->owner) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->origin
    if(burn_v3_dto->origin) {
    if(cJSON_AddStringToObject(item, "origin", burn_v3_dto->origin) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->amount
    if(burn_v3_dto->amount) {
    if(cJSON_AddStringToObject(item, "amount", burn_v3_dto->amount) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->amount_0
    if(burn_v3_dto->amount_0) {
    if(cJSON_AddStringToObject(item, "amount_0", burn_v3_dto->amount_0) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->amount_1
    if(burn_v3_dto->amount_1) {
    if(cJSON_AddStringToObject(item, "amount_1", burn_v3_dto->amount_1) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->amount_usd
    if(burn_v3_dto->amount_usd) {
    if(cJSON_AddStringToObject(item, "amount_usd", burn_v3_dto->amount_usd) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->tick_lower
    if(burn_v3_dto->tick_lower) {
    if(cJSON_AddStringToObject(item, "tick_lower", burn_v3_dto->tick_lower) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->tick_upper
    if(burn_v3_dto->tick_upper) {
    if(cJSON_AddStringToObject(item, "tick_upper", burn_v3_dto->tick_upper) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->log_index
    if(burn_v3_dto->log_index) {
    if(cJSON_AddStringToObject(item, "log_index", burn_v3_dto->log_index) == NULL) {
    goto fail; //String
    }
    }


    // burn_v3_dto->vid
    if(burn_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", burn_v3_dto->vid) == NULL) {
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

burn_v3_dto_t *burn_v3_dto_parseFromJSON(cJSON *burn_v3_dtoJSON){

    burn_v3_dto_t *burn_v3_dto_local_var = NULL;

    // burn_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // burn_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // burn_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // burn_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->owner
    cJSON *owner = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "owner");
    if (owner) { 
    if(!cJSON_IsString(owner))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->origin
    cJSON *origin = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "origin");
    if (origin) { 
    if(!cJSON_IsString(origin))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->amount
    cJSON *amount = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "amount");
    if (amount) { 
    if(!cJSON_IsString(amount))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->amount_0
    cJSON *amount_0 = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "amount_0");
    if (amount_0) { 
    if(!cJSON_IsString(amount_0))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->amount_1
    cJSON *amount_1 = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "amount_1");
    if (amount_1) { 
    if(!cJSON_IsString(amount_1))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->amount_usd
    cJSON *amount_usd = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "amount_usd");
    if (amount_usd) { 
    if(!cJSON_IsString(amount_usd))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->tick_lower
    cJSON *tick_lower = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "tick_lower");
    if (tick_lower) { 
    if(!cJSON_IsString(tick_lower))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->tick_upper
    cJSON *tick_upper = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "tick_upper");
    if (tick_upper) { 
    if(!cJSON_IsString(tick_upper))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->log_index
    cJSON *log_index = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "log_index");
    if (log_index) { 
    if(!cJSON_IsString(log_index))
    {
    goto end; //String
    }
    }

    // burn_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(burn_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    burn_v3_dto_local_var = burn_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        transaction ? strdup(transaction->valuestring) : NULL,
        pool ? strdup(pool->valuestring) : NULL,
        token_0 ? strdup(token_0->valuestring) : NULL,
        token_1 ? strdup(token_1->valuestring) : NULL,
        timestamp ? strdup(timestamp->valuestring) : NULL,
        owner ? strdup(owner->valuestring) : NULL,
        origin ? strdup(origin->valuestring) : NULL,
        amount ? strdup(amount->valuestring) : NULL,
        amount_0 ? strdup(amount_0->valuestring) : NULL,
        amount_1 ? strdup(amount_1->valuestring) : NULL,
        amount_usd ? strdup(amount_usd->valuestring) : NULL,
        tick_lower ? strdup(tick_lower->valuestring) : NULL,
        tick_upper ? strdup(tick_upper->valuestring) : NULL,
        log_index ? strdup(log_index->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return burn_v3_dto_local_var;
end:
    return NULL;

}
