#ifndef pair_v2_dto_TEST
#define pair_v2_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pair_v2_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pair_v2_dto.h"
pair_v2_dto_t* instantiate_pair_v2_dto(int include_optional);

#include "test_big_integer.c"


pair_v2_dto_t* instantiate_pair_v2_dto(int include_optional) {
  pair_v2_dto_t* pair_v2_dto = NULL;
  if (include_optional) {
    pair_v2_dto = pair_v2_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
       // false, not to have infinite recursion
      instantiate_big_integer(0),
      "2013-10-20T19:20:30+01:00",
      "0",
      1.337
    );
  } else {
    pair_v2_dto = pair_v2_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      NULL,
      "2013-10-20T19:20:30+01:00",
      "0",
      1.337
    );
  }

  return pair_v2_dto;
}


#ifdef pair_v2_dto_MAIN

void test_pair_v2_dto(int include_optional) {
    pair_v2_dto_t* pair_v2_dto_1 = instantiate_pair_v2_dto(include_optional);

	cJSON* jsonpair_v2_dto_1 = pair_v2_dto_convertToJSON(pair_v2_dto_1);
	printf("pair_v2_dto :\n%s\n", cJSON_Print(jsonpair_v2_dto_1));
	pair_v2_dto_t* pair_v2_dto_2 = pair_v2_dto_parseFromJSON(jsonpair_v2_dto_1);
	cJSON* jsonpair_v2_dto_2 = pair_v2_dto_convertToJSON(pair_v2_dto_2);
	printf("repeating pair_v2_dto:\n%s\n", cJSON_Print(jsonpair_v2_dto_2));
}

int main() {
  test_pair_v2_dto(1);
  test_pair_v2_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // pair_v2_dto_MAIN
#endif // pair_v2_dto_TEST
