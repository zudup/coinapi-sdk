#ifndef pool_v3_dto_TEST
#define pool_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pool_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pool_v3_dto.h"
pool_v3_dto_t* instantiate_pool_v3_dto(int include_optional);

#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"


pool_v3_dto_t* instantiate_pool_v3_dto(int include_optional) {
  pool_v3_dto_t* pool_v3_dto = NULL;
  if (include_optional) {
    pool_v3_dto = pool_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
       // false, not to have infinite recursion
      instantiate_big_integer(0),
       // false, not to have infinite recursion
      instantiate_big_integer(0),
       // false, not to have infinite recursion
      instantiate_big_integer(0),
       // false, not to have infinite recursion
      instantiate_big_integer(0),
       // false, not to have infinite recursion
      instantiate_big_integer(0),
      "0",
      "0",
       // false, not to have infinite recursion
      instantiate_big_integer(0),
       // false, not to have infinite recursion
      instantiate_big_integer(0),
      "0",
      "0",
      "0",
      "0",
      "0",
       // false, not to have infinite recursion
      instantiate_big_integer(0),
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      1.337
    );
  } else {
    pool_v3_dto = pool_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      NULL,
      NULL,
      NULL,
      NULL,
      NULL,
      "0",
      "0",
      NULL,
      NULL,
      "0",
      "0",
      "0",
      "0",
      "0",
      NULL,
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      1.337
    );
  }

  return pool_v3_dto;
}


#ifdef pool_v3_dto_MAIN

void test_pool_v3_dto(int include_optional) {
    pool_v3_dto_t* pool_v3_dto_1 = instantiate_pool_v3_dto(include_optional);

	cJSON* jsonpool_v3_dto_1 = pool_v3_dto_convertToJSON(pool_v3_dto_1);
	printf("pool_v3_dto :\n%s\n", cJSON_Print(jsonpool_v3_dto_1));
	pool_v3_dto_t* pool_v3_dto_2 = pool_v3_dto_parseFromJSON(jsonpool_v3_dto_1);
	cJSON* jsonpool_v3_dto_2 = pool_v3_dto_convertToJSON(pool_v3_dto_2);
	printf("repeating pool_v3_dto:\n%s\n", cJSON_Print(jsonpool_v3_dto_2));
}

int main() {
  test_pool_v3_dto(1);
  test_pool_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // pool_v3_dto_MAIN
#endif // pool_v3_dto_TEST
