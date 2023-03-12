#include "test.h"

#include <check.h>
#include <stdlib.h>

int main(void)
{
    int no_failed = 0;
    SRunner* sr;

    sr = srunner_create(attacks_suite());
    srunner_add_suite(sr, bits_suite());
    srunner_add_suite(sr, board_suite());

    srunner_run_all(sr, CK_VERBOSE);
    no_failed = srunner_ntests_failed(sr);
    srunner_free(sr);
    return (no_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}
