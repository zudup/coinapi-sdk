/*
 * uniswap_day_data_v3_dto.h
 *
 * Data accumulated and condensed into day stats for all of Uniswap
 */

#ifndef _uniswap_day_data_v3_dto_H_
#define _uniswap_day_data_v3_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct uniswap_day_data_v3_dto_t uniswap_day_data_v3_dto_t;

#include "big_integer.h"



typedef struct uniswap_day_data_v3_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    long vid; //numeric
    char *id; // string
    int date; //numeric
    char *volume_eth; // string
    char *volume_usd; // string
    char *volume_usd_untracked; // string
    char *fees_usd; // string
    struct big_integer_t *tx_count; //model
    char *tvl_usd; // string

} uniswap_day_data_v3_dto_t;

uniswap_day_data_v3_dto_t *uniswap_day_data_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    long vid,
    char *id,
    int date,
    char *volume_eth,
    char *volume_usd,
    char *volume_usd_untracked,
    char *fees_usd,
    big_integer_t *tx_count,
    char *tvl_usd
);

void uniswap_day_data_v3_dto_free(uniswap_day_data_v3_dto_t *uniswap_day_data_v3_dto);

uniswap_day_data_v3_dto_t *uniswap_day_data_v3_dto_parseFromJSON(cJSON *uniswap_day_data_v3_dtoJSON);

cJSON *uniswap_day_data_v3_dto_convertToJSON(uniswap_day_data_v3_dto_t *uniswap_day_data_v3_dto);

#endif /* _uniswap_day_data_v3_dto_H_ */

