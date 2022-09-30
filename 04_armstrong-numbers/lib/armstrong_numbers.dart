class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    int length = 1;
    int buf = number;
    int res = 0;

    while (buf > 9) {
      buf = (buf / 10) as int;
      length++;
    }

    buf = number;

    while (buf > 0) {
      res += (buf % 10) ^ length;
      buf = (buf / 10) as int;
    }

    return res == number;
  }
}
