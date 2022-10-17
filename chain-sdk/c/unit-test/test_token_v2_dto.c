#ifndef token_v2_dto_TEST
#define token_v2_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define token_v2_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/token_v2_dto.h"
token_v2_dto_t* instantiate_token_v2_dto(int include_optional);

#include "test_big_integer.c"
#include "test_big_integer.c"


token_v2_dto_t* instantiate_token_v2_dto(int include_optional) {
  token_v2_dto_t* token_v2_dto = NULL;
  if (include_optional) {
    token_v2_dto = token_v2_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "0",
      "0",
      56,
       // false, not to have infinite recursion
      instantiate_big_integer(0),
      "0",
      "0",
      "0",
       // false, not to have infinite recursion
      instantiate_big_integer(0),
      "0",
      "0",
      "0"
    );
  } else {
    token_v2_dto = token_v2_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "0",
      "0",
      56,
      NULL,
      "0",
      "0",
      "0",
      NULL,
      "0",
      "0",
      "0"
    );
  }

  return token_v2_dto;
}


#ifdef token_v2_dto_MAIN

void test_token_v2_dto(int include_optional) {
    token_v2_dto_t* token_v2_dto_1 = instantiate_token_v2_dto(include_optional);

	cJSON* jsontoken_v2_dto_1 = token_v2_dto_convertToJSON(token_v2_dto_1);
	printf("token_v2_dto :\n%s\n", cJSON_Print(jsontoken_v2_dto_1));
	token_v2_dto_t* token_v2_dto_2 = token_v2_dto_parseFromJSON(jsontoken_v2_dto_1);
	cJSON* jsontoken_v2_dto_2 = token_v2_dto_convertToJSON(token_v2_dto_2);
	printf("repeating token_v2_dto:\n%s\n", cJSON_Print(jsontoken_v2_dto_2));
}

int main() {
  test_token_v2_dto(1);
  test_token_v2_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // token_v2_dto_MAIN
#endif // token_v2_dto_TEST
