#ifndef mint_v3_dto_TEST
#define mint_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define mint_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/mint_v3_dto.h"
mint_v3_dto_t* instantiate_mint_v3_dto(int include_optional);



mint_v3_dto_t* instantiate_mint_v3_dto(int include_optional) {
  mint_v3_dto_t* mint_v3_dto = NULL;
  if (include_optional) {
    mint_v3_dto = mint_v3_dto_create(
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
      56
    );
  } else {
    mint_v3_dto = mint_v3_dto_create(
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
      56
    );
  }

  return mint_v3_dto;
}


#ifdef mint_v3_dto_MAIN

void test_mint_v3_dto(int include_optional) {
    mint_v3_dto_t* mint_v3_dto_1 = instantiate_mint_v3_dto(include_optional);

	cJSON* jsonmint_v3_dto_1 = mint_v3_dto_convertToJSON(mint_v3_dto_1);
	printf("mint_v3_dto :\n%s\n", cJSON_Print(jsonmint_v3_dto_1));
	mint_v3_dto_t* mint_v3_dto_2 = mint_v3_dto_parseFromJSON(jsonmint_v3_dto_1);
	cJSON* jsonmint_v3_dto_2 = mint_v3_dto_convertToJSON(mint_v3_dto_2);
	printf("repeating mint_v3_dto:\n%s\n", cJSON_Print(jsonmint_v3_dto_2));
}

int main() {
  test_mint_v3_dto(1);
  test_mint_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // mint_v3_dto_MAIN
#endif // mint_v3_dto_TEST
