#include "../src/bits.h"
#include "../src/board.h"

#include <check.h>
#include <stdlib.h>

#define START_FEN "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"

START_TEST(test_board_parsefen)
{
    Board board;
    ck_assert_int_eq(board.squares[0], 1);
    ParseFen(START_FEN, &board);
    ck_assert_int_eq(board.squares[0], 7);
}
END_TEST

Suite* board_suite(void)
{
    Suite* s;
    TCase* tc_board;

    s = suite_create("Berserk");
    tc_board = tcase_create("Board");

    tcase_add_test(tc_board, test_board_parsefen);

    suite_add_tcase(s, tc_board);

    return s;
}
