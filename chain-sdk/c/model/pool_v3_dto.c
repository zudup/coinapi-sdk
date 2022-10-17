#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pool_v3_dto.h"



pool_v3_dto_t *pool_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *created_at_timestamp,
    char *token_0,
    char *token_1,
    big_integer_t *fee_tier,
    big_integer_t *liquidity,
    big_integer_t *sqrt_price,
    big_integer_t *fee_growth_global_0x128,
    big_integer_t *fee_growth_global_1x128,
    char *token_0_price,
    char *token_1_price,
    big_integer_t *tick,
    big_integer_t *observation_index,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *untracked_volume_usd,
    char *fees_usd,
    big_integer_t *tx_count,
    char *collected_fees_token_0,
    char *collected_fees_token_1,
    char *collected_fees_usd,
    char *total_value_locked_token_0,
    char *total_value_locked_token_1,
    char *total_value_locked_eth,
    char *total_value_locked_usd,
    char *total_value_locked_usd_untracked,
    char *liquidity_provider_count,
    double evaluated_ask
    ) {
    pool_v3_dto_t *pool_v3_dto_local_var = malloc(sizeof(pool_v3_dto_t));
    if (!pool_v3_dto_local_var) {
        return NULL;
    }
    pool_v3_dto_local_var->entry_time = entry_time;
    pool_v3_dto_local_var->recv_time = recv_time;
    pool_v3_dto_local_var->block_number = block_number;
    pool_v3_dto_local_var->vid = vid;
    pool_v3_dto_local_var->id = id;
    pool_v3_dto_local_var->created_at_timestamp = created_at_timestamp;
    pool_v3_dto_local_var->token_0 = token_0;
    pool_v3_dto_local_var->token_1 = token_1;
    pool_v3_dto_local_var->fee_tier = fee_tier;
    pool_v3_dto_local_var->liquidity = liquidity;
    pool_v3_dto_local_var->sqrt_price = sqrt_price;
    pool_v3_dto_local_var->fee_growth_global_0x128 = fee_growth_global_0x128;
    pool_v3_dto_local_var->fee_growth_global_1x128 = fee_growth_global_1x128;
    pool_v3_dto_local_var->token_0_price = token_0_price;
    pool_v3_dto_local_var->token_1_price = token_1_price;
    pool_v3_dto_local_var->tick = tick;
    pool_v3_dto_local_var->observation_index = observation_index;
    pool_v3_dto_local_var->volume_token_0 = volume_token_0;
    pool_v3_dto_local_var->volume_token_1 = volume_token_1;
    pool_v3_dto_local_var->volume_usd = volume_usd;
    pool_v3_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    pool_v3_dto_local_var->fees_usd = fees_usd;
    pool_v3_dto_local_var->tx_count = tx_count;
    pool_v3_dto_local_var->collected_fees_token_0 = collected_fees_token_0;
    pool_v3_dto_local_var->collected_fees_token_1 = collected_fees_token_1;
    pool_v3_dto_local_var->collected_fees_usd = collected_fees_usd;
    pool_v3_dto_local_var->total_value_locked_token_0 = total_value_locked_token_0;
    pool_v3_dto_local_var->total_value_locked_token_1 = total_value_locked_token_1;
    pool_v3_dto_local_var->total_value_locked_eth = total_value_locked_eth;
    pool_v3_dto_local_var->total_value_locked_usd = total_value_locked_usd;
    pool_v3_dto_local_var->total_value_locked_usd_untracked = total_value_locked_usd_untracked;
    pool_v3_dto_local_var->liquidity_provider_count = liquidity_provider_count;
    pool_v3_dto_local_var->evaluated_ask = evaluated_ask;

    return pool_v3_dto_local_var;
}


