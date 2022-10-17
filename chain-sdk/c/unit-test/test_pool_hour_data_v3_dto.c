#ifndef pool_hour_data_v3_dto_TEST
#define pool_hour_data_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pool_hour_data_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pool_hour_data_v3_dto.h"
pool_hour_data_v3_dto_t* instantiate_pool_hour_data_v3_dto(int include_optional);



pool_hour_data_v3_dto_t* instantiate_pool_hour_data_v3_dto(int include_optional) {
  pool_hour_data_v3_dto_t* pool_hour_data_v3_dto = NULL;
  if (include_optional) {
    pool_hour_data_v3_dto = pool_hour_data_v3_dto_create(
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
    pool_hour_data_v3_dto = pool_hour_data_v3_dto_create(
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

  return pool_hour_data_v3_dto;
}


#ifdef pool_hour_data_v3_dto_MAIN

void test_pool_hour_data_v3_dto(int include_optional) {
    pool_hour_data_v3_dto_t* pool_hour_data_v3_dto_1 = instantiate_pool_hour_data_v3_dto(include_optional);

	cJSON* jsonpool_hour_data_v3_dto_1 = pool_hour_data_v3_dto_convertToJSON(pool_hour_data_v3_dto_1);
	printf("pool_hour_data_v3_dto :\n%s\n", cJSON_Print(jsonpool_hour_data_v3_dto_1));
	pool_hour_data_v3_dto_t* pool_hour_data_v3_dto_2 = pool_hour_data_v3_dto_parseFromJSON(jsonpool_hour_data_v3_dto_1);
	cJSON* jsonpool_hour_data_v3_dto_2 = pool_hour_data_v3_dto_convertToJSON(pool_hour_data_v3_dto_2);
	printf("repeating pool_hour_data_v3_dto:\n%s\n", cJSON_Print(jsonpool_hour_data_v3_dto_2));
}

int main() {
  test_pool_hour_data_v3_dto(1);
  test_pool_hour_data_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // pool_hour_data_v3_dto_MAIN
#endif // pool_hour_data_v3_dto_TEST
