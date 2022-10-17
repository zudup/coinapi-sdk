#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "swap_v3_dto.h"


char* evaluated_aggressorswap_v3_dto_ToString(onchain_api_swap_v3_dto__e evaluated_aggressor) {
    char* evaluated_aggressorArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
	return evaluated_aggressorArray[evaluated_aggressor];
}

onchain_api_swap_v3_dto__e evaluated_aggressorswap_v3_dto_FromString(char* evaluated_aggressor){
    int stringToReturn = 0;
    char *evaluated_aggressorArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
    size_t sizeofArray = sizeof(evaluated_aggressorArray) / sizeof(evaluated_aggressorArray[0]);
    while(stringToReturn < sizeofArray) {
        if(strcmp(evaluated_aggressor, evaluated_aggressorArray[stringToReturn]) == 0) {
            return stringToReturn;
        }
        stringToReturn++;
    }
    return 0;
}

swap_v3_dto_t *swap_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *transaction,
    char *timestamp,
    char *pool,
    char *token_0,
    char *token_1,
    char *sender,
    char *recipient,
    char *origin,
    char *amount_0,
    char *amount_1,
    char *amount_usd,
    big_integer_t *sqrt_price_x96,
    big_integer_t *tick,
    big_integer_t *log_index,
    double evaluated_price,
    double evaluated_amount,
    e_trade_aggressive_side_t *evaluated_aggressor,
    char *pool_id,
    char *transaction_id
    ) {
    swap_v3_dto_t *swap_v3_dto_local_var = malloc(sizeof(swap_v3_dto_t));
    if (!swap_v3_dto_local_var) {
        return NULL;
    }
    swap_v3_dto_local_var->entry_time = entry_time;
    swap_v3_dto_local_var->recv_time = recv_time;
    swap_v3_dto_local_var->block_number = block_number;
    swap_v3_dto_local_var->vid = vid;
    swap_v3_dto_local_var->id = id;
    swap_v3_dto_local_var->transaction = transaction;
    swap_v3_dto_local_var->timestamp = timestamp;
    swap_v3_dto_local_var->pool = pool;
    swap_v3_dto_local_var->token_0 = token_0;
    swap_v3_dto_local_var->token_1 = token_1;
    swap_v3_dto_local_var->sender = sender;
    swap_v3_dto_local_var->recipient = recipient;
    swap_v3_dto_local_var->origin = origin;
    swap_v3_dto_local_var->amount_0 = amount_0;
    swap_v3_dto_local_var->amount_1 = amount_1;
    swap_v3_dto_local_var->amount_usd = amount_usd;
    swap_v3_dto_local_var->sqrt_price_x96 = sqrt_price_x96;
    swap_v3_dto_local_var->tick = tick;
    swap_v3_dto_local_var->log_index = log_index;
    swap_v3_dto_local_var->evaluated_price = evaluated_price;
    swap_v3_dto_local_var->evaluated_amount = evaluated_amount;
    swap_v3_dto_local_var->evaluated_aggressor = evaluated_aggressor;
    swap_v3_dto_local_var->pool_id = pool_id;
    swap_v3_dto_local_var->transaction_id = transaction_id;

    return swap_v3_dto_local_var;
}


