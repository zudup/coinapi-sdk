/*
 * bundle_v3_dto.h
 *
 * The Bundle is used as a global store of derived ETH price in USD. This provides a strong estimate for the USD price of ETH.
 */

#ifndef _bundle_v3_dto_H_
#define _bundle_v3_dto_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct bundle_v3_dto_t bundle_v3_dto_t;




typedef struct bundle_v3_dto_t {
    char *entry_time; //date time
    char *recv_time; //date time
    long block_number; //numeric
    char *id; // string
    char *eth_price_usd; // string
    long vid; //numeric

} bundle_v3_dto_t;

bundle_v3_dto_t *bundle_v3_dto_create(
    char *entry_time,
    char *recv_time,
    long block_number,
    char *id,
    char *eth_price_usd,
    long vid
);

void bundle_v3_dto_free(bundle_v3_dto_t *bundle_v3_dto);

bundle_v3_dto_t *bundle_v3_dto_parseFromJSON(cJSON *bundle_v3_dtoJSON);

cJSON *bundle_v3_dto_convertToJSON(bundle_v3_dto_t *bundle_v3_dto);

#endif /* _bundle_v3_dto_H_ */

