/*
 * pair_dto.h
 *
 * 
 */

#ifndef _pair_dto_H_
#define _pair_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct pair_dto_t pair_dto_t;




typedef struct pair_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    char *id; // string
    char *factory; // string
    char *name; // string
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
    char *tx_count; // string
    char *liquidity_provider_count; // string
    char *timestamp; // string
    char *block; // string
    long vid; //numeric
    double evaluated_ask; //numeric

} pair_dto_t;

pair_dto_t *pair_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *factory,
    char *name,
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
    char *tx_count,
    char *liquidity_provider_count,
    char *timestamp,
    char *block,
    long vid,
    double evaluated_ask
);

void pair_dto_free(pair_dto_t *pair_dto);

pair_dto_t *pair_dto_parseFromJSON(cJSON *pair_dtoJSON);

cJSON *pair_dto_convertToJSON(pair_dto_t *pair_dto);

#endif /* _pair_dto_H_ */

