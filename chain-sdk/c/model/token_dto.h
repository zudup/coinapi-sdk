/*
 * token_dto.h
 *
 * 
 */

#ifndef _token_dto_H_
#define _token_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct token_dto_t token_dto_t;




typedef struct token_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    char *id; // string
    char *factory; // string
    char *symbol; // string
    char *name; // string
    char *decimals; // string
    char *total_supply; // string
    char *volume; // string
    char *volume_usd; // string
    char *untracked_volume_usd; // string
    char *tx_count; // string
    char *liquidity; // string
    char *derived_eth; // string
    list_t *whitelist_pairs; //primitive container
    long vid; //numeric
    char *token_symbol; // string

} token_dto_t;

token_dto_t *token_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *factory,
    char *symbol,
    char *name,
    char *decimals,
    char *total_supply,
    char *volume,
    char *volume_usd,
    char *untracked_volume_usd,
    char *tx_count,
    char *liquidity,
    char *derived_eth,
    list_t *whitelist_pairs,
    long vid,
    char *token_symbol
);

void token_dto_free(token_dto_t *token_dto);

token_dto_t *token_dto_parseFromJSON(cJSON *token_dtoJSON);

cJSON *token_dto_convertToJSON(token_dto_t *token_dto);

#endif /* _token_dto_H_ */

