/*
 * pair_v2_dto.h
 *
 * 
 */

#ifndef _pair_v2_dto_H_
#define _pair_v2_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pair_v2_dto_t pair_v2_dto_t;

#include "big_integer.h"



typedef struct pair_v2_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *id; // string
    char *token_0; // string
    char *token_1; // string
    char *reserve_0; // string
    char *reserve_1; // string
    char *total_supply; // string
    char *reserve_eth; // string
    char *reserve_usd; // string
    char *tracked_reserve_eth; // string
    char *token_0_price; // string
    char *token_1_price; // string
    char *volume_token_0; // string
    char *volume_token_1; // string
    char *volume_usd; // string
    char *untracked_volume_usd; // string
    struct big_integer_t *tx_count; //model
    char *created_at_timestamp; //date time
    char *liquidity_provider_count; // string
    double evaluated_ask; //numeric

} pair_v2_dto_t;

pair_v2_dto_t *pair_v2_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *token_0,
    char *token_1,
    char *reserve_0,
    char *reserve_1,
    char *total_supply,
    char *reserve_eth,
    char *reserve_usd,
    char *tracked_reserve_eth,
    char *token_0_price,
    char *token_1_price,
    char *volume_token_0,
    char *volume_token_1,
    char *volume_usd,
    char *untracked_volume_usd,
    big_integer_t *tx_count,
    char *created_at_timestamp,
    char *liquidity_provider_count,
    double evaluated_ask
);

void pair_v2_dto_free(pair_v2_dto_t *pair_v2_dto);

pair_v2_dto_t *pair_v2_dto_parseFromJSON(cJSON *pair_v2_dtoJSON);

cJSON *pair_v2_dto_convertToJSON(pair_v2_dto_t *pair_v2_dto);

#endif /* _pair_v2_dto_H_ */

