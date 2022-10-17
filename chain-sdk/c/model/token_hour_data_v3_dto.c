#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "token_hour_data_v3_dto.h"



token_hour_data_v3_dto_t *token_hour_data_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    int period_start_unix,
    char *token,
    char *volume,
    char *volume_usd,
    char *untracked_volume_usd,
    char *total_value_locked,
    char *total_value_locked_usd,
    char *price_usd,
    char *fees_usd,
    char *open,
    char *high,
    char *low,
    char *close,
    long vid
    ) {
    token_hour_data_v3_dto_t *token_hour_data_v3_dto_local_var = malloc(sizeof(token_hour_data_v3_dto_t));
    if (!token_hour_data_v3_dto_local_var) {
        return NULL;
    }
    token_hour_data_v3_dto_local_var->entry_time = entry_time;
    token_hour_data_v3_dto_local_var->recv_time = recv_time;
    token_hour_data_v3_dto_local_var->block_number = block_number;
    token_hour_data_v3_dto_local_var->id = id;
    token_hour_data_v3_dto_local_var->period_start_unix = period_start_unix;
    token_hour_data_v3_dto_local_var->token = token;
    token_hour_data_v3_dto_local_var->volume = volume;
    token_hour_data_v3_dto_local_var->volume_usd = volume_usd;
    token_hour_data_v3_dto_local_var->untracked_volume_usd = untracked_volume_usd;
    token_hour_data_v3_dto_local_var->total_value_locked = total_value_locked;
    token_hour_data_v3_dto_local_var->total_value_locked_usd = total_value_locked_usd;
    token_hour_data_v3_dto_local_var->price_usd = price_usd;
    token_hour_data_v3_dto_local_var->fees_usd = fees_usd;
    token_hour_data_v3_dto_local_var->open = open;
    token_hour_data_v3_dto_local_var->high = high;
    token_hour_data_v3_dto_local_var->low = low;
    token_hour_data_v3_dto_local_var->close = close;
    token_hour_data_v3_dto_local_var->vid = vid;

    return token_hour_data_v3_dto_local_var;
}


void token_hour_data_v3_dto_free(token_hour_data_v3_dto_t *token_hour_data_v3_dto) {
    if(NULL == token_hour_data_v3_dto){
        return ;
    }
    listEntry_t *listEntry;
    if (token_hour_data_v3_dto->entry_time) {
        free(token_hour_data_v3_dto->entry_time);
        token_hour_data_v3_dto->entry_time = NULL;
    }
    if (token_hour_data_v3_dto->recv_time) {
        free(token_hour_data_v3_dto->recv_time);
        token_hour_data_v3_dto->recv_time = NULL;
    }
    if (token_hour_data_v3_dto->id) {
        free(token_hour_data_v3_dto->id);
        token_hour_data_v3_dto->id = NULL;
    }
    if (token_hour_data_v3_dto->token) {
        free(token_hour_data_v3_dto->token);
        token_hour_data_v3_dto->token = NULL;
    }
    if (token_hour_data_v3_dto->volume) {
        free(token_hour_data_v3_dto->volume);
        token_hour_data_v3_dto->volume = NULL;
    }
    if (token_hour_data_v3_dto->volume_usd) {
        free(token_hour_data_v3_dto->volume_usd);
        token_hour_data_v3_dto->volume_usd = NULL;
    }
    if (token_hour_data_v3_dto->untracked_volume_usd) {
        free(token_hour_data_v3_dto->untracked_volume_usd);
        token_hour_data_v3_dto->untracked_volume_usd = NULL;
    }
    if (token_hour_data_v3_dto->total_value_locked) {
        free(token_hour_data_v3_dto->total_value_locked);
        token_hour_data_v3_dto->total_value_locked = NULL;
    }
    if (token_hour_data_v3_dto->total_value_locked_usd) {
        free(token_hour_data_v3_dto->total_value_locked_usd);
        token_hour_data_v3_dto->total_value_locked_usd = NULL;
    }
    if (token_hour_data_v3_dto->price_usd) {
        free(token_hour_data_v3_dto->price_usd);
        token_hour_data_v3_dto->price_usd = NULL;
    }
    if (token_hour_data_v3_dto->fees_usd) {
        free(token_hour_data_v3_dto->fees_usd);
        token_hour_data_v3_dto->fees_usd = NULL;
    }
    if (token_hour_data_v3_dto->open) {
        free(token_hour_data_v3_dto->open);
        token_hour_data_v3_dto->open = NULL;
    }
    if (token_hour_data_v3_dto->high) {
        free(token_hour_data_v3_dto->high);
        token_hour_data_v3_dto->high = NULL;
    }
    if (token_hour_data_v3_dto->low) {
        free(token_hour_data_v3_dto->low);
        token_hour_data_v3_dto->low = NULL;
    }
    if (token_hour_data_v3_dto->close) {
        free(token_hour_data_v3_dto->close);
        token_hour_data_v3_dto->close = NULL;
    }
    free(token_hour_data_v3_dto);
}

