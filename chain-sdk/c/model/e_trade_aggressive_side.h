/*
 * e_trade_aggressive_side.h
 *
 * 
 */

#ifndef _e_trade_aggressive_side_H_
#define _e_trade_aggressive_side_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct e_trade_aggressive_side_t e_trade_aggressive_side_t;


// Enum  for e_trade_aggressive_side

typedef enum { onchain_api_e_trade_aggressive_side__NULL = 0, onchain_api_e_trade_aggressive_side__Buy, onchain_api_e_trade_aggressive_side__Sell, onchain_api_e_trade_aggressive_side__EstimatedBuy, onchain_api_e_trade_aggressive_side__EstimatedSell, onchain_api_e_trade_aggressive_side__Unknown } onchain_api_e_trade_aggressive_side__e;

char* e_trade_aggressive_side_e_trade_aggressive_side_ToString(onchain_api_e_trade_aggressive_side__e e_trade_aggressive_side);

onchain_api_e_trade_aggressive_side__e e_trade_aggressive_side_e_trade_aggressive_side_FromString(char* e_trade_aggressive_side);

//cJSON *e_trade_aggressive_side_e_trade_aggressive_side_convertToJSON(onchain_api_e_trade_aggressive_side__e e_trade_aggressive_side);

//onchain_api_e_trade_aggressive_side__e e_trade_aggressive_side_e_trade_aggressive_side_parseFromJSON(cJSON *e_trade_aggressive_sideJSON);

#endif /* _e_trade_aggressive_side_H_ */

