#ifndef pair_dto_TEST
#define pair_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define pair_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/pair_dto.h"
pair_dto_t* instantiate_pair_dto(int include_optional);



pair_dto_t* instantiate_pair_dto(int include_optional) {
  pair_dto_t* pair_dto = NULL;
  if (include_optional) {
    pair_dto = pair_dto_create(
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
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      56,
      1.337
    );
  } else {
    pair_dto = pair_dto_create(
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
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      56,
      1.337
    );
  }

  return pair_dto;
}


#ifdef pair_dto_MAIN

void test_pair_dto(int include_optional) {
    pair_dto_t* pair_dto_1 = instantiate_pair_dto(include_optional);

	cJSON* jsonpair_dto_1 = pair_dto_convertToJSON(pair_dto_1);
	printf("pair_dto :\n%s\n", cJSON_Print(jsonpair_dto_1));
	pair_dto_t* pair_dto_2 = pair_dto_parseFromJSON(jsonpair_dto_1);
	cJSON* jsonpair_dto_2 = pair_dto_convertToJSON(pair_dto_2);
	printf("repeating pair_dto:\n%s\n", cJSON_Print(jsonpair_dto_2));
}

int main() {
  test_pair_dto(1);
  test_pair_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // pair_dto_MAIN
#endif // pair_dto_TEST
