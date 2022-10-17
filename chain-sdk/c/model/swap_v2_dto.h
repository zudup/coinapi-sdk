/*
 * swap_v2_dto.h
 *
 * 
 */

#ifndef _swap_v2_dto_H_
#define _swap_v2_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct swap_v2_dto_t swap_v2_dto_t;

#include "big_integer.h"
#include "e_trade_aggressive_side.h"

// Enum  for swap_v2_dto

typedef enum  { onchain_api_swap_v2_dto__NULL = 0, onchain_api_swap_v2_dto__Buy, onchain_api_swap_v2_dto__Sell, onchain_api_swap_v2_dto__EstimatedBuy, onchain_api_swap_v2_dto__EstimatedSell, onchain_api_swap_v2_dto__Unknown } onchain_api_swap_v2_dto__e;

char* swap_v2_dto_evaluated_aggressor_ToString(onchain_api_swap_v2_dto__e evaluated_aggressor);

onchain_api_swap_v2_dto__e swap_v2_dto_evaluated_aggressor_FromString(char* evaluated_aggressor);



typedef struct swap_v2_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *id; // string
    char *transaction; // string
    char *timestamp; //date time
    char *pair; // string
    char *sender; // string
    char *from; // string
    char *amount_0_in; // string
    char *amount_1_in; // string
    char *amount_0_out; // string
    char *amount_1_out; // string
    char *to; // string
    struct big_integer_t *log_index; //model
    char *amount_usd; // string
    double evaluated_price; //numeric
    double evaluated_amount; //numeric
    e_trade_aggressive_side_t *evaluated_aggressor; // custom
    char *pool_id; // string
    char *transaction_id; // string

} swap_v2_dto_t;

swap_v2_dto_t *swap_v2_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    char *transaction,
    char *timestamp,
    char *pair,
    char *sender,
    char *from,
    char *amount_0_in,
    char *amount_1_in,
    char *amount_0_out,
    char *amount_1_out,
    char *to,
    big_integer_t *log_index,
    char *amount_usd,
    double evaluated_price,
    double evaluated_amount,
    e_trade_aggressive_side_t *evaluated_aggressor,
    char *pool_id,
    char *transaction_id
);

void swap_v2_dto_free(swap_v2_dto_t *swap_v2_dto);

swap_v2_dto_t *swap_v2_dto_parseFromJSON(cJSON *swap_v2_dtoJSON);

cJSON *swap_v2_dto_convertToJSON(swap_v2_dto_t *swap_v2_dto);

#endif /* _swap_v2_dto_H_ */

