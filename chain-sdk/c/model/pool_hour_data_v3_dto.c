#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "pool_hour_data_v3_dto.h"



pool_hour_data_v3_dto_t *pool_hour_data_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int period_start_unix,
    char *pool,
    char *liquidity,
    char *sqrt_price,
    char *token_0_price,
    char *token_1_price,
    char *tick,
    char *fee_growth_global_0x128,
    char *fee_growth_global_1x128,
    char *tvl_usd,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *fees_usd,
    char *tx_count,
    char *open,
    char *high,
    char *low,
    char *close,
    long vid
    ) {
    pool_hour_data_v3_dto_t *pool_hour_data_v3_dto_local_var = malloc(sizeof(pool_hour_data_v3_dto_t));
    if (!pool_hour_data_v3_dto_local_var) {
        return NULL;
    }
    pool_hour_data_v3_dto_local_var->entry_time = entry_time;
    pool_hour_data_v3_dto_local_var->recv_time = recv_time;
    pool_hour_data_v3_dto_local_var->block_number = block_number;
    pool_hour_data_v3_dto_local_var->id = id;
    pool_hour_data_v3_dto_local_var->period_start_unix = period_start_unix;
    pool_hour_data_v3_dto_local_var->pool = pool;
    pool_hour_data_v3_dto_local_var->liquidity = liquidity;
    pool_hour_data_v3_dto_local_var->sqrt_price = sqrt_price;
    pool_hour_data_v3_dto_local_var->token_0_price = token_0_price;
    pool_hour_data_v3_dto_local_var->token_1_price = token_1_price;
    pool_hour_data_v3_dto_local_var->tick = tick;
    pool_hour_data_v3_dto_local_var->fee_growth_global_0x128 = fee_growth_global_0x128;
    pool_hour_data_v3_dto_local_var->fee_growth_global_1x128 = fee_growth_global_1x128;
    pool_hour_data_v3_dto_local_var->tvl_usd = tvl_usd;
    pool_hour_data_v3_dto_local_var->volume_token_0 = volume_token_0;
    pool_hour_data_v3_dto_local_var->volume_token_1 = volume_token_1;
    pool_hour_data_v3_dto_local_var->volume_usd = volume_usd;
    pool_hour_data_v3_dto_local_var->fees_usd = fees_usd;
    pool_hour_data_v3_dto_local_var->tx_count = tx_count;
    pool_hour_data_v3_dto_local_var->open = open;
    pool_hour_data_v3_dto_local_var->high = high;
    pool_hour_data_v3_dto_local_var->low = low;
    pool_hour_data_v3_dto_local_var->close = close;
    pool_hour_data_v3_dto_local_var->vid = vid;

    return pool_hour_data_v3_dto_local_var;
}


