#ifndef e_trade_aggressive_side_TEST
#define e_trade_aggressive_side_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define e_trade_aggressive_side_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/e_trade_aggressive_side.h"
e_trade_aggressive_side_t* instantiate_e_trade_aggressive_side(int include_optional);



e_trade_aggressive_side_t* instantiate_e_trade_aggressive_side(int include_optional) {
  e_trade_aggressive_side_t* e_trade_aggressive_side = NULL;
  if (include_optional) {
    e_trade_aggressive_side = e_trade_aggressive_side_create(
    );
  } else {
    e_trade_aggressive_side = e_trade_aggressive_side_create(
    );
  }

  return e_trade_aggressive_side;
}


#ifdef e_trade_aggressive_side_MAIN

void test_e_trade_aggressive_side(int include_optional) {
    e_trade_aggressive_side_t* e_trade_aggressive_side_1 = instantiate_e_trade_aggressive_side(include_optional);

	cJSON* jsone_trade_aggressive_side_1 = e_trade_aggressive_side_convertToJSON(e_trade_aggressive_side_1);
	printf("e_trade_aggressive_side :\n%s\n", cJSON_Print(jsone_trade_aggressive_side_1));
	e_trade_aggressive_side_t* e_trade_aggressive_side_2 = e_trade_aggressive_side_parseFromJSON(jsone_trade_aggressive_side_1);
	cJSON* jsone_trade_aggressive_side_2 = e_trade_aggressive_side_convertToJSON(e_trade_aggressive_side_2);
	printf("repeating e_trade_aggressive_side:\n%s\n", cJSON_Print(jsone_trade_aggressive_side_2));
}

int main() {
  test_e_trade_aggressive_side(1);
  test_e_trade_aggressive_side(0);

  printf("Hello world \n");
  return 0;
}

#endif // e_trade_aggressive_side_MAIN
#endif // e_trade_aggressive_side_TEST
