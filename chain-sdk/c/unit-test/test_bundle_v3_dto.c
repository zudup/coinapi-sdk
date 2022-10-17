#ifndef bundle_v3_dto_TEST
#define bundle_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define bundle_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/bundle_v3_dto.h"
bundle_v3_dto_t* instantiate_bundle_v3_dto(int include_optional);



bundle_v3_dto_t* instantiate_bundle_v3_dto(int include_optional) {
  bundle_v3_dto_t* bundle_v3_dto = NULL;
  if (include_optional) {
    bundle_v3_dto = bundle_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      "0",
      "0",
      56
    );
  } else {
    bundle_v3_dto = bundle_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      "0",
      "0",
      56
    );
  }

  return bundle_v3_dto;
}


#ifdef bundle_v3_dto_MAIN

void test_bundle_v3_dto(int include_optional) {
    bundle_v3_dto_t* bundle_v3_dto_1 = instantiate_bundle_v3_dto(include_optional);

	cJSON* jsonbundle_v3_dto_1 = bundle_v3_dto_convertToJSON(bundle_v3_dto_1);
	printf("bundle_v3_dto :\n%s\n", cJSON_Print(jsonbundle_v3_dto_1));
	bundle_v3_dto_t* bundle_v3_dto_2 = bundle_v3_dto_parseFromJSON(jsonbundle_v3_dto_1);
	cJSON* jsonbundle_v3_dto_2 = bundle_v3_dto_convertToJSON(bundle_v3_dto_2);
	printf("repeating bundle_v3_dto:\n%s\n", cJSON_Print(jsonbundle_v3_dto_2));
}

int main() {
  test_bundle_v3_dto(1);
  test_bundle_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // bundle_v3_dto_MAIN
#endif // bundle_v3_dto_TEST