void pool_hour_data_v3_dto_free(pool_hour_data_v3_dto_t *pool_hour_data_v3_dto) {
    if(NULL == pool_hour_data_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (pool_hour_data_v3_dto->entry_time) {
        free(pool_hour_data_v3_dto->entry_time);
        pool_hour_data_v3_dto->entry_time = NULL;
    }
    if (pool_hour_data_v3_dto->recv_time) {
        free(pool_hour_data_v3_dto->recv_time);
        pool_hour_data_v3_dto->recv_time = NULL;
    }
    if (pool_hour_data_v3_dto->id) {
        free(pool_hour_data_v3_dto->id);
        pool_hour_data_v3_dto->id = NULL;
    }
    if (pool_hour_data_v3_dto->pool) {
        free(pool_hour_data_v3_dto->pool);
        pool_hour_data_v3_dto->pool = NULL;
    }
    if (pool_hour_data_v3_dto->liquidity) {
        free(pool_hour_data_v3_dto->liquidity);
        pool_hour_data_v3_dto->liquidity = NULL;
    }
    if (pool_hour_data_v3_dto->sqrt_price) {
        free(pool_hour_data_v3_dto->sqrt_price);
        pool_hour_data_v3_dto->sqrt_price = NULL;
    }
    if (pool_hour_data_v3_dto->token_0_price) {
        free(pool_hour_data_v3_dto->token_0_price);
        pool_hour_data_v3_dto->token_0_price = NULL;
    }
    if (pool_hour_data_v3_dto->token_1_price) {
        free(pool_hour_data_v3_dto->token_1_price);
        pool_hour_data_v3_dto->token_1_price = NULL;
    }
    if (pool_hour_data_v3_dto->tick) {
        free(pool_hour_data_v3_dto->tick);
        pool_hour_data_v3_dto->tick = NULL;
    }
    if (pool_hour_data_v3_dto->fee_growth_global_0x128) {
        free(pool_hour_data_v3_dto->fee_growth_global_0x128);
        pool_hour_data_v3_dto->fee_growth_global_0x128 = NULL;
    }
    if (pool_hour_data_v3_dto->fee_growth_global_1x128) {
        free(pool_hour_data_v3_dto->fee_growth_global_1x128);
        pool_hour_data_v3_dto->fee_growth_global_1x128 = NULL;
    }
    if (pool_hour_data_v3_dto->tvl_usd) {
        free(pool_hour_data_v3_dto->tvl_usd);
        pool_hour_data_v3_dto->tvl_usd = NULL;
    }
    if (pool_hour_data_v3_dto->volume_token_0) {
        free(pool_hour_data_v3_dto->volume_token_0);
        pool_hour_data_v3_dto->volume_token_0 = NULL;
    }
    if (pool_hour_data_v3_dto->volume_token_1) {
        free(pool_hour_data_v3_dto->volume_token_1);
        pool_hour_data_v3_dto->volume_token_1 = NULL;
    }
    if (pool_hour_data_v3_dto->volume_usd) {
        free(pool_hour_data_v3_dto->volume_usd);
        pool_hour_data_v3_dto->volume_usd = NULL;
    }
    if (pool_hour_data_v3_dto->fees_usd) {
        free(pool_hour_data_v3_dto->fees_usd);
        pool_hour_data_v3_dto->fees_usd = NULL;
    }
    if (pool_hour_data_v3_dto->tx_count) {
        free(pool_hour_data_v3_dto->tx_count);
        pool_hour_data_v3_dto->tx_count = NULL;
    }
    if (pool_hour_data_v3_dto->open) {
        free(pool_hour_data_v3_dto->open);
        pool_hour_data_v3_dto->open = NULL;
    }
    if (pool_hour_data_v3_dto->high) {
        free(pool_hour_data_v3_dto->high);
        pool_hour_data_v3_dto->high = NULL;
    }
    if (pool_hour_data_v3_dto->low) {
        free(pool_hour_data_v3_dto->low);
        pool_hour_data_v3_dto->low = NULL;
    }
    if (pool_hour_data_v3_dto->close) {
        free(pool_hour_data_v3_dto->close);
        pool_hour_data_v3_dto->close = NULL;
    }
    free(pool_hour_data_v3_dto);
}

cJSON *pool_hour_data_v3_dto_convertToJSON(pool_hour_data_v3_dto_t *pool_hour_data_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // pool_hour_data_v3_dto->entry_time
    if(pool_hour_data_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", pool_hour_data_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // pool_hour_data_v3_dto->recv_time
    if(pool_hour_data_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", pool_hour_data_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // pool_hour_data_v3_dto->block_number
    if(pool_hour_data_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", pool_hour_data_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // pool_hour_data_v3_dto->id
    if(pool_hour_data_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", pool_hour_data_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->period_start_unix
    if(pool_hour_data_v3_dto->period_start_unix) {
    if(cJSON_AddNumberToObject(item, "period_start_unix", pool_hour_data_v3_dto->period_start_unix) == NULL) {
    goto fail; //Numeric
    }
    }


    // pool_hour_data_v3_dto->pool
    if(pool_hour_data_v3_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", pool_hour_data_v3_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->liquidity
    if(pool_hour_data_v3_dto->liquidity) {
    if(cJSON_AddStringToObject(item, "liquidity", pool_hour_data_v3_dto->liquidity) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->sqrt_price
    if(pool_hour_data_v3_dto->sqrt_price) {
    if(cJSON_AddStringToObject(item, "sqrt_price", pool_hour_data_v3_dto->sqrt_price) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->token_0_price
    if(pool_hour_data_v3_dto->token_0_price) {
    if(cJSON_AddStringToObject(item, "token_0_price", pool_hour_data_v3_dto->token_0_price) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->token_1_price
    if(pool_hour_data_v3_dto->token_1_price) {
    if(cJSON_AddStringToObject(item, "token_1_price", pool_hour_data_v3_dto->token_1_price) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->tick
    if(pool_hour_data_v3_dto->tick) {
    if(cJSON_AddStringToObject(item, "tick", pool_hour_data_v3_dto->tick) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->fee_growth_global_0x128
    if(pool_hour_data_v3_dto->fee_growth_global_0x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_global_0x128", pool_hour_data_v3_dto->fee_growth_global_0x128) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->fee_growth_global_1x128
    if(pool_hour_data_v3_dto->fee_growth_global_1x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_global_1x128", pool_hour_data_v3_dto->fee_growth_global_1x128) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->tvl_usd
    if(pool_hour_data_v3_dto->tvl_usd) {
    if(cJSON_AddStringToObject(item, "tvl_usd", pool_hour_data_v3_dto->tvl_usd) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->volume_token_0
    if(pool_hour_data_v3_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", pool_hour_data_v3_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->volume_token_1
    if(pool_hour_data_v3_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", pool_hour_data_v3_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->volume_usd
    if(pool_hour_data_v3_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", pool_hour_data_v3_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->fees_usd
    if(pool_hour_data_v3_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", pool_hour_data_v3_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->tx_count
    if(pool_hour_data_v3_dto->tx_count) {
    if(cJSON_AddStringToObject(item, "tx_count", pool_hour_data_v3_dto->tx_count) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->open
    if(pool_hour_data_v3_dto->open) {
    if(cJSON_AddStringToObject(item, "open", pool_hour_data_v3_dto->open) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->high
    if(pool_hour_data_v3_dto->high) {
    if(cJSON_AddStringToObject(item, "high", pool_hour_data_v3_dto->high) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->low
    if(pool_hour_data_v3_dto->low) {
    if(cJSON_AddStringToObject(item, "low", pool_hour_data_v3_dto->low) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->close
    if(pool_hour_data_v3_dto->close) {
    if(cJSON_AddStringToObject(item, "close", pool_hour_data_v3_dto->close) == NULL) {
    goto fail; //String
    }
    }


    // pool_hour_data_v3_dto->vid
    if(pool_hour_data_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", pool_hour_data_v3_dto->vid) == NULL) {
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

pool_hour_data_v3_dto_t *pool_hour_data_v3_dto_parseFromJSON(cJSON *pool_hour_data_v3_dtoJSON){

    pool_hour_data_v3_dto_t *pool_hour_data_v3_dto_local_var = NULL;

    // pool_hour_data_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // pool_hour_data_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // pool_hour_data_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // pool_hour_data_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->period_start_unix
    cJSON *period_start_unix = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "period_start_unix");
    if (period_start_unix) { 
    if(!cJSON_IsNumber(period_start_unix))
    {
    goto end; //Numeric
    }
    }

    // pool_hour_data_v3_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->liquidity
    cJSON *liquidity = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "liquidity");
    if (liquidity) { 
    if(!cJSON_IsString(liquidity))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->sqrt_price
    cJSON *sqrt_price = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "sqrt_price");
    if (sqrt_price) { 
    if(!cJSON_IsString(sqrt_price))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->token_0_price
    cJSON *token_0_price = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "token_0_price");
    if (token_0_price) { 
    if(!cJSON_IsString(token_0_price))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->token_1_price
    cJSON *token_1_price = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "token_1_price");
    if (token_1_price) { 
    if(!cJSON_IsString(token_1_price))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->tick
    cJSON *tick = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "tick");
    if (tick) { 
    if(!cJSON_IsString(tick))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->fee_growth_global_0x128
    cJSON *fee_growth_global_0x128 = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "fee_growth_global_0x128");
    if (fee_growth_global_0x128) { 
    if(!cJSON_IsString(fee_growth_global_0x128))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->fee_growth_global_1x128
    cJSON *fee_growth_global_1x128 = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "fee_growth_global_1x128");
    if (fee_growth_global_1x128) { 
    if(!cJSON_IsString(fee_growth_global_1x128))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->tvl_usd
    cJSON *tvl_usd = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "tvl_usd");
    if (tvl_usd) { 
    if(!cJSON_IsString(tvl_usd))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->tx_count
    cJSON *tx_count = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "tx_count");
    if (tx_count) { 
    if(!cJSON_IsString(tx_count))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->open
    cJSON *open = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "open");
    if (open) { 
    if(!cJSON_IsString(open))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->high
    cJSON *high = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "high");
    if (high) { 
    if(!cJSON_IsString(high))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->low
    cJSON *low = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "low");
    if (low) { 
    if(!cJSON_IsString(low))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->close
    cJSON *close = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "close");
    if (close) { 
    if(!cJSON_IsString(close))
    {
    goto end; //String
    }
    }

    // pool_hour_data_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(pool_hour_data_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    pool_hour_data_v3_dto_local_var = pool_hour_data_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        period_start_unix ? period_start_unix->valuedouble : 0,
        pool ? strdup(pool->valuestring) : NULL,
        liquidity ? strdup(liquidity->valuestring) : NULL,
        sqrt_price ? strdup(sqrt_price->valuestring) : NULL,
        token_0_price ? strdup(token_0_price->valuestring) : NULL,
        token_1_price ? strdup(token_1_price->valuestring) : NULL,
        tick ? strdup(tick->valuestring) : NULL,
        fee_growth_global_0x128 ? strdup(fee_growth_global_0x128->valuestring) : NULL,
        fee_growth_global_1x128 ? strdup(fee_growth_global_1x128->valuestring) : NULL,
        tvl_usd ? strdup(tvl_usd->valuestring) : NULL,
        volume_token_0 ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd ? strdup(volume_usd->valuestring) : NULL,
        fees_usd ? strdup(fees_usd->valuestring) : NULL,
        tx_count ? strdup(tx_count->valuestring) : NULL,
        open ? strdup(open->valuestring) : NULL,
        high ? strdup(high->valuestring) : NULL,
        low ? strdup(low->valuestring) : NULL,
        close ? strdup(close->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return pool_hour_data_v3_dto_local_var;
end:
    return NULL;

}
