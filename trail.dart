void main() {
  bool isPoweroftwo(int x) {
    if (x < 0) {
      return false;
    }
    if (x == 1) {
      return true;
    }
    while (x % 2 == 0) {
      x = x ~/ 2;
    }
    return (x == 1 ? true : false);
  }

  print(isPoweroftwo(64));
}
