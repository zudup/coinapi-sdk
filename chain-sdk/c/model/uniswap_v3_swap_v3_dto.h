/*
 * uniswap_v3_swap_v3_dto.h
 *
 * Swap are created for each token swap within a pair.
 */

#ifndef _uniswap_v3_swap_v3_dto_H_
#define _uniswap_v3_swap_v3_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct uniswap_v3_swap_v3_dto_t uniswap_v3_swap_v3_dto_t;

#include "numerics_big_integer.h"
#include "transactions_e_trade_aggressive_side.h"

// Enum  for uniswap_v3_swap_v3_dto

typedef enum  { onchain_api_uniswap_v3_swap_v3_dto__NULL = 0, onchain_api_uniswap_v3_swap_v3_dto__Buy, onchain_api_uniswap_v3_swap_v3_dto__Sell, onchain_api_uniswap_v3_swap_v3_dto__EstimatedBuy, onchain_api_uniswap_v3_swap_v3_dto__EstimatedSell, onchain_api_uniswap_v3_swap_v3_dto__Unknown } onchain_api_uniswap_v3_swap_v3_dto__e;

char* uniswap_v3_swap_v3_dto_evaluated_aggressor_ToString(onchain_api_uniswap_v3_swap_v3_dto__e evaluated_aggressor);

onchain_api_uniswap_v3_swap_v3_dto__e uniswap_v3_swap_v3_dto_evaluated_aggressor_FromString(char* evaluated_aggressor);



typedef struct uniswap_v3_swap_v3_dto_t {
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
    struct numerics_big_integer_t *sqrt_price_x96; //model
    struct numerics_big_integer_t *tick; //model
    struct numerics_big_integer_t *log_index; //model
    double evaluated_price; //numeric
    double evaluated_amount; //numeric
    transactions_e_trade_aggressive_side_t *evaluated_aggressor; // custom
    char *pool_id; // string
    char *transaction_id; // string

} uniswap_v3_swap_v3_dto_t;

uniswap_v3_swap_v3_dto_t *uniswap_v3_swap_v3_dto_create(
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
    numerics_big_integer_t *sqrt_price_x96,
    numerics_big_integer_t *tick,
    numerics_big_integer_t *log_index,
    double evaluated_price,
    double evaluated_amount,
    transactions_e_trade_aggressive_side_t *evaluated_aggressor,
    char *pool_id,
    char *transaction_id
);

void uniswap_v3_swap_v3_dto_free(uniswap_v3_swap_v3_dto_t *uniswap_v3_swap_v3_dto);

uniswap_v3_swap_v3_dto_t *uniswap_v3_swap_v3_dto_parseFromJSON(cJSON *uniswap_v3_swap_v3_dtoJSON);

cJSON *uniswap_v3_swap_v3_dto_convertToJSON(uniswap_v3_swap_v3_dto_t *uniswap_v3_swap_v3_dto);

#endif /* _uniswap_v3_swap_v3_dto_H_ */