cJSON *token_hour_data_v3_dto_convertToJSON(token_hour_data_v3_dto_t *token_hour_data_v3_dto) {
    cJSON *item = cJSON_CreateObject();

    // token_hour_data_v3_dto->entry_time
    if(token_hour_data_v3_dto->entry_time) {
    if(cJSON_AddStringToObject(item, "entry_time", token_hour_data_v3_dto->entry_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // token_hour_data_v3_dto->recv_time
    if(token_hour_data_v3_dto->recv_time) {
    if(cJSON_AddStringToObject(item, "recv_time", token_hour_data_v3_dto->recv_time) == NULL) {
    goto fail; //Date-Time
    }
    }


    // token_hour_data_v3_dto->block_number
    if(token_hour_data_v3_dto->block_number) {
    if(cJSON_AddNumberToObject(item, "block_number", token_hour_data_v3_dto->block_number) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_hour_data_v3_dto->id
    if(token_hour_data_v3_dto->id) {
    if(cJSON_AddStringToObject(item, "id", token_hour_data_v3_dto->id) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->period_start_unix
    if(token_hour_data_v3_dto->period_start_unix) {
    if(cJSON_AddNumberToObject(item, "period_start_unix", token_hour_data_v3_dto->period_start_unix) == NULL) {
    goto fail; //Numeric
    }
    }


    // token_hour_data_v3_dto->token
    if(token_hour_data_v3_dto->token) {
    if(cJSON_AddStringToObject(item, "token", token_hour_data_v3_dto->token) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->volume
    if(token_hour_data_v3_dto->volume) {
    if(cJSON_AddStringToObject(item, "volume", token_hour_data_v3_dto->volume) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->volume_usd
    if(token_hour_data_v3_dto->volume_usd) {
    if(cJSON_AddStringToObject(item, "volume_usd", token_hour_data_v3_dto->volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->untracked_volume_usd
    if(token_hour_data_v3_dto->untracked_volume_usd) {
    if(cJSON_AddStringToObject(item, "untracked_volume_usd", token_hour_data_v3_dto->untracked_volume_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->total_value_locked
    if(token_hour_data_v3_dto->total_value_locked) {
    if(cJSON_AddStringToObject(item, "total_value_locked", token_hour_data_v3_dto->total_value_locked) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->total_value_locked_usd
    if(token_hour_data_v3_dto->total_value_locked_usd) {
    if(cJSON_AddStringToObject(item, "total_value_locked_usd", token_hour_data_v3_dto->total_value_locked_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->price_usd
    if(token_hour_data_v3_dto->price_usd) {
    if(cJSON_AddStringToObject(item, "price_usd", token_hour_data_v3_dto->price_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->fees_usd
    if(token_hour_data_v3_dto->fees_usd) {
    if(cJSON_AddStringToObject(item, "fees_usd", token_hour_data_v3_dto->fees_usd) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->open
    if(token_hour_data_v3_dto->open) {
    if(cJSON_AddStringToObject(item, "open", token_hour_data_v3_dto->open) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->high
    if(token_hour_data_v3_dto->high) {
    if(cJSON_AddStringToObject(item, "high", token_hour_data_v3_dto->high) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->low
    if(token_hour_data_v3_dto->low) {
    if(cJSON_AddStringToObject(item, "low", token_hour_data_v3_dto->low) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->close
    if(token_hour_data_v3_dto->close) {
    if(cJSON_AddStringToObject(item, "close", token_hour_data_v3_dto->close) == NULL) {
    goto fail; //String
    }
    }


    // token_hour_data_v3_dto->vid
    if(token_hour_data_v3_dto->vid) {
    if(cJSON_AddNumberToObject(item, "vid", token_hour_data_v3_dto->vid) == NULL) {
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

token_hour_data_v3_dto_t *token_hour_data_v3_dto_parseFromJSON(cJSON *token_hour_data_v3_dtoJSON){

    token_hour_data_v3_dto_t *token_hour_data_v3_dto_local_var = NULL;

    // token_hour_data_v3_dto->entry_time
    cJSON *entry_time = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "entry_time");
    if (entry_time) { 
    if(!cJSON_IsString(entry_time))
    {
    goto end; //DateTime
    }
    }

    // token_hour_data_v3_dto->recv_time
    cJSON *recv_time = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "recv_time");
    if (recv_time) { 
    if(!cJSON_IsString(recv_time))
    {
    goto end; //DateTime
    }
    }

    // token_hour_data_v3_dto->block_number
    cJSON *block_number = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "block_number");
    if (block_number) { 
    if(!cJSON_IsNumber(block_number))
    {
    goto end; //Numeric
    }
    }

    // token_hour_data_v3_dto->id
    cJSON *id = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "id");
    if (id) { 
    if(!cJSON_IsString(id))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->period_start_unix
    cJSON *period_start_unix = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "period_start_unix");
    if (period_start_unix) { 
    if(!cJSON_IsNumber(period_start_unix))
    {
    goto end; //Numeric
    }
    }

    // token_hour_data_v3_dto->token
    cJSON *token = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "token");
    if (token) { 
    if(!cJSON_IsString(token))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->volume
    cJSON *volume = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "volume");
    if (volume) { 
    if(!cJSON_IsString(volume))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->volume_usd
    cJSON *volume_usd = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "volume_usd");
    if (volume_usd) { 
    if(!cJSON_IsString(volume_usd))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->untracked_volume_usd
    cJSON *untracked_volume_usd = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "untracked_volume_usd");
    if (untracked_volume_usd) { 
    if(!cJSON_IsString(untracked_volume_usd))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->total_value_locked
    cJSON *total_value_locked = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "total_value_locked");
    if (total_value_locked) { 
    if(!cJSON_IsString(total_value_locked))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->total_value_locked_usd
    cJSON *total_value_locked_usd = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "total_value_locked_usd");
    if (total_value_locked_usd) { 
    if(!cJSON_IsString(total_value_locked_usd))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->price_usd
    cJSON *price_usd = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "price_usd");
    if (price_usd) { 
    if(!cJSON_IsString(price_usd))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->fees_usd
    cJSON *fees_usd = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "fees_usd");
    if (fees_usd) { 
    if(!cJSON_IsString(fees_usd))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->open
    cJSON *open = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "open");
    if (open) { 
    if(!cJSON_IsString(open))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->high
    cJSON *high = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "high");
    if (high) { 
    if(!cJSON_IsString(high))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->low
    cJSON *low = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "low");
    if (low) { 
    if(!cJSON_IsString(low))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->close
    cJSON *close = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "close");
    if (close) { 
    if(!cJSON_IsString(close))
    {
    goto end; //String
    }
    }

    // token_hour_data_v3_dto->vid
    cJSON *vid = cJSON_GetObjectItemCaseSensitive(token_hour_data_v3_dtoJSON, "vid");
    if (vid) { 
    if(!cJSON_IsNumber(vid))
    {
    goto end; //Numeric
    }
    }


    token_hour_data_v3_dto_local_var = token_hour_data_v3_dto_create (
        entry_time ? strdup(entry_time->valuestring) : NULL,
        recv_time ? strdup(recv_time->valuestring) : NULL,
        block_number ? block_number->valuedouble : 0,
        id ? strdup(id->valuestring) : NULL,
        period_start_unix ? period_start_unix->valuedouble : 0,
        token ? strdup(token->valuestring) : NULL,
        volume ? strdup(volume->valuestring) : NULL,
        volume_usd ? strdup(volume_usd->valuestring) : NULL,
        untracked_volume_usd ? strdup(untracked_volume_usd->valuestring) : NULL,
        total_value_locked ? strdup(total_value_locked->valuestring) : NULL,
        total_value_locked_usd ? strdup(total_value_locked_usd->valuestring) : NULL,
        price_usd ? strdup(price_usd->valuestring) : NULL,
        fees_usd ? strdup(fees_usd->valuestring) : NULL,
        open ? strdup(open->valuestring) : NULL,
        high ? strdup(high->valuestring) : NULL,
        low ? strdup(low->valuestring) : NULL,
        close ? strdup(close->valuestring) : NULL,
        vid ? vid->valuedouble : 0
        );

    return token_hour_data_v3_dto_local_var;
end:
    return NULL;

}
