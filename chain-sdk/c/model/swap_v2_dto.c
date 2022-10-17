#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "swap_v2_dto.h"


char* evaluated_aggressorswap_v2_dto_ToString(onchain_api_swap_v2_dto__e evaluated_aggressor) {
    char* evaluated_aggressorArray[] =  { "NULL", "Buy", "Sell", "EstimatedBuy", "EstimatedSell", "Unknown" };
	return evaluated_aggressorArray[evaluated_aggressor];
}

onchain_api_swap_v2_dto__e evaluated_aggressorswap_v2_dto_FromString(char* evaluated_aggressor){
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

swap_v2_dto_t *swap_v2_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *transaction,
    char *timestamp,
    char *pair,
    char *sender,
    char *from,
    char *amount_0_in,
    char *amount_1_in,
    char *amount_0_out,
    char *amount_1_out,
    char *to,
    big_integer_t *log_index,
    char *amount_usd,
    double evaluated_price,
    double evaluated_amount,
    e_trade_aggressive_side_t *evaluated_aggressor,
    char *pool_id,
    char *transaction_id
    ) {
    swap_v2_dto_t *swap_v2_dto_local_var = malloc(sizeof(swap_v2_dto_t));
    if (!swap_v2_dto_local_var) {
        return NULL;
    }
    swap_v2_dto_local_var->entry_time = entry_time;
    swap_v2_dto_local_var->recv_time = recv_time;
    swap_v2_dto_local_var->block_number = block_number;
    swap_v2_dto_local_var->vid = vid;
    swap_v2_dto_local_var->id = id;
    swap_v2_dto_local_var->transaction = transaction;
    swap_v2_dto_local_var->timestamp = timestamp;
    swap_v2_dto_local_var->pair = pair;
    swap_v2_dto_local_var->sender = sender;
    swap_v2_dto_local_var->from = from;
    swap_v2_dto_local_var->amount_0_in = amount_0_in;
    swap_v2_dto_local_var->amount_1_in = amount_1_in;
    swap_v2_dto_local_var->amount_0_out = amount_0_out;
    swap_v2_dto_local_var->amount_1_out = amount_1_out;
    swap_v2_dto_local_var->to = to;
    swap_v2_dto_local_var->log_index = log_index;
    swap_v2_dto_local_var->amount_usd = amount_usd;
    swap_v2_dto_local_var->evaluated_price = evaluated_price;
    swap_v2_dto_local_var->evaluated_amount = evaluated_amount;
    swap_v2_dto_local_var->evaluated_aggressor = evaluated_aggressor;
    swap_v2_dto_local_var->pool_id = pool_id;
    swap_v2_dto_local_var->transaction_id = transaction_id;

    return swap_v2_dto_local_var;
}


