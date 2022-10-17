#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "tick_v3_dto.h"



tick_v3_dto_t *tick_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *pool_address,
    big_integer_t *tick_idx,
    char *pool,
    big_integer_t *liquidity_gross,
    big_integer_t *liquidity_net,
    char *price_0,
    char *price_1,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *untracked_volume_usd,
    char *fees_usd,
    char *collected_fees_token_0,
    char *collected_fees_token_1,
    char *collected_fees_usd,
    char *created_at_timestamp,
    big_integer_t *liquidity_provider_count,
    big_integer_t *fee_growth_outside_0x128,
    big_integer_t *fee_growth_outside_1x128
    ) {
    tick_v3_dto_t *tick_v3_dto_local_var = malloc(sizeof(tick_v3_dto_t));
    if (!tick_v3_dto_local_var) {
        return NULL;
    }
    tick_v3_dto_local_var->entry_time = entry_time;
    tick_v3_dto_local_var->recv_time = recv_time;
    tick_v3_dto_local_var->block_number = block_number;
    tick_v3_dto_local_var->vid = vid;
    tick_v3_dto_local_var->id = id;
    tick_v3_dto_local_var->pool_address = pool_address;
    tick_v3_dto_local_var->tick_idx = tick_idx;
    tick_v3_dto_local_var->pool = pool;
    tick_v3_dto_local_var->liquidity_gross = liquidity_gross;
    tick_v3_dto_local_var->liquidity_net = liquidity_net;
    tick_v3_dto_local_var->price_0 = price_0;
    tick_v3_dto_local_var->price_1 = price_1;
    tick_v3_dto_local_var->volume_token_0 = volume_token_0;
    tick_v3_dto_local_var->volume_token_1 = volume_token_1;
    tick_v3_dto_local_var->volume_usd = volume_usd;
    tick_v3_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    tick_v3_dto_local_var->fees_usd = fees_usd;
    tick_v3_dto_local_var->collected_fees_token_0 = collected_fees_token_0;
    tick_v3_dto_local_var->collected_fees_token_1 = collected_fees_token_1;
    tick_v3_dto_local_var->collected_fees_usd = collected_fees_usd;
    tick_v3_dto_local_var->created_at_timestamp = created_at_timestamp;
    tick_v3_dto_local_var->liquidity_provider_count = liquidity_provider_count;
    tick_v3_dto_local_var->fee_growth_outside_0x128 = fee_growth_outside_0x128;
    tick_v3_dto_local_var->fee_growth_outside_1x128 = fee_growth_outside_1x128;

    return tick_v3_dto_local_var;
}


