#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "tick_day_data_v3_dto.h"



tick_day_data_v3_dto_t *tick_day_data_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int date,
    char *pool,
    char *tick,
    char *liquidity_gross,
    char *liquidity_net,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *fees_usd,
    char *fee_growth_outside_0x128,
    char *fee_growth_outside_1x128,
    long vid
    ) {
    tick_day_data_v3_dto_t *tick_day_data_v3_dto_local_var = malloc(sizeof(tick_day_data_v3_dto_t));
    if (!tick_day_data_v3_dto_local_var) {
        return NULL;
    }
    tick_day_data_v3_dto_local_var->entry_time = entry_time;
    tick_day_data_v3_dto_local_var->recv_time = recv_time;
    tick_day_data_v3_dto_local_var->block_number = block_number;
    tick_day_data_v3_dto_local_var->id = id;
    tick_day_data_v3_dto_local_var->date = date;
    tick_day_data_v3_dto_local_var->pool = pool;
    tick_day_data_v3_dto_local_var->tick = tick;
    tick_day_data_v3_dto_local_var->liquidity_gross = liquidity_gross;
    tick_day_data_v3_dto_local_var->liquidity_net = liquidity_net;
    tick_day_data_v3_dto_local_var->volume_token_0 = volume_token_0;
    tick_day_data_v3_dto_local_var->volume_token_1 = volume_token_1;
    tick_day_data_v3_dto_local_var->volume_usd = volume_usd;
    tick_day_data_v3_dto_local_var->fees_usd = fees_usd;
    tick_day_data_v3_dto_local_var->fee_growth_outside_0x128 = fee_growth_outside_0x128;
    tick_day_data_v3_dto_local_var->fee_growth_outside_1x128 = fee_growth_outside_1x128;
    tick_day_data_v3_dto_local_var->vid = vid;

    return tick_day_data_v3_dto_local_var;
}