void swap_v2_dto_free(swap_v2_dto_t *swap_v2_dto) {
    if(NULL == swap_v2_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (swap_v2_dto->entry_time) {
        free(swap_v2_dto->entry_time);
        swap_v2_dto->entry_time = NULL;
    }
    if (swap_v2_dto->recv_time) {
        free(swap_v2_dto->recv_time);
        swap_v2_dto->recv_time = NULL;
    }
    if (swap_v2_dto->id) {
        free(swap_v2_dto->id);
        swap_v2_dto->id = NULL;
    }
    if (swap_v2_dto->transaction) {
        free(swap_v2_dto->transaction);
        swap_v2_dto->transaction = NULL;
    }
    if (swap_v2_dto->timestamp) {
        free(swap_v2_dto->timestamp);
        swap_v2_dto->timestamp = NULL;
    }
    if (swap_v2_dto->pair) {
        free(swap_v2_dto->pair);
        swap_v2_dto->pair = NULL;
    }
    if (swap_v2_dto->sender) {
        free(swap_v2_dto->sender);
        swap_v2_dto->sender = NULL;
    }
    if (swap_v2_dto->from) {
        free(swap_v2_dto->from);
        swap_v2_dto->from = NULL;
    }
    if (swap_v2_dto->amount_0_in) {
        free(swap_v2_dto->amount_0_in);
        swap_v2_dto->amount_0_in = NULL;
    }
    if (swap_v2_dto->amount_1_in) {
        free(swap_v2_dto->amount_1_in);
        swap_v2_dto->amount_1_in = NULL;
    }
    if (swap_v2_dto->amount_0_out) {
        free(swap_v2_dto->amount_0_out);
        swap_v2_dto->amount_0_out = NULL;
    }
    if (swap_v2_dto->amount_1_out) {
        free(swap_v2_dto->amount_1_out);
        swap_v2_dto->amount_1_out = NULL;
    }
    if (swap_v2_dto->to) {
        free(swap_v2_dto->to);
        swap_v2_dto->to = NULL;
    }
    if (swap_v2_dto->log_index) {
        big_integer_free(swap_v2_dto->log_index);
        swap_v2_dto->log_index = NULL;
    }
    if (swap_v2_dto->amount_usd) {
        free(swap_v2_dto->amount_usd);
        swap_v2_dto->amount_usd = NULL;
    }
    if (swap_v2_dto->evaluated_aggressor) {
        e_trade_aggressive_side_free(swap_v2_dto->evaluated_aggressor);
        swap_v2_dto->evaluated_aggressor = NULL;
    }
    if (swap_v2_dto->pool_id) {
        free(swap_v2_dto->pool_id);
        swap_v2_dto->pool_id = NULL;
    }
    if (swap_v2_dto->transaction_id) {
        free(swap_v2_dto->transaction_id);
        swap_v2_dto->transaction_id = NULL;
    }
    free(swap_v2_dto);
}

cJSON *swap_v2_dto_convertToJSON(swap_v2_dto_t *swap_v2_dto) {
    cJSON *item = cJSON_CreateObject();

    // swap_v2_dto->entry_time
    if(swap_v2_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", swap_v2_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // swap_v2_dto->recv_time
    if(swap_v2_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", swap_v2_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // swap_v2_dto->block_number
    if(swap_v2_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", swap_v2_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_v2_dto->vid
    if(swap_v2_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", swap_v2_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_v2_dto->id
    if(swap_v2_dto->id) {
    if(cJSON_AddStringToObject(item, "id", swap_v2_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->transaction
    if(swap_v2_dto->transaction) {
    if(cJSON_AddStringToObject(item, "transaction", swap_v2_dto->transaction) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->timestamp
    if(swap_v2_dto->timestamp) {
    if(cJSON_AddStringToObject(item, "timestamp", swap_v2_dto->timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // swap_v2_dto->pair
    if(swap_v2_dto->pair) {
    if(cJSON_AddStringToObject(item, "pair", swap_v2_dto->pair) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->sender
    if(swap_v2_dto->sender) {
    if(cJSON_AddStringToObject(item, "sender", swap_v2_dto->sender) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->from
    if(swap_v2_dto->from) {
    if(cJSON_AddStringToObject(item, "from", swap_v2_dto->from) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->amount_0_in
    if(swap_v2_dto->amount_0_in) {
    if(cJSON_AddStringToObject(item, "amount_0_in", swap_v2_dto->amount_0_in) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->amount_1_in
    if(swap_v2_dto->amount_1_in) {
    if(cJSON_AddStringToObject(item, "amount_1_in", swap_v2_dto->amount_1_in) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->amount_0_out
    if(swap_v2_dto->amount_0_out) {
    if(cJSON_AddStringToObject(item, "amount_0_out", swap_v2_dto->amount_0_out) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->amount_1_out
    if(swap_v2_dto->amount_1_out) {
    if(cJSON_AddStringToObject(item, "amount_1_out", swap_v2_dto->amount_1_out) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->to
    if(swap_v2_dto->to) {
    if(cJSON_AddStringToObject(item, "to", swap_v2_dto->to) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->log_index
    if(swap_v2_dto->log_index) {
    cJSON *log_index_local_JSON = big_integer_convertToJSON(swap_v2_dto->log_index);
    if(log_index_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "log_index", log_index_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // swap_v2_dto->amount_usd
    if(swap_v2_dto->amount_usd) {
    if(cJSON_AddStringToObject(item, "amount_usd", swap_v2_dto->amount_usd) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->evaluated_price
    if(swap_v2_dto->evaluated_price) {
    if(cJSON_AddNumberToObject(item, "evaluated_price", swap_v2_dto->evaluated_price) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_v2_dto->evaluated_amount
    if(swap_v2_dto->evaluated_amount) {
    if(cJSON_AddNumberToObject(item, "evaluated_amount", swap_v2_dto->evaluated_amount) == NULL) {
    goto fail; //Numeric
    }
    }


    // swap_v2_dto->evaluated_aggressor
    if(swap_v2_dto->evaluated_aggressor != onchain_api_swap_v2_dto__NULL) {
    cJSON *evaluated_aggressor_local_JSON = e_trade_aggressive_side_convertToJSON(swap_v2_dto->evaluated_aggressor);
    if(evaluated_aggressor_local_JSON == NULL) {
        goto fail; // custom
    }
    cJSON_AddItemToObject(item, "evaluated_aggressor", evaluated_aggressor_local_JSON);
    if(item->child == NULL) {
        goto fail;
    }
    }


    // swap_v2_dto->pool_id
    if(swap_v2_dto->pool_id) {
    if(cJSON_AddStringToObject(item, "pool_id", swap_v2_dto->pool_id) == NULL) {
    goto fail; //String
    }
    }


    // swap_v2_dto->transaction_id
    if(swap_v2_dto->transaction_id) {
    if(cJSON_AddStringToObject(item, "transaction_id", swap_v2_dto->transaction_id) == NULL) {
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

swap_v2_dto_t *swap_v2_dto_parseFromJSON(cJSON *swap_v2_dtoJSON){

    swap_v2_dto_t *swap_v2_dto_local_var = NULL;

    // define the local variable for swap_v2_dto->log_index
    big_integer_t *log_index_local_nonprim = NULL;

    // define the local variable for swap_v2_dto->evaluated_aggressor
    e_trade_aggressive_side_t *evaluated_aggressor_local_nonprim = NULL;

    // swap_v2_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // swap_v2_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // swap_v2_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // swap_v2_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // swap_v2_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->transaction
    cJSON *transaction = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "transaction");
    if (transaction) { 
    if(!cJSON_IsString(transaction))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->timestamp
    cJSON *timestamp = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "timestamp");
    if (timestamp) { 
    if(!cJSON_IsString(timestamp))
    {
    goto end; //DateTime
    }
    }

    // swap_v2_dto->pair
    cJSON *pair = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "pair");
    if (pair) { 
    if(!cJSON_IsString(pair))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->sender
    cJSON *sender = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "sender");
    if (sender) { 
    if(!cJSON_IsString(sender))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->from
    cJSON *from = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "from");
    if (from) { 
    if(!cJSON_IsString(from))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->amount_0_in
    cJSON *amount_0_in = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "amount_0_in");
    if (amount_0_in) { 
    if(!cJSON_IsString(amount_0_in))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->amount_1_in
    cJSON *amount_1_in = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "amount_1_in");
    if (amount_1_in) { 
    if(!cJSON_IsString(amount_1_in))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->amount_0_out
    cJSON *amount_0_out = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "amount_0_out");
    if (amount_0_out) { 
    if(!cJSON_IsString(amount_0_out))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->amount_1_out
    cJSON *amount_1_out = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "amount_1_out");
    if (amount_1_out) { 
    if(!cJSON_IsString(amount_1_out))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->to
    cJSON *to = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "to");
    if (to) { 
    if(!cJSON_IsString(to))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->log_index
    cJSON *log_index = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "log_index");
    if (log_index) { 
    log_index_local_nonprim = big_integer_parseFromJSON(log_index); //nonprimitive
    }

    // swap_v2_dto->amount_usd
    cJSON *amount_usd = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "amount_usd");
    if (amount_usd) { 
    if(!cJSON_IsString(amount_usd))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->evaluated_price
    cJSON *evaluated_price = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "evaluated_price");
    if (evaluated_price) { 
    if(!cJSON_IsNumber(evaluated_price))
    {
    goto end; //Numeric
    }
    }

    // swap_v2_dto->evaluated_amount
    cJSON *evaluated_amount = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "evaluated_amount");
    if (evaluated_amount) { 
    if(!cJSON_IsNumber(evaluated_amount))
    {
    goto end; //Numeric
    }
    }

    // swap_v2_dto->evaluated_aggressor
    cJSON *evaluated_aggressor = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "evaluated_aggressor");
    if (evaluated_aggressor) { 
    evaluated_aggressor_local_nonprim = e_trade_aggressive_side_parseFromJSON(evaluated_aggressor); //custom
    }

    // swap_v2_dto->pool_id
    cJSON *pool_id = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "pool_id");
    if (pool_id) { 
    if(!cJSON_IsString(pool_id))
    {
    goto end; //String
    }
    }

    // swap_v2_dto->transaction_id
    cJSON *transaction_id = cJSON_GetObjectItemCaseSensitive(swap_v2_dtoJSON, "transaction_id");
    if (transaction_id) { 
    if(!cJSON_IsString(transaction_id))
    {
    goto end; //String
    }
    }


    swap_v2_dto_local_var = swap_v2_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        transaction ? strdup(transaction->valuestring) : NULL,
        timestamp ? strdup(timestamp->valuestring) : NULL,
        pair ? strdup(pair->valuestring) : NULL,
        sender ? strdup(sender->valuestring) : NULL,
        from ? strdup(from->valuestring) : NULL,
        amount_0_in ? strdup(amount_0_in->valuestring) : NULL,
        amount_1_in ? strdup(amount_1_in->valuestring) : NULL,
        amount_0_out ? strdup(amount_0_out->valuestring) : NULL,
        amount_1_out ? strdup(amount_1_out->valuestring) : NULL,
        to ? strdup(to->valuestring) : NULL,
        log_index ? log_index_local_nonprim : NULL,
        amount_usd ? strdup(amount_usd->valuestring) : NULL,
        evaluated_price ? evaluated_price->valuedouble : 0,
        evaluated_amount ? evaluated_amount->valuedouble : 0,
        evaluated_aggressor ? evaluated_aggressor_local_nonprim : NULL,
        pool_id ? strdup(pool_id->valuestring) : NULL,
        transaction_id ? strdup(transaction_id->valuestring) : NULL
        );

    return swap_v2_dto_local_var;
end:
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
