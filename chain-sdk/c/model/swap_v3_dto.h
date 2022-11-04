/*
 * swap_v3_dto.h
 *
 * Swap are created for each token swap within a pair.
 */

#ifndef _swap_v3_dto_H_
#define _swap_v3_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct swap_v3_dto_t swap_v3_dto_t;

#include "big_integer.h"
#include "e_trade_aggressive_side.h"

// Enum  for swap_v3_dto

typedef enum  { onchain_api_swap_v3_dto__NULL = 0, onchain_api_swap_v3_dto__Buy, onchain_api_swap_v3_dto__Sell, onchain_api_swap_v3_dto__EstimatedBuy, onchain_api_swap_v3_dto__EstimatedSell, onchain_api_swap_v3_dto__Unknown } onchain_api_swap_v3_dto__e;

char* swap_v3_dto_evaluated_aggressor_ToString(onchain_api_swap_v3_dto__e evaluated_aggressor);

onchain_api_swap_v3_dto__e swap_v3_dto_evaluated_aggressor_FromString(char* evaluated_aggressor);



typedef struct swap_v3_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *id; // string
    char *transaction; // string
    char *timestamp; //date time
    char *pool; // string
    char *token_0; // string
    char *token_1; // string
    char *sender; // string
    char *recipient; // string
    char *origin; // string
    char *amount_0; // string
    char *amount_1; // string
    char *amount_usd; // string
    struct big_integer_t *sqrt_price_x96; //model
    struct big_integer_t *tick; //model
    struct big_integer_t *log_index; //model
    double evaluated_price; //numeric
    double evaluated_amount; //numeric
    e_trade_aggressive_side_t *evaluated_aggressor; // custom
    char *pool_id; // string
    char *transaction_id; // string

} swap_v3_dto_t;

swap_v3_dto_t *swap_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *transaction,
    char *timestamp,
    char *pool,
    char *token_0,
    char *token_1,
    char *sender,
    char *recipient,
    char *origin,
    char *amount_0,
    char *amount_1,
    char *amount_usd,
    big_integer_t *sqrt_price_x96,
    big_integer_t *tick,
    big_integer_t *log_index,
    double evaluated_price,
    double evaluated_amount,
    e_trade_aggressive_side_t *evaluated_aggressor,
    char *pool_id,
    char *transaction_id
);

void swap_v3_dto_free(swap_v3_dto_t *swap_v3_dto);

swap_v3_dto_t *swap_v3_dto_parseFromJSON(cJSON *swap_v3_dtoJSON);

cJSON *swap_v3_dto_convertToJSON(swap_v3_dto_t *swap_v3_dto);

#endif /* _swap_v3_dto_H_ */

