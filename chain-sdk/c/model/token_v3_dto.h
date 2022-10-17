/*
 * token_v3_dto.h
 *
 * 
 */

#ifndef _token_v3_dto_H_
#define _token_v3_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct token_v3_dto_t token_v3_dto_t;

#include "big_integer.h"



typedef struct token_v3_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *id; // string
    char *symbol; // string
    char *name; // string
    int decimals; //numeric
    struct big_integer_t *total_supply; //model
    char *volume; // string
    char *volume_usd; // string
    char *untracked_volume_usd; // string
    char *fees_usd; // string
    struct big_integer_t *tx_count; //model
    struct big_integer_t *pool_count; //model
    char *total_value_locked; // string
    char *total_value_locked_usd; // string
    char *total_value_locked_usd_untracked; // string
    char *derived_eth; // string
    list_t *whitelist_pools; //primitive container
    char *token_symbol; // string

} token_v3_dto_t;

token_v3_dto_t *token_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *symbol,
    char *name,
    int decimals,
    big_integer_t *total_supply,
    char *volume,
    char *volume_usd,
    char *untracked_volume_usd,
    char *fees_usd,
    big_integer_t *tx_count,
    big_integer_t *pool_count,
    char *total_value_locked,
    char *total_value_locked_usd,
    char *total_value_locked_usd_untracked,
    char *derived_eth,
    list_t *whitelist_pools,
    char *token_symbol
);

void token_v3_dto_free(token_v3_dto_t *token_v3_dto);

token_v3_dto_t *token_v3_dto_parseFromJSON(cJSON *token_v3_dtoJSON);

cJSON *token_v3_dto_convertToJSON(token_v3_dto_t *token_v3_dto);

#endif /* _token_v3_dto_H_ */

