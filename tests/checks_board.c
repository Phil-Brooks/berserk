#include "../src/bits.h"
#include "../src/board.h"
#include "../src/move.h"

#include <check.h>
#include <stdlib.h>

#define START_FEN "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"

START_TEST(test_board_parsefen)
{
    Board board;
    char* str = "8/8/1p2k1p1/3p3p/1p1P1P1P/1P2PK2/8/8 w - - 3 54";
    ParseFen(str, &board);
    ck_assert_int_eq(board.squares[0], 12);
    ParseFen(START_FEN, &board);
    ck_assert_int_eq(board.squares[0], 7);
}
END_TEST

START_TEST(test_board_isdraw)
{
    Board board;
    char* str = "8/8/8/8/8/8/8/K6k w - - 3 54";
    ParseFen(str, &board);
    int ans = IsDraw(&board, 0);
    ck_assert_int_eq(ans, 1);
    ParseFen(START_FEN, &board);
    ans = IsDraw(&board, 0);
    ck_assert_int_eq(ans, 0);
}
END_TEST

START_TEST(test_board_hasnonpawn)
{
    Board board;
    char* str = "8/8/8/8/8/8/8/K6k w - - 3 54";
    ParseFen(str, &board);
    int ans = HasNonPawn(&board);
    ck_assert_int_eq(ans, 0);
    ParseFen(START_FEN, &board);
    ans = HasNonPawn(&board);
    ck_assert_int_eq(ans, 7);
}
END_TEST

START_TEST(test_board_nullmove)
{
    Board board;
    ParseFen(START_FEN, &board);
    ck_assert_int_eq(board.stm, 0);
    MakeNullMove(&board);
    ck_assert_int_eq(board.stm, 1);
    UndoNullMove(&board);
    ck_assert_int_eq(board.stm, 0);
}
END_TEST

START_TEST(test_board_makemove)
{
    Board board;
    ParseFen(START_FEN, &board);
    char fen[128];
    BoardToFen(fen, &board);
    ck_assert_str_eq(fen, START_FEN);
    Move mv = ParseMove("d2d4", &board);
    MakeMoveUpdate(mv, &board, 0);
    BoardToFen(fen, &board);
    ck_assert_str_eq(fen, "rnbqkbnr/pppppppp/8/8/3P4/8/PPP1PPPP/RNBQKBNR b KQkq - 0 1");
    UndoMove(mv, &board);
    BoardToFen(fen, &board);
    ck_assert_str_eq(fen, START_FEN);
}
END_TEST

Suite* board_suite(void)
{
    Suite* s;
    TCase* tc_board;

    s = suite_create("Berserk");
    tc_board = tcase_create("Board");

    tcase_add_test(tc_board, test_board_parsefen);
    tcase_add_test(tc_board, test_board_isdraw);
    tcase_add_test(tc_board, test_board_hasnonpawn);
    tcase_add_test(tc_board, test_board_nullmove);
    tcase_add_test(tc_board, test_board_makemove);

    suite_add_tcase(s, tc_board);

    return s;
}
