void main() {
  String name = "MAM";
  //In Dart (and most programming languages), the word in front of a function name is the return type.
  // It tells the compiler what kind of value the function will give back when it finishes running.
  bool isPalindrome(String x) {
    String str = x.toString();
    String reversed = str.split('').reversed.join('');
    return str == reversed;
    // or change bool type to String first
    // return str==reversed? "itsPalindrome":"itsnotpalindrome";
  }

  print(isPalindrome(name));

  bool isPalindromenum(int x) {
    // Negative numbers and numbers ending with 0 (except 0 itself) are not palindromes
    if (x < 0 || (x % 10 == 0 && x != 0)) {
      return false;
    }

    int reversedHalf = 0;
    int original = x;

    // Reverse half of the number
    while (x > reversedHalf) {
      int digit = x % 10;
      reversedHalf = reversedHalf * 10 + digit;
      x ~/= 10; // integer division
    }

    // Compare halves (for odd length, reversedHalf may have one extra digit)
    return (x == reversedHalf) || (x == reversedHalf ~/ 10);
  }

  print(isPalindromenum(121)); // true
  print(isPalindromenum(-121)); // false
  print(isPalindromenum(10)); // false
  print(isPalindromenum(12321)); // true
}
