void main() {
  int x = 1110;
  int rev_half = 0;
  if (x < 0 || (x % 10 == 0 && x != 0)) {
    print(false);
  } else {
    while (x > rev_half) {
      int digit = x % 10;
      rev_half = rev_half * 10 + digit;
      x ~/= 10; //int division
    }
  }
  print(x == rev_half || x == rev_half ~/ 10 ? true : false);
}
