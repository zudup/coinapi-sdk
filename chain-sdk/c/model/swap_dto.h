/*
 * swap_dto.h
 *
 * 
 */

#ifndef _swap_dto_H_
#define _swap_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct swap_dto_t swap_dto_t;

#include "e_trade_aggressive_side.h"

// Enum  for swap_dto

typedef enum  { onchain_api_swap_dto__NULL = 0, onchain_api_swap_dto__Buy, onchain_api_swap_dto__Sell, onchain_api_swap_dto__EstimatedBuy, onchain_api_swap_dto__EstimatedSell, onchain_api_swap_dto__Unknown } onchain_api_swap_dto__e;

char* swap_dto_evaluated_aggressor_ToString(onchain_api_swap_dto__e evaluated_aggressor);

onchain_api_swap_dto__e swap_dto_evaluated_aggressor_FromString(char* evaluated_aggressor);



typedef struct swap_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    char *id; // string
    char *transaction; // string
    char *timestamp; // string
    char *pair; // string
    char *sender; // string
    char *amount_0_in; // string
    char *amount_1_in; // string
    char *amount_0_out; // string
    char *amount_1_out; // string
    char *to; // string
    char *log_index; // string
    char *amount_usd; // string
    long vid; //numeric
    char *pool_id; // string
    char *transaction_id; // string
    double evaluated_price; //numeric
    double evaluated_amount; //numeric
    e_trade_aggressive_side_t *evaluated_aggressor; // custom

} swap_dto_t;

swap_dto_t *swap_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *transaction,
    char *timestamp,
    char *pair,
    char *sender,
    char *amount_0_in,
    char *amount_1_in,
    char *amount_0_out,
    char *amount_1_out,
    char *to,
    char *log_index,
    char *amount_usd,
    long vid,
    char *pool_id,
    char *transaction_id,
    double evaluated_price,
    double evaluated_amount,
    e_trade_aggressive_side_t *evaluated_aggressor
);

void swap_dto_free(swap_dto_t *swap_dto);

swap_dto_t *swap_dto_parseFromJSON(cJSON *swap_dtoJSON);

cJSON *swap_dto_convertToJSON(swap_dto_t *swap_dto);

#endif /* _swap_dto_H_ */

