#include "../src/attacks.h"
#include "../src/board.h"

#include <check.h>
#include <stdlib.h>

#define START_FEN "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"

START_TEST(test_attacks_between)
{
    InitAttacks();
    BitBoard m0 = BetweenSquares(0, 7);
    ck_assert_int_eq(m0, 126);
    BitBoard m1 = BetweenSquares(1, 4);
    ck_assert_int_eq(m1, 12);
}
END_TEST

START_TEST(test_attacks_pinned)
{
    InitAttacks();
    BitBoard m0 = PinnedMoves(0, 7);
    ck_assert_int_eq(m0, 127);
    BitBoard m1 = PinnedMoves(1, 0);
    ck_assert_int_eq(m1, 254);
}
END_TEST

START_TEST(test_attacks_pawn)
{
    InitAttacks();
    BitBoard m0 = GetPawnAttacks(9, 0);
    ck_assert_int_eq(m0, 5);
    BitBoard m1 = GetPawnAttacks(1, 1);
    ck_assert_int_eq(m1, 1280);
}
END_TEST

START_TEST(test_attacks_knight)
{
    InitAttacks();
    BitBoard m0 = GetKnightAttacks(0);
    ck_assert_int_eq(m0, 132096);
    BitBoard m1 = GetKnightAttacks(1);
    ck_assert_int_eq(m1, 329728);
}
END_TEST

START_TEST(test_attacks_bishop)
{
    InitAttacks();
    Board board;
    ParseFen(START_FEN, &board);
    BitBoard occ = board.occupancies[2];
    BitBoard m0 = GetBishopAttacks(0, occ);
    ck_assert_int_eq(m0, 512);
    BitBoard m1 = GetBishopAttacks(1, occ);
    ck_assert_int_eq(m1, 1280);
}
END_TEST

START_TEST(test_attacks_rook)
{
    InitAttacks();
    Board board;
    ParseFen(START_FEN, &board);
    BitBoard occ = board.occupancies[2];
    BitBoard m0 = GetRookAttacks(0, occ);
    ck_assert_int_eq(m0, 258);
    BitBoard m1 = GetRookAttacks(1, occ);
    ck_assert_int_eq(m1, 517);
}
END_TEST

START_TEST(test_attacks_queen)
{
    InitAttacks();
    Board board;
    ParseFen(START_FEN, &board);
    BitBoard occ = board.occupancies[2];
    BitBoard m0 = GetQueenAttacks(0, occ);
    ck_assert_int_eq(m0, 770);
    BitBoard m1 = GetQueenAttacks(1, occ);
    ck_assert_int_eq(m1, 1797);
}
END_TEST

START_TEST(test_attacks_king)
{
    InitAttacks();
    BitBoard m0 = GetKingAttacks(0);
    ck_assert_int_eq(m0, 770);
    BitBoard m1 = GetKingAttacks(1);
    ck_assert_int_eq(m1, 1797);
}
END_TEST

START_TEST(test_attacks_piece)
{
    InitAttacks();
    Board board;
    ParseFen(START_FEN, &board);
    BitBoard occ = board.occupancies[2];
    BitBoard m0 = GetPieceAttacks(0, occ, QUEEN);
    ck_assert_int_eq(m0, 770);
    BitBoard m1 = GetPieceAttacks(1, occ, QUEEN);
    ck_assert_int_eq(m1, 1797);
}
END_TEST

START_TEST(test_attacks_square)
{
    InitAttacks();
    Board board;
    ParseFen(START_FEN, &board);
    BitBoard occ = board.occupancies[1];
    BitBoard m0 = AttacksToSquare(&board, 0, occ);
    ck_assert_int_eq(m0, 0);
    BitBoard m1 = AttacksToSquare(&board, 1, occ);
    ck_assert_int_eq(m1, 1);
}
END_TEST

Suite* attacks_suite(void)
{
    Suite* s;
    TCase* tc_attacks;

    s = suite_create("Berserk");
    tc_attacks = tcase_create("Attacks");

    tcase_add_test(tc_attacks, test_attacks_between);
    tcase_add_test(tc_attacks, test_attacks_pinned);
    tcase_add_test(tc_attacks, test_attacks_pawn);
    tcase_add_test(tc_attacks, test_attacks_knight);
    tcase_add_test(tc_attacks, test_attacks_bishop);
    tcase_add_test(tc_attacks, test_attacks_rook);
    tcase_add_test(tc_attacks, test_attacks_queen);
    tcase_add_test(tc_attacks, test_attacks_king);
    tcase_add_test(tc_attacks, test_attacks_piece);
    tcase_add_test(tc_attacks, test_attacks_square);
    suite_add_tcase(s, tc_attacks);

    return s;
}

int main(void)
{
    int no_failed = 0;
    Suite* s;
    SRunner* runner;

    s = attacks_suite();
    runner = srunner_create(s);

    srunner_run_all(runner, CK_VERBOSE);
    no_failed = srunner_ntests_failed(runner);
    srunner_free(runner);
    return (no_failed == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}
