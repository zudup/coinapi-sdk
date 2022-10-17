#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "big_integer.h"



big_integer_t *big_integer_create(
    int is_power_of_two,
    int is_zero,
    int is_one,
    int is_even,
    int sign
    ) {
    big_integer_t *big_integer_local_var = malloc(sizeof(big_integer_t));
    if (!big_integer_local_var) {
        return NULL;
    }
    big_integer_local_var->is_power_of_two = is_power_of_two;
    big_integer_local_var->is_zero = is_zero;
    big_integer_local_var->is_one = is_one;
    big_integer_local_var->is_even = is_even;
    big_integer_local_var->sign = sign;

    return big_integer_local_var;
}


void big_integer_free(big_integer_t *big_integer) {
    if(NULL == big_integer){
        return ;
    }
    listEntry_t *listEntry;
    free(big_integer);
}

cJSON *big_integer_convertToJSON(big_integer_t *big_integer) {
    cJSON *item = cJSON_CreateObject();

    // big_integer->is_power_of_two
    if(big_integer->is_power_of_two) {
    if(cJSON_AddBoolToObject(item, "is_power_of_two", big_integer->is_power_of_two) == NULL) {
    goto fail; //Bool
    }
    }


    // big_integer->is_zero
    if(big_integer->is_zero) {
    if(cJSON_AddBoolToObject(item, "is_zero", big_integer->is_zero) == NULL) {
    goto fail; //Bool
    }
    }


    // big_integer->is_one
    if(big_integer->is_one) {
    if(cJSON_AddBoolToObject(item, "is_one", big_integer->is_one) == NULL) {
    goto fail; //Bool
    }
    }


    // big_integer->is_even
    if(big_integer->is_even) {
    if(cJSON_AddBoolToObject(item, "is_even", big_integer->is_even) == NULL) {
    goto fail; //Bool
    }
    }


    // big_integer->sign
    if(big_integer->sign) {
    if(cJSON_AddNumberToObject(item, "sign", big_integer->sign) == NULL) {
    goto fail; //Numeric
    }
    }

    return item;
fail:
    if (item) {
        cJSON_Delete(item);
    }
    return NULL;
}

big_integer_t *big_integer_parseFromJSON(cJSON *big_integerJSON){

    big_integer_t *big_integer_local_var = NULL;

    // big_integer->is_power_of_two
    cJSON *is_power_of_two = cJSON_GetObjectItemCaseSensitive(big_integerJSON, "is_power_of_two");
    if (is_power_of_two) { 
    if(!cJSON_IsBool(is_power_of_two))
    {
    goto end; //Bool
    }
    }

    // big_integer->is_zero
    cJSON *is_zero = cJSON_GetObjectItemCaseSensitive(big_integerJSON, "is_zero");
    if (is_zero) { 
    if(!cJSON_IsBool(is_zero))
    {
    goto end; //Bool
    }
    }

    // big_integer->is_one
    cJSON *is_one = cJSON_GetObjectItemCaseSensitive(big_integerJSON, "is_one");
    if (is_one) { 
    if(!cJSON_IsBool(is_one))
    {
    goto end; //Bool
    }
    }

    // big_integer->is_even
    cJSON *is_even = cJSON_GetObjectItemCaseSensitive(big_integerJSON, "is_even");
    if (is_even) { 
    if(!cJSON_IsBool(is_even))
    {
    goto end; //Bool
    }
    }

    // big_integer->sign
    cJSON *sign = cJSON_GetObjectItemCaseSensitive(big_integerJSON, "sign");
    if (sign) { 
    if(!cJSON_IsNumber(sign))
    {
    goto end; //Numeric
    }
    }


    big_integer_local_var = big_integer_create (
        is_power_of_two ? is_power_of_two->valueint : 0,
        is_zero ? is_zero->valueint : 0,
        is_one ? is_one->valueint : 0,
        is_even ? is_even->valueint : 0,
        sign ? sign->valuedouble : 0
        );

    return big_integer_local_var;
end:
    return NULL;

}