void tick_v3_dto_free(tick_v3_dto_t *tick_v3_dto) {
    if(NULL == tick_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (tick_v3_dto->entry_time) {
        free(tick_v3_dto->entry_time);
        tick_v3_dto->entry_time = NULL;
    }
    if (tick_v3_dto->recv_time) {
        free(tick_v3_dto->recv_time);
        tick_v3_dto->recv_time = NULL;
    }
    if (tick_v3_dto->id) {
        free(tick_v3_dto->id);
        tick_v3_dto->id = NULL;
    }
    if (tick_v3_dto->pool_address) {
        free(tick_v3_dto->pool_address);
        tick_v3_dto->pool_address = NULL;
    }
    if (tick_v3_dto->tick_idx) {
        big_integer_free(tick_v3_dto->tick_idx);
        tick_v3_dto->tick_idx = NULL;
    }
    if (tick_v3_dto->pool) {
        free(tick_v3_dto->pool);
        tick_v3_dto->pool = NULL;
    }
    if (tick_v3_dto->liquidity_gross) {
        big_integer_free(tick_v3_dto->liquidity_gross);
        tick_v3_dto->liquidity_gross = NULL;
    }
    if (tick_v3_dto->liquidity_net) {
        big_integer_free(tick_v3_dto->liquidity_net);
        tick_v3_dto->liquidity_net = NULL;
    }
    if (tick_v3_dto->price_0) {
        free(tick_v3_dto->price_0);
        tick_v3_dto->price_0 = NULL;
    }
    if (tick_v3_dto->price_1) {
        free(tick_v3_dto->price_1);
        tick_v3_dto->price_1 = NULL;
    }
    if (tick_v3_dto->volume_token_0) {
        free(tick_v3_dto->volume_token_0);
        tick_v3_dto->volume_token_0 = NULL;
    }
    if (tick_v3_dto->volume_token_1) {
        free(tick_v3_dto->volume_token_1);
        tick_v3_dto->volume_token_1 = NULL;
    }
    if (tick_v3_dto->volume_usd) {
        free(tick_v3_dto->volume_usd);
        tick_v3_dto->volume_usd = NULL;
    }
    if (tick_v3_dto->untracked_volume_usd) {
        free(tick_v3_dto->untracked_volume_usd);
        tick_v3_dto->untracked_volume_usd = NULL;
    }
    if (tick_v3_dto->fees_usd) {
        free(tick_v3_dto->fees_usd);
        tick_v3_dto->fees_usd = NULL;
    }
    if (tick_v3_dto->collected_fees_token_0) {
        free(tick_v3_dto->collected_fees_token_0);
        tick_v3_dto->collected_fees_token_0 = NULL;
    }
    if (tick_v3_dto->collected_fees_token_1) {
        free(tick_v3_dto->collected_fees_token_1);
        tick_v3_dto->collected_fees_token_1 = NULL;
    }
    if (tick_v3_dto->collected_fees_usd) {
        free(tick_v3_dto->collected_fees_usd);
        tick_v3_dto->collected_fees_usd = NULL;
    }
    if (tick_v3_dto->created_at_timestamp) {
        free(tick_v3_dto->created_at_timestamp);
        tick_v3_dto->created_at_timestamp = NULL;
    }
    if (tick_v3_dto->liquidity_provider_count) {
        big_integer_free(tick_v3_dto->liquidity_provider_count);
        tick_v3_dto->liquidity_provider_count = NULL;
    }
    if (tick_v3_dto->fee_growth_outside_0x128) {
        big_integer_free(tick_v3_dto->fee_growth_outside_0x128);
        tick_v3_dto->fee_growth_outside_0x128 = NULL;
    }
    if (tick_v3_dto->fee_growth_outside_1x128) {
        big_integer_free(tick_v3_dto->fee_growth_outside_1x128);
        tick_v3_dto->fee_growth_outside_1x128 = NULL;
    }
    free(tick_v3_dto);
}

cJSON *tick_v3_dto_convertToJSON(tick_v3_dto_t *tick_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // tick_v3_dto->entry_time
    if(tick_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", tick_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // tick_v3_dto->recv_time
    if(tick_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", tick_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // tick_v3_dto->block_number
    if(tick_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", tick_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // tick_v3_dto->vid
    if(tick_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", tick_v3_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // tick_v3_dto->id
    if(tick_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", tick_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->pool_address
    if(tick_v3_dto->pool_address) {
    if(cJSON_AddStringToObject(item, "pool_address", tick_v3_dto->pool_address) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->tick_idx
    if(tick_v3_dto->tick_idx) {
    cJSON *tick_idx_local_JSON = big_integer_convertToJSON(tick_v3_dto->tick_idx);
    if(tick_idx_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tick_idx", tick_idx_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tick_v3_dto->pool
    if(tick_v3_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", tick_v3_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->liquidity_gross
    if(tick_v3_dto->liquidity_gross) {
    cJSON *liquidity_gross_local_JSON = big_integer_convertToJSON(tick_v3_dto->liquidity_gross);
    if(liquidity_gross_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "liquidity_gross", liquidity_gross_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tick_v3_dto->liquidity_net
    if(tick_v3_dto->liquidity_net) {
    cJSON *liquidity_net_local_JSON = big_integer_convertToJSON(tick_v3_dto->liquidity_net);
    if(liquidity_net_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "liquidity_net", liquidity_net_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tick_v3_dto->price_0
    if(tick_v3_dto->price_0) {
    if(cJSON_AddStringToObject(item, "price_0", tick_v3_dto->price_0) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->price_1
    if(tick_v3_dto->price_1) {
    if(cJSON_AddStringToObject(item, "price_1", tick_v3_dto->price_1) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->volume_token_0
    if(tick_v3_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", tick_v3_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->volume_token_1
    if(tick_v3_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", tick_v3_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->volume_usd
    if(tick_v3_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", tick_v3_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->untracked_volume_usd
    if(tick_v3_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", tick_v3_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->fees_usd
    if(tick_v3_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", tick_v3_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->collected_fees_token_0
    if(tick_v3_dto->collected_fees_token_0) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_0", tick_v3_dto->collected_fees_token_0) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->collected_fees_token_1
    if(tick_v3_dto->collected_fees_token_1) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_1", tick_v3_dto->collected_fees_token_1) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->collected_fees_usd
    if(tick_v3_dto->collected_fees_usd) {
    if(cJSON_AddStringToObject(item, "collected_fees_usd", tick_v3_dto->collected_fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // tick_v3_dto->created_at_timestamp
    if(tick_v3_dto->created_at_timestamp) {
    if(cJSON_AddStringToObject(item, "created_at_timestamp", tick_v3_dto->created_at_timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // tick_v3_dto->liquidity_provider_count
    if(tick_v3_dto->liquidity_provider_count) {
    cJSON *liquidity_provider_count_local_JSON = big_integer_convertToJSON(tick_v3_dto->liquidity_provider_count);
    if(liquidity_provider_count_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "liquidity_provider_count", liquidity_provider_count_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tick_v3_dto->fee_growth_outside_0x128
    if(tick_v3_dto->fee_growth_outside_0x128) {
    cJSON *fee_growth_outside_0x128_local_JSON = big_integer_convertToJSON(tick_v3_dto->fee_growth_outside_0x128);
    if(fee_growth_outside_0x128_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fee_growth_outside_0x128", fee_growth_outside_0x128_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // tick_v3_dto->fee_growth_outside_1x128
    if(tick_v3_dto->fee_growth_outside_1x128) {
    cJSON *fee_growth_outside_1x128_local_JSON = big_integer_convertToJSON(tick_v3_dto->fee_growth_outside_1x128);
    if(fee_growth_outside_1x128_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fee_growth_outside_1x128", fee_growth_outside_1x128_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

tick_v3_dto_t *tick_v3_dto_parseFromJSON(cJSON *tick_v3_dtoJSON){

    tick_v3_dto_t *tick_v3_dto_local_var = NULL;

    // define the local variable for tick_v3_dto->tick_idx
    big_integer_t *tick_idx_local_nonprim = NULL;

    // define the local variable for tick_v3_dto->liquidity_gross
    big_integer_t *liquidity_gross_local_nonprim = NULL;

    // define the local variable for tick_v3_dto->liquidity_net
    big_integer_t *liquidity_net_local_nonprim = NULL;

    // define the local variable for tick_v3_dto->liquidity_provider_count
    big_integer_t *liquidity_provider_count_local_nonprim = NULL;

    // define the local variable for tick_v3_dto->fee_growth_outside_0x128
    big_integer_t *fee_growth_outside_0x128_local_nonprim = NULL;

    // define the local variable for tick_v3_dto->fee_growth_outside_1x128
    big_integer_t *fee_growth_outside_1x128_local_nonprim = NULL;

    // tick_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // tick_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // tick_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // tick_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // tick_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->pool_address
    cJSON *pool_address = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "pool_address");
    if (pool_address) { 
    if(!cJSON_IsString(pool_address))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->tick_idx
    cJSON *tick_idx = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "tick_idx");
    if (tick_idx) { 
    tick_idx_local_nonprim = big_integer_parseFromJSON(tick_idx); //nonprimitive
    }

    // tick_v3_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->liquidity_gross
    cJSON *liquidity_gross = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "liquidity_gross");
    if (liquidity_gross) { 
    liquidity_gross_local_nonprim = big_integer_parseFromJSON(liquidity_gross); //nonprimitive
    }

    // tick_v3_dto->liquidity_net
    cJSON *liquidity_net = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "liquidity_net");
    if (liquidity_net) { 
    liquidity_net_local_nonprim = big_integer_parseFromJSON(liquidity_net); //nonprimitive
    }

    // tick_v3_dto->price_0
    cJSON *price_0 = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "price_0");
    if (price_0) { 
    if(!cJSON_IsString(price_0))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->price_1
    cJSON *price_1 = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "price_1");
    if (price_1) { 
    if(!cJSON_IsString(price_1))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->collected_fees_token_0
    cJSON *collected_fees_token_0 = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "collected_fees_token_0");
    if (collected_fees_token_0) { 
    if(!cJSON_IsString(collected_fees_token_0))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->collected_fees_token_1
    cJSON *collected_fees_token_1 = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "collected_fees_token_1");
    if (collected_fees_token_1) { 
    if(!cJSON_IsString(collected_fees_token_1))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->collected_fees_usd
    cJSON *collected_fees_usd = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "collected_fees_usd");
    if (collected_fees_usd) { 
    if(!cJSON_IsString(collected_fees_usd))
    {
    goto end; //String
    }
    }

    // tick_v3_dto->created_at_timestamp
    cJSON *created_at_timestamp = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "created_at_timestamp");
    if (created_at_timestamp) { 
    if(!cJSON_IsString(created_at_timestamp))
    {
    goto end; //DateTime
    }
    }

    // tick_v3_dto->liquidity_provider_count
    cJSON *liquidity_provider_count = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "liquidity_provider_count");
    if (liquidity_provider_count) { 
    liquidity_provider_count_local_nonprim = big_integer_parseFromJSON(liquidity_provider_count); //nonprimitive
    }

    // tick_v3_dto->fee_growth_outside_0x128
    cJSON *fee_growth_outside_0x128 = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "fee_growth_outside_0x128");
    if (fee_growth_outside_0x128) { 
    fee_growth_outside_0x128_local_nonprim = big_integer_parseFromJSON(fee_growth_outside_0x128); //nonprimitive
    }

    // tick_v3_dto->fee_growth_outside_1x128
    cJSON *fee_growth_outside_1x128 = cJSON_GetObjectItemCaseSensitive(tick_v3_dtoJSON, "fee_growth_outside_1x128");
    if (fee_growth_outside_1x128) { 
    fee_growth_outside_1x128_local_nonprim = big_integer_parseFromJSON(fee_growth_outside_1x128); //nonprimitive
    }


    tick_v3_dto_local_var = tick_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        pool_address ? strdup(pool_address->valuestring) : NULL,
        tick_idx ? tick_idx_local_nonprim : NULL,
        pool ? strdup(pool->valuestring) : NULL,
        liquidity_gross ? liquidity_gross_local_nonprim : NULL,
        liquidity_net ? liquidity_net_local_nonprim : NULL,
        price_0 ? strdup(price_0->valuestring) : NULL,
        price_1 ? strdup(price_1->valuestring) : NULL,
        volume_token_0 ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd ? strdup(untracked_volume_usd->valuestring) : NULL,
        fees_usd ? strdup(fees_usd->valuestring) : NULL,
        collected_fees_token_0 ? strdup(collected_fees_token_0->valuestring) : NULL,
        collected_fees_token_1 ? strdup(collected_fees_token_1->valuestring) : NULL,
        collected_fees_usd ? strdup(collected_fees_usd->valuestring) : NULL,
        created_at_timestamp ? strdup(created_at_timestamp->valuestring) : NULL,
        liquidity_provider_count ? liquidity_provider_count_local_nonprim : NULL,
        fee_growth_outside_0x128 ? fee_growth_outside_0x128_local_nonprim : NULL,
        fee_growth_outside_1x128 ? fee_growth_outside_1x128_local_nonprim : NULL
        );

    return tick_v3_dto_local_var;
end:
    if (tick_idx_local_nonprim) {
        big_integer_free(tick_idx_local_nonprim);
        tick_idx_local_nonprim = NULL;
    }
    if (liquidity_gross_local_nonprim) {
        big_integer_free(liquidity_gross_local_nonprim);
        liquidity_gross_local_nonprim = NULL;
    }
    if (liquidity_net_local_nonprim) {
        big_integer_free(liquidity_net_local_nonprim);
        liquidity_net_local_nonprim = NULL;
    }
    if (liquidity_provider_count_local_nonprim) {
        big_integer_free(liquidity_provider_count_local_nonprim);
        liquidity_provider_count_local_nonprim = NULL;
    }
    if (fee_growth_outside_0x128_local_nonprim) {
        big_integer_free(fee_growth_outside_0x128_local_nonprim);
        fee_growth_outside_0x128_local_nonprim = NULL;
    }
    if (fee_growth_outside_1x128_local_nonprim) {
        big_integer_free(fee_growth_outside_1x128_local_nonprim);
        fee_growth_outside_1x128_local_nonprim = NULL;
    }
    return NULL;

}
