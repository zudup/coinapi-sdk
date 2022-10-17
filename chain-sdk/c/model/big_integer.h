/*
 * big_integer.h
 *
 * 
 */

#ifndef _big_integer_H_
#define _big_integer_H_

#include <string.h>
#include "../external/cJSON.h"
#include "../include/list.h"
#include "../include/keyValuePair.h"
#include "../include/binary.h"

typedef struct big_integer_t big_integer_t;




typedef struct big_integer_t {
    int is_power_of_two; //boolean
    int is_zero; //boolean
    int is_one; //boolean
    int is_even; //boolean
    int sign; //numeric

} big_integer_t;

big_integer_t *big_integer_create(
    int is_power_of_two,
    int is_zero,
    int is_one,
    int is_even,
    int sign
);

void big_integer_free(big_integer_t *big_integer);

big_integer_t *big_integer_parseFromJSON(cJSON *big_integerJSON);

cJSON *big_integer_convertToJSON(big_integer_t *big_integer);

#endif /* _big_integer_H_ */

