#ifndef swap_dto_TEST
#define swap_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define swap_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/swap_dto.h"
swap_dto_t* instantiate_swap_dto(int include_optional);



swap_dto_t* instantiate_swap_dto(int include_optional) {
  swap_dto_t* swap_dto = NULL;
  if (include_optional) {
    swap_dto = swap_dto_create(
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
      56,
      "0",
      "0",
      1.337,
      1.337,
      onchain_api_swap_dto__Buy
    );
  } else {
    swap_dto = swap_dto_create(
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
      56,
      "0",
      "0",
      1.337,
      1.337,
      onchain_api_swap_dto__Buy
    );
  }

  return swap_dto;
}


#ifdef swap_dto_MAIN

void test_swap_dto(int include_optional) {
    swap_dto_t* swap_dto_1 = instantiate_swap_dto(include_optional);

	cJSON* jsonswap_dto_1 = swap_dto_convertToJSON(swap_dto_1);
	printf("swap_dto :\n%s\n", cJSON_Print(jsonswap_dto_1));
	swap_dto_t* swap_dto_2 = swap_dto_parseFromJSON(jsonswap_dto_1);
	cJSON* jsonswap_dto_2 = swap_dto_convertToJSON(swap_dto_2);
	printf("repeating swap_dto:\n%s\n", cJSON_Print(jsonswap_dto_2));
}

int main() {
  test_swap_dto(1);
  test_swap_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // swap_dto_MAIN
#endif // swap_dto_TEST
