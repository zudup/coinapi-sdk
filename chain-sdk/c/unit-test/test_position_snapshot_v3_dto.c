#ifndef position_snapshot_v3_dto_TEST
#define position_snapshot_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define position_snapshot_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/position_snapshot_v3_dto.h"
position_snapshot_v3_dto_t* instantiate_position_snapshot_v3_dto(int include_optional);



position_snapshot_v3_dto_t* instantiate_position_snapshot_v3_dto(int include_optional) {
  position_snapshot_v3_dto_t* position_snapshot_v3_dto = NULL;
  if (include_optional) {
    position_snapshot_v3_dto = position_snapshot_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
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
      56
    );
  } else {
    position_snapshot_v3_dto = position_snapshot_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
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
      56
    );
  }

  return position_snapshot_v3_dto;
}


#ifdef position_snapshot_v3_dto_MAIN

void test_position_snapshot_v3_dto(int include_optional) {
    position_snapshot_v3_dto_t* position_snapshot_v3_dto_1 = instantiate_position_snapshot_v3_dto(include_optional);

	cJSON* jsonposition_snapshot_v3_dto_1 = position_snapshot_v3_dto_convertToJSON(position_snapshot_v3_dto_1);
	printf("position_snapshot_v3_dto :\n%s\n", cJSON_Print(jsonposition_snapshot_v3_dto_1));
	position_snapshot_v3_dto_t* position_snapshot_v3_dto_2 = position_snapshot_v3_dto_parseFromJSON(jsonposition_snapshot_v3_dto_1);
	cJSON* jsonposition_snapshot_v3_dto_2 = position_snapshot_v3_dto_convertToJSON(position_snapshot_v3_dto_2);
	printf("repeating position_snapshot_v3_dto:\n%s\n", cJSON_Print(jsonposition_snapshot_v3_dto_2));
}

int main() {
  test_position_snapshot_v3_dto(1);
  test_position_snapshot_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // position_snapshot_v3_dto_MAIN
#endif // position_snapshot_v3_dto_TEST
