#include "../src/bits.h"
#include "../src/board.h"

#include <check.h>
#include <stdlib.h>

#define START_FEN "rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1"

START_TEST(test_bits_pawndir)
{
    BitBoard sq0 = Bit(A2);
    BitBoard em0 = Bit(A3);
    BitBoard m0 = ShiftPawnDir(sq0, 0);
    ck_assert(m0 == em0);
    BitBoard sq1 = Bit(A7);
    BitBoard em1 = Bit(A6);
    BitBoard m1 = ShiftPawnDir(sq1, 1);
    ck_assert(m1 == em1);
}
END_TEST

START_TEST(test_bits_pawncapw)
{
    BitBoard sq0 = Bit(B2);
    BitBoard em0 = Bit(A3);
    BitBoard m0 = ShiftPawnCapW(sq0, 0);
    ck_assert(m0 == em0);
    BitBoard sq1 = Bit(B7);
    BitBoard em1 = Bit(A6);
    BitBoard m1 = ShiftPawnCapW(sq1, 1);
    ck_assert(m1 == em1);
}
END_TEST

START_TEST(test_bits_pawncape)
{
    BitBoard sq0 = Bit(A2);
    BitBoard em0 = Bit(B3);
    BitBoard m0 = ShiftPawnCapE(sq0, 0);
    ck_assert(m0 == em0);
    BitBoard sq1 = Bit(A7);
    BitBoard em1 = Bit(B6);
    BitBoard m1 = ShiftPawnCapE(sq1, 1);
    ck_assert(m1 == em1);
}
END_TEST

START_TEST(test_bits_pawnfiles)
{
    Board board;
    ParseFen(START_FEN, &board);
    uint8_t files0 = PawnFiles(board.pieces[Piece(PAWN, WHITE)]);
    ck_assert_int_eq(files0, 255);
    uint8_t files1 = PawnFiles(board.pieces[Piece(PAWN, BLACK)]);
    ck_assert_int_eq(files1, 255);
}
END_TEST

START_TEST(test_bits_poplsb)
{
    Board board;
    ParseFen(START_FEN, &board);
    int q0 = PopLSB(&board.pieces[Piece(QUEEN, WHITE)]);
    ck_assert_int_eq(q0, 59);
    int q1 = PopLSB(&board.pieces[Piece(QUEEN, BLACK)]);
    ck_assert_int_eq(q1, 3);
}
END_TEST

Suite* bits_suite(void)
{
    Suite* s;
    TCase* tc_bits;

    s = suite_create("Berserk");
    tc_bits = tcase_create("Bits");

    tcase_add_test(tc_bits, test_bits_pawndir);
    tcase_add_test(tc_bits, test_bits_pawncapw);
    tcase_add_test(tc_bits, test_bits_pawncape);
    tcase_add_test(tc_bits, test_bits_pawnfiles);
    tcase_add_test(tc_bits, test_bits_poplsb);

    suite_add_tcase(s, tc_bits);

    return s;
}
