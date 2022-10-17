/*
 * factory_v3_dto.h
 *
 * 
 */

#ifndef _factory_v3_dto_H_
#define _factory_v3_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct factory_v3_dto_t factory_v3_dto_t;




typedef struct factory_v3_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    char *id; // string
    char *pool_count; // string
    char *tx_count; // string
    char *total_volume_usd; // string
    char *total_volume_eth; // string
    char *total_fees_usd; // string
    char *total_fees_eth; // string
    char *untracked_volume_usd; // string
    char *total_value_locked_usd; // string
    char *total_value_locked_eth; // string
    char *total_value_locked_usd_untracked; // string
    char *total_value_locked_eth_untracked; // string
    char *owner; // string
    long vid; //numeric

} factory_v3_dto_t;

factory_v3_dto_t *factory_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *pool_count,
    char *tx_count,
    char *total_volume_usd,
    char *total_volume_eth,
    char *total_fees_usd,
    char *total_fees_eth,
    char *untracked_volume_usd,
    char *total_value_locked_usd,
    char *total_value_locked_eth,
    char *total_value_locked_usd_untracked,
    char *total_value_locked_eth_untracked,
    char *owner,
    long vid
);

void factory_v3_dto_free(factory_v3_dto_t *factory_v3_dto);

factory_v3_dto_t *factory_v3_dto_parseFromJSON(cJSON *factory_v3_dtoJSON);

cJSON *factory_v3_dto_convertToJSON(factory_v3_dto_t *factory_v3_dto);

#endif /* _factory_v3_dto_H_ */

