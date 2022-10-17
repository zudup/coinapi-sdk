#ifndef tick_v3_dto_TEST
#define tick_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define tick_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/tick_v3_dto.h"
tick_v3_dto_t* instantiate_tick_v3_dto(int include_optional);

#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"


tick_v3_dto_t* instantiate_tick_v3_dto(int include_optional) {
  tick_v3_dto_t* tick_v3_dto = NULL;
  if (include_optional) {
    tick_v3_dto = tick_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "0",
       // false, not to have infinite recursion
      instantiate_big_integer(0),
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
      "0",
      "0",
      "0",
      "0",
      "0",
      "2013-10-20T19:20:30+01:00",
       // false, not to have infinite recursion
      instantiate_big_integer(0),
       // false, not to have infinite recursion
      instantiate_big_integer(0),
       // false, not to have infinite recursion
      instantiate_big_integer(0)
    );
  } else {
    tick_v3_dto = tick_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "0",
      NULL,
      "0",
      NULL,
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
      "0",
      "2013-10-20T19:20:30+01:00",
      NULL,
      NULL,
      NULL
    );
  }

  return tick_v3_dto;
}


#ifdef tick_v3_dto_MAIN

void test_tick_v3_dto(int include_optional) {
    tick_v3_dto_t* tick_v3_dto_1 = instantiate_tick_v3_dto(include_optional);

	cJSON* jsontick_v3_dto_1 = tick_v3_dto_convertToJSON(tick_v3_dto_1);
	printf("tick_v3_dto :\n%s\n", cJSON_Print(jsontick_v3_dto_1));
	tick_v3_dto_t* tick_v3_dto_2 = tick_v3_dto_parseFromJSON(jsontick_v3_dto_1);
	cJSON* jsontick_v3_dto_2 = tick_v3_dto_convertToJSON(tick_v3_dto_2);
	printf("repeating tick_v3_dto:\n%s\n", cJSON_Print(jsontick_v3_dto_2));
}

int main() {
  test_tick_v3_dto(1);
  test_tick_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // tick_v3_dto_MAIN
#endif // tick_v3_dto_TEST
