/*
 * token_v2_dto.h
 *
 * 
 */

#ifndef _token_v2_dto_H_
#define _token_v2_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct token_v2_dto_t token_v2_dto_t;

#include "big_integer.h"



typedef struct token_v2_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *id; // string
    char *symbol; // string
    char *name; // string
    int decimals; //numeric
    struct big_integer_t *total_supply; //model
    char *trade_volume; // string
    char *trade_volume_usd; // string
    char *untracked_volume_usd; // string
    struct big_integer_t *tx_count; //model
    char *total_liquidity; // string
    char *derived_eth; // string
    char *token_symbol; // string

} token_v2_dto_t;

token_v2_dto_t *token_v2_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *symbol,
    char *name,
    int decimals,
    big_integer_t *total_supply,
    char *trade_volume,
    char *trade_volume_usd,
    char *untracked_volume_usd,
    big_integer_t *tx_count,
    char *total_liquidity,
    char *derived_eth,
    char *token_symbol
);

void token_v2_dto_free(token_v2_dto_t *token_v2_dto);

token_v2_dto_t *token_v2_dto_parseFromJSON(cJSON *token_v2_dtoJSON);

cJSON *token_v2_dto_convertToJSON(token_v2_dto_t *token_v2_dto);

#endif /* _token_v2_dto_H_ */

