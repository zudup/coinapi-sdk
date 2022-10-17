/*
 * burn_v3_dto.h
 *
 * 
 */

#ifndef _burn_v3_dto_H_
#define _burn_v3_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct burn_v3_dto_t burn_v3_dto_t;




typedef struct burn_v3_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    char *id; // string
    char *transaction; // string
    char *pool; // string
    char *token_0; // string
    char *token_1; // string
    char *timestamp; // string
    char *owner; // string
    char *origin; // string
    char *amount; // string
    char *amount_0; // string
    char *amount_1; // string
    char *amount_usd; // string
    char *tick_lower; // string
    char *tick_upper; // string
    char *log_index; // string
    long vid; //numeric

} burn_v3_dto_t;

burn_v3_dto_t *burn_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *transaction,
    char *pool,
    char *token_0,
    char *token_1,
    char *timestamp,
    char *owner,
    char *origin,
    char *amount,
    char *amount_0,
    char *amount_1,
    char *amount_usd,
    char *tick_lower,
    char *tick_upper,
    char *log_index,
    long vid
);

void burn_v3_dto_free(burn_v3_dto_t *burn_v3_dto);

burn_v3_dto_t *burn_v3_dto_parseFromJSON(cJSON *burn_v3_dtoJSON);

cJSON *burn_v3_dto_convertToJSON(burn_v3_dto_t *burn_v3_dto);

#endif /* _burn_v3_dto_H_ */

