import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int number) {
    return pow(((1 + number) / 2 * number), 2).toInt();
  }

  int sumOfSquares(int number) {
    return (number * (number + 1) * (number * 2 + 1) ~/ 6);
  }

  int differenceOfSquares(int number) {
    return squareOfSum(number) - sumOfSquares(number);
  }
}