void swap_v3_dto_free(swap_v3_dto_t *swap_v3_dto) {
    if(NULL == swap_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (swap_v3_dto->entry_time) {
        free(swap_v3_dto->entry_time);
        swap_v3_dto->entry_time = NULL;
    }
    if (swap_v3_dto->recv_time) {
        free(swap_v3_dto->recv_time);
        swap_v3_dto->recv_time = NULL;
    }
    if (swap_v3_dto->id) {
        free(swap_v3_dto->id);
        swap_v3_dto->id = NULL;
    }
    if (swap_v3_dto->transaction) {
        free(swap_v3_dto->transaction);
        swap_v3_dto->transaction = NULL;
    }
    if (swap_v3_dto->timestamp) {
        free(swap_v3_dto->timestamp);
        swap_v3_dto->timestamp = NULL;
    }
    if (swap_v3_dto->pool) {
        free(swap_v3_dto->pool);
        swap_v3_dto->pool = NULL;
    }
    if (swap_v3_dto->token_0) {
        free(swap_v3_dto->token_0);
        swap_v3_dto->token_0 = NULL;
    }
    if (swap_v3_dto->token_1) {
        free(swap_v3_dto->token_1);
        swap_v3_dto->token_1 = NULL;
    }
    if (swap_v3_dto->sender) {
        free(swap_v3_dto->sender);
        swap_v3_dto->sender = NULL;
    }
    if (swap_v3_dto->recipient) {
        free(swap_v3_dto->recipient);
        swap_v3_dto->recipient = NULL;
    }
    if (swap_v3_dto->origin) {
        free(swap_v3_dto->origin);
        swap_v3_dto->origin = NULL;
    }
    if (swap_v3_dto->amount_0) {
        free(swap_v3_dto->amount_0);
        swap_v3_dto->amount_0 = NULL;
    }
    if (swap_v3_dto->amount_1) {
        free(swap_v3_dto->amount_1);
        swap_v3_dto->amount_1 = NULL;
    }
    if (swap_v3_dto->amount_usd) {
        free(swap_v3_dto->amount_usd);
        swap_v3_dto->amount_usd = NULL;
    }
    if (swap_v3_dto->sqrt_price_x96) {
        big_integer_free(swap_v3_dto->sqrt_price_x96);
        swap_v3_dto->sqrt_price_x96 = NULL;
    }
    if (swap_v3_dto->tick) {
        big_integer_free(swap_v3_dto->tick);
        swap_v3_dto->tick = NULL;
    }
    if (swap_v3_dto->log_index) {
        big_integer_free(swap_v3_dto->log_index);
        swap_v3_dto->log_index = NULL;
    }
    if (swap_v3_dto->evaluated_aggressor) {
        e_trade_aggressive_side_free(swap_v3_dto->evaluated_aggressor);
        swap_v3_dto->evaluated_aggressor = NULL;
    }
    if (swap_v3_dto->pool_id) {
        free(swap_v3_dto->pool_id);
        swap_v3_dto->pool_id = NULL;
    }
    if (swap_v3_dto->transaction_id) {
        free(swap_v3_dto->transaction_id);
        swap_v3_dto->transaction_id = NULL;
    }
    free(swap_v3_dto);
}

cJSON *swap_v3_dto_convertToJSON(swap_v3_dto_t *swap_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // swap_v3_dto->entry_time
    if(swap_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", swap_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // swap_v3_dto->recv_time
    if(swap_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", swap_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // swap_v3_dto->block_number
    if(swap_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", swap_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_v3_dto->vid
    if(swap_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", swap_v3_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_v3_dto->id
    if(swap_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", swap_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->transaction
    if(swap_v3_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", swap_v3_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->timestamp
    if(swap_v3_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", swap_v3_dto->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // swap_v3_dto->pool
    if(swap_v3_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", swap_v3_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->token_0
    if(swap_v3_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", swap_v3_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->token_1
    if(swap_v3_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", swap_v3_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->sender
    if(swap_v3_dto->sender) {
    if(cJSON_AddStringToObject(item, "sender", swap_v3_dto->sender) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->recipient
    if(swap_v3_dto->recipient) {
    if(cJSON_AddStringToObject(item, "recipient", swap_v3_dto->recipient) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->origin
    if(swap_v3_dto->origin) {
    if(cJSON_AddStringToObject(item, "origin", swap_v3_dto->origin) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->amount_0
    if(swap_v3_dto->amount_0) {
    if(cJSON_AddStringToObject(item, "amount_0", swap_v3_dto->amount_0) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->amount_1
    if(swap_v3_dto->amount_1) {
    if(cJSON_AddStringToObject(item, "amount_1", swap_v3_dto->amount_1) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->amount_usd
    if(swap_v3_dto->amount_usd) {
    if(cJSON_AddStringToObject(item, "amount_usd", swap_v3_dto->amount_usd) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->sqrt_price_x96
    if(swap_v3_dto->sqrt_price_x96) {
    cJSON *sqrt_price_x96_local_JSON = big_integer_convertToJSON(swap_v3_dto->sqrt_price_x96);
    if(sqrt_price_x96_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "sqrt_price_x96", sqrt_price_x96_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // swap_v3_dto->tick
    if(swap_v3_dto->tick) {
    cJSON *tick_local_JSON = big_integer_convertToJSON(swap_v3_dto->tick);
    if(tick_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tick", tick_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // swap_v3_dto->log_index
    if(swap_v3_dto->log_index) {
    cJSON *log_index_local_JSON = big_integer_convertToJSON(swap_v3_dto->log_index);
    if(log_index_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "log_index", log_index_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // swap_v3_dto->evaluated_price
    if(swap_v3_dto->evaluated_price) {
    if(cJSON_AddNumberToObject(item, "evaluated_price", swap_v3_dto->evaluated_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_v3_dto->evaluated_amount
    if(swap_v3_dto->evaluated_amount) {
    if(cJSON_AddNumberToObject(item, "evaluated_amount", swap_v3_dto->evaluated_amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_v3_dto->evaluated_aggressor
    if(swap_v3_dto->evaluated_aggressor != onchain_api_swap_v3_dto__NULL) {
    cJSON *evaluated_aggressor_local_JSON = e_trade_aggressive_side_convertToJSON(swap_v3_dto->evaluated_aggressor);
    if(evaluated_aggressor_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "evaluated_aggressor", evaluated_aggressor_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }
    }


    // swap_v3_dto->pool_id
    if(swap_v3_dto->pool_id) {
    if(cJSON_AddStringToObject(item, "pool_id", swap_v3_dto->pool_id) == NULL) {
    goto fail; //String
    }
    }


    // swap_v3_dto->transaction_id
    if(swap_v3_dto->transaction_id) {
    if(cJSON_AddStringToObject(item, "transaction_id", swap_v3_dto->transaction_id) == NULL) {
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

swap_v3_dto_t *swap_v3_dto_parseFromJSON(cJSON *swap_v3_dtoJSON){

    swap_v3_dto_t *swap_v3_dto_local_var = NULL;

    // define the local variable for swap_v3_dto->sqrt_price_x96
    big_integer_t *sqrt_price_x96_local_nonprim = NULL;

    // define the local variable for swap_v3_dto->tick
    big_integer_t *tick_local_nonprim = NULL;

    // define the local variable for swap_v3_dto->log_index
    big_integer_t *log_index_local_nonprim = NULL;

    // define the local variable for swap_v3_dto->evaluated_aggressor
    e_trade_aggressive_side_t *evaluated_aggressor_local_nonprim = NULL;

    // swap_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // swap_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // swap_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // swap_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // swap_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp))
    {
    goto end; //DateTime
    }
    }

    // swap_v3_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->sender
    cJSON *sender = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "sender");
    if (sender) { 
    if(!cJSON_IsString(sender))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->recipient
    cJSON *recipient = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "recipient");
    if (recipient) { 
    if(!cJSON_IsString(recipient))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->origin
    cJSON *origin = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "origin");
    if (origin) { 
    if(!cJSON_IsString(origin))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->amount_0
    cJSON *amount_0 = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "amount_0");
    if (amount_0) { 
    if(!cJSON_IsString(amount_0))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->amount_1
    cJSON *amount_1 = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "amount_1");
    if (amount_1) { 
    if(!cJSON_IsString(amount_1))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->amount_usd
    cJSON *amount_usd = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "amount_usd");
    if (amount_usd) { 
    if(!cJSON_IsString(amount_usd))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->sqrt_price_x96
    cJSON *sqrt_price_x96 = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "sqrt_price_x96");
    if (sqrt_price_x96) { 
    sqrt_price_x96_local_nonprim = big_integer_parseFromJSON(sqrt_price_x96); //nonprimitive
    }

    // swap_v3_dto->tick
    cJSON *tick = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "tick");
    if (tick) { 
    tick_local_nonprim = big_integer_parseFromJSON(tick); //nonprimitive
    }

    // swap_v3_dto->log_index
    cJSON *log_index = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "log_index");
    if (log_index) { 
    log_index_local_nonprim = big_integer_parseFromJSON(log_index); //nonprimitive
    }

    // swap_v3_dto->evaluated_price
    cJSON *evaluated_price = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "evaluated_price");
    if (evaluated_price) { 
    if(!cJSON_IsNumber(evaluated_price))
    {
    goto end; //Numeric
    }
    }

    // swap_v3_dto->evaluated_amount
    cJSON *evaluated_amount = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "evaluated_amount");
    if (evaluated_amount) { 
    if(!cJSON_IsNumber(evaluated_amount))
    {
    goto end; //Numeric
    }
    }

    // swap_v3_dto->evaluated_aggressor
    cJSON *evaluated_aggressor = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "evaluated_aggressor");
    if (evaluated_aggressor) { 
    evaluated_aggressor_local_nonprim = e_trade_aggressive_side_parseFromJSON(evaluated_aggressor); //custom
    }

    // swap_v3_dto->pool_id
    cJSON *pool_id = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "pool_id");
    if (pool_id) { 
    if(!cJSON_IsString(pool_id))
    {
    goto end; //String
    }
    }

    // swap_v3_dto->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(swap_v3_dtoJSON, "transaction_id");
    if (transaction_id) { 
    if(!cJSON_IsString(transaction_id))
    {
    goto end; //String
    }
    }


    swap_v3_dto_local_var = swap_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        transaction ? strdup(transaction->valuestring) : NULL,
        timestamp ? strdup(timestamp->valuestring) : NULL,
        pool ? strdup(pool->valuestring) : NULL,
        token_0 ? strdup(token_0->valuestring) : NULL,
        token_1 ? strdup(token_1->valuestring) : NULL,
        sender ? strdup(sender->valuestring) : NULL,
        recipient ? strdup(recipient->valuestring) : NULL,
        origin ? strdup(origin->valuestring) : NULL,
        amount_0 ? strdup(amount_0->valuestring) : NULL,
        amount_1 ? strdup(amount_1->valuestring) : NULL,
        amount_usd ? strdup(amount_usd->valuestring) : NULL,
        sqrt_price_x96 ? sqrt_price_x96_local_nonprim : NULL,
        tick ? tick_local_nonprim : NULL,
        log_index ? log_index_local_nonprim : NULL,
        evaluated_price ? evaluated_price->valuedouble : 0,
        evaluated_amount ? evaluated_amount->valuedouble : 0,
        evaluated_aggressor ? evaluated_aggressor_local_nonprim : NULL,
        pool_id ? strdup(pool_id->valuestring) : NULL,
        transaction_id ? strdup(transaction_id->valuestring) : NULL
        );

    return swap_v3_dto_local_var;
end:
    if (sqrt_price_x96_local_nonprim) {
        big_integer_free(sqrt_price_x96_local_nonprim);
        sqrt_price_x96_local_nonprim = NULL;
    }
    if (tick_local_nonprim) {
        big_integer_free(tick_local_nonprim);
        tick_local_nonprim = NULL;
    }
    if (log_index_local_nonprim) {
        big_integer_free(log_index_local_nonprim);
        log_index_local_nonprim = NULL;
    }
    if (evaluated_aggressor_local_nonprim) {
        e_trade_aggressive_side_free(evaluated_aggressor_local_nonprim);
        evaluated_aggressor_local_nonprim = NULL;
    }
    return NULL;

}
