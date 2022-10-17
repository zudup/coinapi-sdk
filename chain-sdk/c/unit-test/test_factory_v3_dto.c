#ifndef factory_v3_dto_TEST
#define factory_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define factory_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/factory_v3_dto.h"
factory_v3_dto_t* instantiate_factory_v3_dto(int include_optional);



factory_v3_dto_t* instantiate_factory_v3_dto(int include_optional) {
  factory_v3_dto_t* factory_v3_dto = NULL;
  if (include_optional) {
    factory_v3_dto = factory_v3_dto_create(
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
      56
    );
  } else {
    factory_v3_dto = factory_v3_dto_create(
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
      56
    );
  }

  return factory_v3_dto;
}


#ifdef factory_v3_dto_MAIN

void test_factory_v3_dto(int include_optional) {
    factory_v3_dto_t* factory_v3_dto_1 = instantiate_factory_v3_dto(include_optional);

	cJSON* jsonfactory_v3_dto_1 = factory_v3_dto_convertToJSON(factory_v3_dto_1);
	printf("factory_v3_dto :\n%s\n", cJSON_Print(jsonfactory_v3_dto_1));
	factory_v3_dto_t* factory_v3_dto_2 = factory_v3_dto_parseFromJSON(jsonfactory_v3_dto_1);
	cJSON* jsonfactory_v3_dto_2 = factory_v3_dto_convertToJSON(factory_v3_dto_2);
	printf("repeating factory_v3_dto:\n%s\n", cJSON_Print(jsonfactory_v3_dto_2));
}

int main() {
  test_factory_v3_dto(1);
  test_factory_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // factory_v3_dto_MAIN
#endif // factory_v3_dto_TEST
