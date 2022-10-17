#ifndef swap_v3_dto_TEST
#define swap_v3_dto_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define swap_v3_dto_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/swap_v3_dto.h"
swap_v3_dto_t* instantiate_swap_v3_dto(int include_optional);

#include "test_big_integer.c"
#include "test_big_integer.c"
#include "test_big_integer.c"


swap_v3_dto_t* instantiate_swap_v3_dto(int include_optional) {
  swap_v3_dto_t* swap_v3_dto = NULL;
  if (include_optional) {
    swap_v3_dto = swap_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "0",
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
       // false, not to have infinite recursion
      instantiate_big_integer(0),
       // false, not to have infinite recursion
      instantiate_big_integer(0),
       // false, not to have infinite recursion
      instantiate_big_integer(0),
      1.337,
      1.337,
      onchain_api_swap_v3_dto__Buy,
      "0",
      "0"
    );
  } else {
    swap_v3_dto = swap_v3_dto_create(
      "2013-10-20T19:20:30+01:00",
      "2013-10-20T19:20:30+01:00",
      56,
      56,
      "0",
      "0",
      "2013-10-20T19:20:30+01:00",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      NULL,
      NULL,
      NULL,
      1.337,
      1.337,
      onchain_api_swap_v3_dto__Buy,
      "0",
      "0"
    );
  }

  return swap_v3_dto;
}


#ifdef swap_v3_dto_MAIN

void test_swap_v3_dto(int include_optional) {
    swap_v3_dto_t* swap_v3_dto_1 = instantiate_swap_v3_dto(include_optional);

	cJSON* jsonswap_v3_dto_1 = swap_v3_dto_convertToJSON(swap_v3_dto_1);
	printf("swap_v3_dto :\n%s\n", cJSON_Print(jsonswap_v3_dto_1));
	swap_v3_dto_t* swap_v3_dto_2 = swap_v3_dto_parseFromJSON(jsonswap_v3_dto_1);
	cJSON* jsonswap_v3_dto_2 = swap_v3_dto_convertToJSON(swap_v3_dto_2);
	printf("repeating swap_v3_dto:\n%s\n", cJSON_Print(jsonswap_v3_dto_2));
}

int main() {
  test_swap_v3_dto(1);
  test_swap_v3_dto(0);

  printf("Hello world \n");
  return 0;
}

#endif // swap_v3_dto_MAIN
#endif // swap_v3_dto_TEST
