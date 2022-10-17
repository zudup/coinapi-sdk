#ifndef burn_v3_dto_TEST
#define burn_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define burn_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/burn_v3_dto.h"
burn_v3_dto_t* instantiate_burn_v3_dto(int include_optional);



burn_v3_dto_t* instantiate_burn_v3_dto(int include_optional) {
  burn_v3_dto_t* burn_v3_dto = NULL;
  if (include_optional) {
    burn_v3_dto = burn_v3_dto_create(
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
    burn_v3_dto = burn_v3_dto_create(
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

  return burn_v3_dto;
}


#ifdef burn_v3_dto_MAIN

void test_burn_v3_dto(int include_optional) {
    burn_v3_dto_t* burn_v3_dto_1 = instantiate_burn_v3_dto(include_optional);

	cJSON* jsonburn_v3_dto_1 = burn_v3_dto_convertToJSON(burn_v3_dto_1);
	printf("burn_v3_dto :\n%s\n", cJSON_Print(jsonburn_v3_dto_1));
	burn_v3_dto_t* burn_v3_dto_2 = burn_v3_dto_parseFromJSON(jsonburn_v3_dto_1);
	cJSON* jsonburn_v3_dto_2 = burn_v3_dto_convertToJSON(burn_v3_dto_2);
	printf("repeating burn_v3_dto:\n%s\n", cJSON_Print(jsonburn_v3_dto_2));
}

int main() {
  test_burn_v3_dto(1);
  test_burn_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // burn_v3_dto_MAIN
#endif // burn_v3_dto_TEST
