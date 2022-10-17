#ifndef token_dto_TEST
#define token_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define token_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/token_dto.h"
token_dto_t* instantiate_token_dto(int include_optional);



token_dto_t* instantiate_token_dto(int include_optional) {
  token_dto_t* token_dto = NULL;
  if (include_optional) {
    token_dto = token_dto_create(
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
      list_createList(),
      56,
      "0"
    );
  } else {
    token_dto = token_dto_create(
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
      list_createList(),
      56,
      "0"
    );
  }

  return token_dto;
}


#ifdef token_dto_MAIN

void test_token_dto(int include_optional) {
    token_dto_t* token_dto_1 = instantiate_token_dto(include_optional);

	cJSON* jsontoken_dto_1 = token_dto_convertToJSON(token_dto_1);
	printf("token_dto :\n%s\n", cJSON_Print(jsontoken_dto_1));
	token_dto_t* token_dto_2 = token_dto_parseFromJSON(jsontoken_dto_1);
	cJSON* jsontoken_dto_2 = token_dto_convertToJSON(token_dto_2);
	printf("repeating token_dto:\n%s\n", cJSON_Print(jsontoken_dto_2));
}

int main() {
  test_token_dto(1);
  test_token_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // token_dto_MAIN
#endif // token_dto_TEST