void tick_day_data_v3_dto_free(tick_day_data_v3_dto_t *tick_day_data_v3_dto) {
    if(NULL == tick_day_data_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (tick_day_data_v3_dto->entry_time) {
        free(tick_day_data_v3_dto->entry_time);
        tick_day_data_v3_dto->entry_time = NULL;
    }
    if (tick_day_data_v3_dto->recv_time) {
        free(tick_day_data_v3_dto->recv_time);
        tick_day_data_v3_dto->recv_time = NULL;
    }
    if (tick_day_data_v3_dto->id) {
        free(tick_day_data_v3_dto->id);
        tick_day_data_v3_dto->id = NULL;
    }
    if (tick_day_data_v3_dto->pool) {
        free(tick_day_data_v3_dto->pool);
        tick_day_data_v3_dto->pool = NULL;
    }
    if (tick_day_data_v3_dto->tick) {
        free(tick_day_data_v3_dto->tick);
        tick_day_data_v3_dto->tick = NULL;
    }
    if (tick_day_data_v3_dto->liquidity_gross) {
        free(tick_day_data_v3_dto->liquidity_gross);
        tick_day_data_v3_dto->liquidity_gross = NULL;
    }
    if (tick_day_data_v3_dto->liquidity_net) {
        free(tick_day_data_v3_dto->liquidity_net);
        tick_day_data_v3_dto->liquidity_net = NULL;
    }
    if (tick_day_data_v3_dto->volume_token_0) {
        free(tick_day_data_v3_dto->volume_token_0);
        tick_day_data_v3_dto->volume_token_0 = NULL;
    }
    if (tick_day_data_v3_dto->volume_token_1) {
        free(tick_day_data_v3_dto->volume_token_1);
        tick_day_data_v3_dto->volume_token_1 = NULL;
    }
    if (tick_day_data_v3_dto->volume_usd) {
        free(tick_day_data_v3_dto->volume_usd);
        tick_day_data_v3_dto->volume_usd = NULL;
    }
    if (tick_day_data_v3_dto->fees_usd) {
        free(tick_day_data_v3_dto->fees_usd);
        tick_day_data_v3_dto->fees_usd = NULL;
    }
    if (tick_day_data_v3_dto->fee_growth_outside_0x128) {
        free(tick_day_data_v3_dto->fee_growth_outside_0x128);
        tick_day_data_v3_dto->fee_growth_outside_0x128 = NULL;
    }
    if (tick_day_data_v3_dto->fee_growth_outside_1x128) {
        free(tick_day_data_v3_dto->fee_growth_outside_1x128);
        tick_day_data_v3_dto->fee_growth_outside_1x128 = NULL;
    }
    free(tick_day_data_v3_dto);
}

cJSON *tick_day_data_v3_dto_convertToJSON(tick_day_data_v3_dto_t *tick_day_data_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // tick_day_data_v3_dto->entry_time
    if(tick_day_data_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", tick_day_data_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // tick_day_data_v3_dto->recv_time
    if(tick_day_data_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", tick_day_data_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // tick_day_data_v3_dto->block_number
    if(tick_day_data_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", tick_day_data_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // tick_day_data_v3_dto->id
    if(tick_day_data_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", tick_day_data_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->date
    if(tick_day_data_v3_dto->date) {
    if(cJSON_AddNumberToObject(item, "date", tick_day_data_v3_dto->date) == NULL) {
    goto fail; //Numeric
    }
    }


    // tick_day_data_v3_dto->pool
    if(tick_day_data_v3_dto->pool) {
    if(cJSON_AddStringToObject(item, "pool", tick_day_data_v3_dto->pool) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->tick
    if(tick_day_data_v3_dto->tick) {
    if(cJSON_AddStringToObject(item, "tick", tick_day_data_v3_dto->tick) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->liquidity_gross
    if(tick_day_data_v3_dto->liquidity_gross) {
    if(cJSON_AddStringToObject(item, "liquidity_gross", tick_day_data_v3_dto->liquidity_gross) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->liquidity_net
    if(tick_day_data_v3_dto->liquidity_net) {
    if(cJSON_AddStringToObject(item, "liquidity_net", tick_day_data_v3_dto->liquidity_net) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->volume_token_0
    if(tick_day_data_v3_dto->volume_token_0) {
    if(cJSON_AddStringToObject(item, "volume_token_0", tick_day_data_v3_dto->volume_token_0) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->volume_token_1
    if(tick_day_data_v3_dto->volume_token_1) {
    if(cJSON_AddStringToObject(item, "volume_token_1", tick_day_data_v3_dto->volume_token_1) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->volume_usd
    if(tick_day_data_v3_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", tick_day_data_v3_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->fees_usd
    if(tick_day_data_v3_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", tick_day_data_v3_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->fee_growth_outside_0x128
    if(tick_day_data_v3_dto->fee_growth_outside_0x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_outside_0x128", tick_day_data_v3_dto->fee_growth_outside_0x128) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->fee_growth_outside_1x128
    if(tick_day_data_v3_dto->fee_growth_outside_1x128) {
    if(cJSON_AddStringToObject(item, "fee_growth_outside_1x128", tick_day_data_v3_dto->fee_growth_outside_1x128) == NULL) {
    goto fail; //String
    }
    }


    // tick_day_data_v3_dto->vid
    if(tick_day_data_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", tick_day_data_v3_dto->vid) == NULL) {
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

tick_day_data_v3_dto_t *tick_day_data_v3_dto_parseFromJSON(cJSON *tick_day_data_v3_dtoJSON){

    tick_day_data_v3_dto_t *tick_day_data_v3_dto_local_var = NULL;

    // tick_day_data_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // tick_day_data_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // tick_day_data_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // tick_day_data_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->date
    cJSON *date = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "date");
    if (date) { 
    if(!cJSON_IsNumber(date))
    {
    goto end; //Numeric
    }
    }

    // tick_day_data_v3_dto->pool
    cJSON *pool = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "pool");
    if (pool) { 
    if(!cJSON_IsString(pool))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->tick
    cJSON *tick = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "tick");
    if (tick) { 
    if(!cJSON_IsString(tick))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->liquidity_gross
    cJSON *liquidity_gross = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "liquidity_gross");
    if (liquidity_gross) { 
    if(!cJSON_IsString(liquidity_gross))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->liquidity_net
    cJSON *liquidity_net = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "liquidity_net");
    if (liquidity_net) { 
    if(!cJSON_IsString(liquidity_net))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->volume_token_0
    cJSON *volume_token_0 = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "volume_token_0");
    if (volume_token_0) { 
    if(!cJSON_IsString(volume_token_0))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->volume_token_1
    cJSON *volume_token_1 = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "volume_token_1");
    if (volume_token_1) { 
    if(!cJSON_IsString(volume_token_1))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->fee_growth_outside_0x128
    cJSON *fee_growth_outside_0x128 = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "fee_growth_outside_0x128");
    if (fee_growth_outside_0x128) { 
    if(!cJSON_IsString(fee_growth_outside_0x128))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->fee_growth_outside_1x128
    cJSON *fee_growth_outside_1x128 = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "fee_growth_outside_1x128");
    if (fee_growth_outside_1x128) { 
    if(!cJSON_IsString(fee_growth_outside_1x128))
    {
    goto end; //String
    }
    }

    // tick_day_data_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(tick_day_data_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    tick_day_data_v3_dto_local_var = tick_day_data_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        date ? date->valuedouble : 0,
        pool ? strdup(pool->valuestring) : NULL,
        tick ? strdup(tick->valuestring) : NULL,
        liquidity_gross ? strdup(liquidity_gross->valuestring) : NULL,
        liquidity_net ? strdup(liquidity_net->valuestring) : NULL,
        volume_token_0 ? strdup(volume_token_0->valuestring) : NULL,
        volume_token_1 ? strdup(volume_token_1->valuestring) : NULL,
        volume_usd ? strdup(volume_usd->valuestring) : NULL,
        fees_usd ? strdup(fees_usd->valuestring) : NULL,
        fee_growth_outside_0x128 ? strdup(fee_growth_outside_0x128->valuestring) : NULL,
        fee_growth_outside_1x128 ? strdup(fee_growth_outside_1x128->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return tick_day_data_v3_dto_local_var;
end:
    return NULL;

}
