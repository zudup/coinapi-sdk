#ifndef big_integer_TEST
#define big_integer_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define big_integer_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/big_integer.h"
big_integer_t* instantiate_big_integer(int include_optional);



big_integer_t* instantiate_big_integer(int include_optional) {
  big_integer_t* big_integer = NULL;
  if (include_optional) {
    big_integer = big_integer_create(
      1,
      1,
      1,
      1,
      56
    );
  } else {
    big_integer = big_integer_create(
      1,
      1,
      1,
      1,
      56
    );
  }

  return big_integer;
}


#ifdef big_integer_MAIN

void test_big_integer(int include_optional) {
    big_integer_t* big_integer_1 = instantiate_big_integer(include_optional);

	cJSON* jsonbig_integer_1 = big_integer_convertToJSON(big_integer_1);
	printf("big_integer :\n%s\n", cJSON_Print(jsonbig_integer_1));
	big_integer_t* big_integer_2 = big_integer_parseFromJSON(jsonbig_integer_1);
	cJSON* jsonbig_integer_2 = big_integer_convertToJSON(big_integer_2);
	printf("repeating big_integer:\n%s\n", cJSON_Print(jsonbig_integer_2));
}

int main() {
  test_big_integer(1);
  test_big_integer(0);

  printf("Hello world \n");
  return 0;
}

#endif // big_integer_MAIN
#endif // big_integer_TEST
