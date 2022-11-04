/*
 * tick_v3_dto.h
 *
 * Ticks are the boundaries between discrete areas in price space.
 */

#ifndef _tick_v3_dto_H_
#define _tick_v3_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct tick_v3_dto_t tick_v3_dto_t;

#include "big_integer.h"



typedef struct tick_v3_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *id; // string
    char *pool_address; // string
    struct big_integer_t *tick_idx; //model
    char *pool; // string
    struct big_integer_t *liquidity_gross; //model
    struct big_integer_t *liquidity_net; //model
    char *price_0; // string
    char *price_1; // string
    char *volume_token_0; // string
    char *volume_token_1; // string
    char *volume_usd; // string
    char *untracked_volume_usd; // string
    char *fees_usd; // string
    char *collected_fees_token_0; // string
    char *collected_fees_token_1; // string
    char *collected_fees_usd; // string
    char *created_at_timestamp; //date time
    struct big_integer_t *liquidity_provider_count; //model
    struct big_integer_t *fee_growth_outside_0x128; //model
    struct big_integer_t *fee_growth_outside_1x128; //model

} tick_v3_dto_t;

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
);

void tick_v3_dto_free(tick_v3_dto_t *tick_v3_dto);

tick_v3_dto_t *tick_v3_dto_parseFromJSON(cJSON *tick_v3_dtoJSON);

cJSON *tick_v3_dto_convertToJSON(tick_v3_dto_t *tick_v3_dto);

#endif /* _tick_v3_dto_H_ */