void pool_v3_dto_free(pool_v3_dto_t *pool_v3_dto) {
    if(NULL == pool_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (pool_v3_dto->entry_time) {
        free(pool_v3_dto->entry_time);
        pool_v3_dto->entry_time = NULL;
    }
    if (pool_v3_dto->recv_time) {
        free(pool_v3_dto->recv_time);
        pool_v3_dto->recv_time = NULL;
    }
    if (pool_v3_dto->id) {
        free(pool_v3_dto->id);
        pool_v3_dto->id = NULL;
    }
    if (pool_v3_dto->created_at_timestamp) {
        free(pool_v3_dto->created_at_timestamp);
        pool_v3_dto->created_at_timestamp = NULL;
    }
    if (pool_v3_dto->token_0) {
        free(pool_v3_dto->token_0);
        pool_v3_dto->token_0 = NULL;
    }
    if (pool_v3_dto->token_1) {
        free(pool_v3_dto->token_1);
        pool_v3_dto->token_1 = NULL;
    }
    if (pool_v3_dto->fee_tier) {
        big_integer_free(pool_v3_dto->fee_tier);
        pool_v3_dto->fee_tier = NULL;
    }
    if (pool_v3_dto->liquidity) {
        big_integer_free(pool_v3_dto->liquidity);
        pool_v3_dto->liquidity = NULL;
    }
    if (pool_v3_dto->sqrt_price) {
        big_integer_free(pool_v3_dto->sqrt_price);
        pool_v3_dto->sqrt_price = NULL;
    }
    if (pool_v3_dto->fee_growth_global_0x128) {
        big_integer_free(pool_v3_dto->fee_growth_global_0x128);
        pool_v3_dto->fee_growth_global_0x128 = NULL;
    }
    if (pool_v3_dto->fee_growth_global_1x128) {
        big_integer_free(pool_v3_dto->fee_growth_global_1x128);
        pool_v3_dto->fee_growth_global_1x128 = NULL;
    }
    if (pool_v3_dto->token_0_price) {
        free(pool_v3_dto->token_0_price);
        pool_v3_dto->token_0_price = NULL;
    }
    if (pool_v3_dto->token_1_price) {
        free(pool_v3_dto->token_1_price);
        pool_v3_dto->token_1_price = NULL;
    }
    if (pool_v3_dto->tick) {
        big_integer_free(pool_v3_dto->tick);
        pool_v3_dto->tick = NULL;
    }
    if (pool_v3_dto->observation_index) {
        big_integer_free(pool_v3_dto->observation_index);
        pool_v3_dto->observation_index = NULL;
    }
    if (pool_v3_dto->volume_token_0) {
        free(pool_v3_dto->volume_token_0);
        pool_v3_dto->volume_token_0 = NULL;
    }
    if (pool_v3_dto->volume_token_1) {
        free(pool_v3_dto->volume_token_1);
        pool_v3_dto->volume_token_1 = NULL;
    }
    if (pool_v3_dto->volume_usd) {
        free(pool_v3_dto->volume_usd);
        pool_v3_dto->volume_usd = NULL;
    }
    if (pool_v3_dto->untracked_volume_usd) {
        free(pool_v3_dto->untracked_volume_usd);
        pool_v3_dto->untracked_volume_usd = NULL;
    }
    if (pool_v3_dto->fees_usd) {
        free(pool_v3_dto->fees_usd);
        pool_v3_dto->fees_usd = NULL;
    }
    if (pool_v3_dto->tx_count) {
        big_integer_free(pool_v3_dto->tx_count);
        pool_v3_dto->tx_count = NULL;
    }
    if (pool_v3_dto->collected_fees_token_0) {
        free(pool_v3_dto->collected_fees_token_0);
        pool_v3_dto->collected_fees_token_0 = NULL;
    }
    if (pool_v3_dto->collected_fees_token_1) {
        free(pool_v3_dto->collected_fees_token_1);
        pool_v3_dto->collected_fees_token_1 = NULL;
    }
    if (pool_v3_dto->collected_fees_usd) {
        free(pool_v3_dto->collected_fees_usd);
        pool_v3_dto->collected_fees_usd = NULL;
    }
    if (pool_v3_dto->total_value_locked_token_0) {
        free(pool_v3_dto->total_value_locked_token_0);
        pool_v3_dto->total_value_locked_token_0 = NULL;
    }
    if (pool_v3_dto->total_value_locked_token_1) {
        free(pool_v3_dto->total_value_locked_token_1);
        pool_v3_dto->total_value_locked_token_1 = NULL;
    }
    if (pool_v3_dto->total_value_locked_eth) {
        free(pool_v3_dto->total_value_locked_eth);
        pool_v3_dto->total_value_locked_eth = NULL;
    }
    if (pool_v3_dto->total_value_locked_usd) {
        free(pool_v3_dto->total_value_locked_usd);
        pool_v3_dto->total_value_locked_usd = NULL;
    }
    if (pool_v3_dto->total_value_locked_usd_untracked) {
        free(pool_v3_dto->total_value_locked_usd_untracked);
        pool_v3_dto->total_value_locked_usd_untracked = NULL;
    }
    if (pool_v3_dto->liquidity_provider_count) {
        free(pool_v3_dto->liquidity_provider_count);
        pool_v3_dto->liquidity_provider_count = NULL;
    }
    free(pool_v3_dto);
}

cJSON *pool_v3_dto_convertToJSON(pool_v3_dto_t *pool_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // pool_v3_dto->entry_time
    if(pool_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", pool_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // pool_v3_dto->recv_time
    if(pool_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", pool_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // pool_v3_dto->block_number
    if(pool_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", pool_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // pool_v3_dto->vid
    if(pool_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", pool_v3_dto->vid) == NULL) {
    goto fail; //Numeric
    }
    }


    // pool_v3_dto->id
    if(pool_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", pool_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->created_at_timestamp
    if(pool_v3_dto->created_at_timestamp) {
    if(cJSON_AddStringToObject(item, "created_at_timestamp", pool_v3_dto->created_at_timestamp) == NULL) {
    goto fail; //Date-Time
    }
    }


    // pool_v3_dto->token_0
    if(pool_v3_dto->token_0) {
    if(cJSON_AddStringToObject(item, "token_0", pool_v3_dto->token_0) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->token_1
    if(pool_v3_dto->token_1) {
    if(cJSON_AddStringToObject(item, "token_1", pool_v3_dto->token_1) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->fee_tier
    if(pool_v3_dto->fee_tier) {
    cJSON *fee_tier_local_JSON = big_integer_convertToJSON(pool_v3_dto->fee_tier);
    if(fee_tier_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fee_tier", fee_tier_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pool_v3_dto->liquidity
    if(pool_v3_dto->liquidity) {
    cJSON *liquidity_local_JSON = big_integer_convertToJSON(pool_v3_dto->liquidity);
    if(liquidity_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "liquidity", liquidity_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pool_v3_dto->sqrt_price
    if(pool_v3_dto->sqrt_price) {
    cJSON *sqrt_price_local_JSON = big_integer_convertToJSON(pool_v3_dto->sqrt_price);
    if(sqrt_price_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "sqrt_price", sqrt_price_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pool_v3_dto->fee_growth_global_0x128
    if(pool_v3_dto->fee_growth_global_0x128) {
    cJSON *fee_growth_global_0x128_local_JSON = big_integer_convertToJSON(pool_v3_dto->fee_growth_global_0x128);
    if(fee_growth_global_0x128_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fee_growth_global_0x128", fee_growth_global_0x128_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pool_v3_dto->fee_growth_global_1x128
    if(pool_v3_dto->fee_growth_global_1x128) {
    cJSON *fee_growth_global_1x128_local_JSON = big_integer_convertToJSON(pool_v3_dto->fee_growth_global_1x128);
    if(fee_growth_global_1x128_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "fee_growth_global_1x128", fee_growth_global_1x128_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pool_v3_dto->token_0_price
    if(pool_v3_dto->token_0_price) {
    if(cJSON_AddStringToObject(item, "token_0_price", pool_v3_dto->token_0_price) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->token_1_price
    if(pool_v3_dto->token_1_price) {
    if(cJSON_AddStringToObject(item, "token_1_price", pool_v3_dto->token_1_price) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->tick
    if(pool_v3_dto->tick) {
    cJSON *tick_local_JSON = big_integer_convertToJSON(pool_v3_dto->tick);
    if(tick_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tick", tick_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pool_v3_dto->observation_index
    if(pool_v3_dto->observation_index) {
    cJSON *observation_index_local_JSON = big_integer_convertToJSON(pool_v3_dto->observation_index);
    if(observation_index_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "observation_index", observation_index_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pool_v3_dto->volume_token_0
    if(pool_v3_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", pool_v3_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->volume_token_1
    if(pool_v3_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", pool_v3_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->volume_usd
    if(pool_v3_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", pool_v3_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->untracked_volume_usd
    if(pool_v3_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", pool_v3_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->fees_usd
    if(pool_v3_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", pool_v3_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->tx_count
    if(pool_v3_dto->tx_count) {
    cJSON *tx_count_local_JSON = big_integer_convertToJSON(pool_v3_dto->tx_count);
    if(tx_count_local_JSON == NULL) {
    goto fail; //model
    }
    cJSON_AddItemToObject(item, "tx_count", tx_count_local_JSON);
    if(item->child == NULL) {
    goto fail;
    }
    }


    // pool_v3_dto->collected_fees_token_0
    if(pool_v3_dto->collected_fees_token_0) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_0", pool_v3_dto->collected_fees_token_0) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->collected_fees_token_1
    if(pool_v3_dto->collected_fees_token_1) {
    if(cJSON_AddStringToObject(item, "collected_fees_token_1", pool_v3_dto->collected_fees_token_1) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->collected_fees_usd
    if(pool_v3_dto->collected_fees_usd) {
    if(cJSON_AddStringToObject(item, "collected_fees_usd", pool_v3_dto->collected_fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->total_value_locked_token_0
    if(pool_v3_dto->total_value_locked_token_0) {
    if(cJSON_AddStringToObject(item, "total_value_locked_token_0", pool_v3_dto->total_value_locked_token_0) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->total_value_locked_token_1
    if(pool_v3_dto->total_value_locked_token_1) {
    if(cJSON_AddStringToObject(item, "total_value_locked_token_1", pool_v3_dto->total_value_locked_token_1) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->total_value_locked_eth
    if(pool_v3_dto->total_value_locked_eth) {
    if(cJSON_AddStringToObject(item, "total_value_locked_eth", pool_v3_dto->total_value_locked_eth) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->total_value_locked_usd
    if(pool_v3_dto->total_value_locked_usd) {
    if(cJSON_AddStringToObject(item, "total_value_locked_usd", pool_v3_dto->total_value_locked_usd) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->total_value_locked_usd_untracked
    if(pool_v3_dto->total_value_locked_usd_untracked) {
    if(cJSON_AddStringToObject(item, "total_value_locked_usd_untracked", pool_v3_dto->total_value_locked_usd_untracked) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->liquidity_provider_count
    if(pool_v3_dto->liquidity_provider_count) {
    if(cJSON_AddStringToObject(item, "liquidity_provider_count", pool_v3_dto->liquidity_provider_count) == NULL) {
    goto fail; //String
    }
    }


    // pool_v3_dto->evaluated_ask
    if(pool_v3_dto->evaluated_ask) {
    if(cJSON_AddNumberToObject(item, "evaluated_ask", pool_v3_dto->evaluated_ask) == NULL) {
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

pool_v3_dto_t *pool_v3_dto_parseFromJSON(cJSON *pool_v3_dtoJSON){

    pool_v3_dto_t *pool_v3_dto_local_var = NULL;

    // define the local variable for pool_v3_dto->fee_tier
    big_integer_t *fee_tier_local_nonprim = NULL;

    // define the local variable for pool_v3_dto->liquidity
    big_integer_t *liquidity_local_nonprim = NULL;

    // define the local variable for pool_v3_dto->sqrt_price
    big_integer_t *sqrt_price_local_nonprim = NULL;

    // define the local variable for pool_v3_dto->fee_growth_global_0x128
    big_integer_t *fee_growth_global_0x128_local_nonprim = NULL;

    // define the local variable for pool_v3_dto->fee_growth_global_1x128
    big_integer_t *fee_growth_global_1x128_local_nonprim = NULL;

    // define the local variable for pool_v3_dto->tick
    big_integer_t *tick_local_nonprim = NULL;

    // define the local variable for pool_v3_dto->observation_index
    big_integer_t *observation_index_local_nonprim = NULL;

    // define the local variable for pool_v3_dto->tx_count
    big_integer_t *tx_count_local_nonprim = NULL;

    // pool_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // pool_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // pool_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // pool_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }

    // pool_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->created_at_timestamp
    cJSON *created_at_timestamp = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "created_at_timestamp");
    if (created_at_timestamp) { 
    if(!cJSON_IsString(created_at_timestamp))
    {
    goto end; //DateTime
    }
    }

    // pool_v3_dto->token_0
    cJSON *token_0 = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "token_0");
    if (token_0) { 
    if(!cJSON_IsString(token_0))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->token_1
    cJSON *token_1 = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "token_1");
    if (token_1) { 
    if(!cJSON_IsString(token_1))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->fee_tier
    cJSON *fee_tier = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "fee_tier");
    if (fee_tier) { 
    fee_tier_local_nonprim = big_integer_parseFromJSON(fee_tier); //nonprimitive
    }

    // pool_v3_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "liquidity");
    if (liquidity) { 
    liquidity_local_nonprim = big_integer_parseFromJSON(liquidity); //nonprimitive
    }

    // pool_v3_dto->sqrt_price
    cJSON *sqrt_price = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "sqrt_price");
    if (sqrt_price) { 
    sqrt_price_local_nonprim = big_integer_parseFromJSON(sqrt_price); //nonprimitive
    }

    // pool_v3_dto->fee_growth_global_0x128
    cJSON *fee_growth_global_0x128 = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "fee_growth_global_0x128");
    if (fee_growth_global_0x128) { 
    fee_growth_global_0x128_local_nonprim = big_integer_parseFromJSON(fee_growth_global_0x128); //nonprimitive
    }

    // pool_v3_dto->fee_growth_global_1x128
    cJSON *fee_growth_global_1x128 = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "fee_growth_global_1x128");
    if (fee_growth_global_1x128) { 
    fee_growth_global_1x128_local_nonprim = big_integer_parseFromJSON(fee_growth_global_1x128); //nonprimitive
    }

    // pool_v3_dto->token_0_price
    cJSON *token_0_price = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "token_0_price");
    if (token_0_price) { 
    if(!cJSON_IsString(token_0_price))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->token_1_price
    cJSON *token_1_price = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "token_1_price");
    if (token_1_price) { 
    if(!cJSON_IsString(token_1_price))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->tick
    cJSON *tick = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "tick");
    if (tick) { 
    tick_local_nonprim = big_integer_parseFromJSON(tick); //nonprimitive
    }

    // pool_v3_dto->observation_index
    cJSON *observation_index = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "observation_index");
    if (observation_index) { 
    observation_index_local_nonprim = big_integer_parseFromJSON(observation_index); //nonprimitive
    }

    // pool_v3_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "tx_count");
    if (tx_count) { 
    tx_count_local_nonprim = big_integer_parseFromJSON(tx_count); //nonprimitive
    }

    // pool_v3_dto->collected_fees_token_0
    cJSON *collected_fees_token_0 = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "collected_fees_token_0");
    if (collected_fees_token_0) { 
    if(!cJSON_IsString(collected_fees_token_0))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->collected_fees_token_1
    cJSON *collected_fees_token_1 = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "collected_fees_token_1");
    if (collected_fees_token_1) { 
    if(!cJSON_IsString(collected_fees_token_1))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->collected_fees_usd
    cJSON *collected_fees_usd = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "collected_fees_usd");
    if (collected_fees_usd) { 
    if(!cJSON_IsString(collected_fees_usd))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->total_value_locked_token_0
    cJSON *total_value_locked_token_0 = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "total_value_locked_token_0");
    if (total_value_locked_token_0) { 
    if(!cJSON_IsString(total_value_locked_token_0))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->total_value_locked_token_1
    cJSON *total_value_locked_token_1 = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "total_value_locked_token_1");
    if (total_value_locked_token_1) { 
    if(!cJSON_IsString(total_value_locked_token_1))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->total_value_locked_eth
    cJSON *total_value_locked_eth = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "total_value_locked_eth");
    if (total_value_locked_eth) { 
    if(!cJSON_IsString(total_value_locked_eth))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->total_value_locked_usd
    cJSON *total_value_locked_usd = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "total_value_locked_usd");
    if (total_value_locked_usd) { 
    if(!cJSON_IsString(total_value_locked_usd))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->total_value_locked_usd_untracked
    cJSON *total_value_locked_usd_untracked = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "total_value_locked_usd_untracked");
    if (total_value_locked_usd_untracked) { 
    if(!cJSON_IsString(total_value_locked_usd_untracked))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->liquidity_provider_count
    cJSON *liquidity_provider_count = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "liquidity_provider_count");
    if (liquidity_provider_count) { 
    if(!cJSON_IsString(liquidity_provider_count))
    {
    goto end; //String
    }
    }

    // pool_v3_dto->evaluated_ask
    cJSON *evaluated_ask = cJSON_GetObjectItemCaseSensitive(pool_v3_dtoJSON, "evaluated_ask");
    if (evaluated_ask) { 
    if(!cJSON_IsNumber(evaluated_ask))
    {
    goto end; //Numeric
    }
    }


    pool_v3_dto_local_var = pool_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        vid ? vid->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        created_at_timestamp ? strdup(created_at_timestamp->valuestring) : NULL,
        token_0 ? strdup(token_0->valuestring) : NULL,
        token_1 ? strdup(token_1->valuestring) : NULL,
        fee_tier ? fee_tier_local_nonprim : NULL,
        liquidity ? liquidity_local_nonprim : NULL,
        sqrt_price ? sqrt_price_local_nonprim : NULL,
        fee_growth_global_0x128 ? fee_growth_global_0x128_local_nonprim : NULL,
        fee_growth_global_1x128 ? fee_growth_global_1x128_local_nonprim : NULL,
        token_0_price ? strdup(token_0_price->valuestring) : NULL,
        token_1_price ? strdup(token_1_price->valuestring) : NULL,
        tick ? tick_local_nonprim : NULL,
        observation_index ? observation_index_local_nonprim : NULL,
        volume_token_0 ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd ? strdup(untracked_volume_usd->valuestring) : NULL,
        fees_usd ? strdup(fees_usd->valuestring) : NULL,
        tx_count ? tx_count_local_nonprim : NULL,
        collected_fees_token_0 ? strdup(collected_fees_token_0->valuestring) : NULL,
        collected_fees_token_1 ? strdup(collected_fees_token_1->valuestring) : NULL,
        collected_fees_usd ? strdup(collected_fees_usd->valuestring) : NULL,
        total_value_locked_token_0 ? strdup(total_value_locked_token_0->valuestring) : NULL,
        total_value_locked_token_1 ? strdup(total_value_locked_token_1->valuestring) : NULL,
        total_value_locked_eth ? strdup(total_value_locked_eth->valuestring) : NULL,
        total_value_locked_usd ? strdup(total_value_locked_usd->valuestring) : NULL,
        total_value_locked_usd_untracked ? strdup(total_value_locked_usd_untracked->valuestring) : NULL,
        liquidity_provider_count ? strdup(liquidity_provider_count->valuestring) : NULL,
        evaluated_ask ? evaluated_ask->valuedouble : 0
        );

    return pool_v3_dto_local_var;
end:
    if (fee_tier_local_nonprim) {
        big_integer_free(fee_tier_local_nonprim);
        fee_tier_local_nonprim = NULL;
    }
    if (liquidity_local_nonprim) {
        big_integer_free(liquidity_local_nonprim);
        liquidity_local_nonprim = NULL;
    }
    if (sqrt_price_local_nonprim) {
        big_integer_free(sqrt_price_local_nonprim);
        sqrt_price_local_nonprim = NULL;
    }
    if (fee_growth_global_0x128_local_nonprim) {
        big_integer_free(fee_growth_global_0x128_local_nonprim);
        fee_growth_global_0x128_local_nonprim = NULL;
    }
    if (fee_growth_global_1x128_local_nonprim) {
        big_integer_free(fee_growth_global_1x128_local_nonprim);
        fee_growth_global_1x128_local_nonprim = NULL;
    }
    if (tick_local_nonprim) {
        big_integer_free(tick_local_nonprim);
        tick_local_nonprim = NULL;
    }
    if (observation_index_local_nonprim) {
        big_integer_free(observation_index_local_nonprim);
        observation_index_local_nonprim = NULL;
    }
    if (tx_count_local_nonprim) {
        big_integer_free(tx_count_local_nonprim);
        tx_count_local_nonprim = NULL;
    }
    return NULL;

}