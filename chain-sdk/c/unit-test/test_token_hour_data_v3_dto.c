#ifndef token_hour_data_v3_dto_TEST
#define token_hour_data_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define token_hour_data_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/token_hour_data_v3_dto.h"
token_hour_data_v3_dto_t* instantiate_token_hour_data_v3_dto(int include_optional);



token_hour_data_v3_dto_t* instantiate_token_hour_data_v3_dto(int include_optional) {
  token_hour_data_v3_dto_t* token_hour_data_v3_dto = NULL;
  if (include_optional) {
    token_hour_data_v3_dto = token_hour_data_v3_dto_create(
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
      56
    );
  } else {
    token_hour_data_v3_dto = token_hour_data_v3_dto_create(
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
      56
    );
  }

  return token_hour_data_v3_dto;
}


#ifdef token_hour_data_v3_dto_MAIN

void test_token_hour_data_v3_dto(int include_optional) {
    token_hour_data_v3_dto_t* token_hour_data_v3_dto_1 = instantiate_token_hour_data_v3_dto(include_optional);

	cJSON* jsontoken_hour_data_v3_dto_1 = token_hour_data_v3_dto_convertToJSON(token_hour_data_v3_dto_1);
	printf("token_hour_data_v3_dto :\n%s\n", cJSON_Print(jsontoken_hour_data_v3_dto_1));
	token_hour_data_v3_dto_t* token_hour_data_v3_dto_2 = token_hour_data_v3_dto_parseFromJSON(jsontoken_hour_data_v3_dto_1);
	cJSON* jsontoken_hour_data_v3_dto_2 = token_hour_data_v3_dto_convertToJSON(token_hour_data_v3_dto_2);
	printf("repeating token_hour_data_v3_dto:\n%s\n", cJSON_Print(jsontoken_hour_data_v3_dto_2));
}

int main() {
  test_token_hour_data_v3_dto(1);
  test_token_hour_data_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // token_hour_data_v3_dto_MAIN
#endif // token_hour_data_v3_dto_TEST
