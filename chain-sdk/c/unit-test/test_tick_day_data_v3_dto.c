#ifndef tick_day_data_v3_dto_TEST
#define tick_day_data_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define tick_day_data_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/tick_day_data_v3_dto.h"
tick_day_data_v3_dto_t* instantiate_tick_day_data_v3_dto(int include_optional);



tick_day_data_v3_dto_t* instantiate_tick_day_data_v3_dto(int include_optional) {
  tick_day_data_v3_dto_t* tick_day_data_v3_dto = NULL;
  if (include_optional) {
    tick_day_data_v3_dto = tick_day_data_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      "0",
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
      56
    );
  } else {
    tick_day_data_v3_dto = tick_day_data_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      "0",
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
      56
    );
  }

  return tick_day_data_v3_dto;
}


#ifdef tick_day_data_v3_dto_MAIN

void test_tick_day_data_v3_dto(int include_optional) {
    tick_day_data_v3_dto_t* tick_day_data_v3_dto_1 = instantiate_tick_day_data_v3_dto(include_optional);

	cJSON* jsontick_day_data_v3_dto_1 = tick_day_data_v3_dto_convertToJSON(tick_day_data_v3_dto_1);
	printf("tick_day_data_v3_dto :\n%s\n", cJSON_Print(jsontick_day_data_v3_dto_1));
	tick_day_data_v3_dto_t* tick_day_data_v3_dto_2 = tick_day_data_v3_dto_parseFromJSON(jsontick_day_data_v3_dto_1);
	cJSON* jsontick_day_data_v3_dto_2 = tick_day_data_v3_dto_convertToJSON(tick_day_data_v3_dto_2);
	printf("repeating tick_day_data_v3_dto:\n%s\n", cJSON_Print(jsontick_day_data_v3_dto_2));
}

int main() {
  test_tick_day_data_v3_dto(1);
  test_tick_day_data_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // tick_day_data_v3_dto_MAIN
#endif // tick_day_data_v3_dto_TEST
