void main() {
  String x = "xxvxx";
  String r = x.split('').reversed.join('');
  print(r == x ? true : false);

  //by using function
  bool isPalindrome(String x) {
    String r = x.split('').reversed.join('');
    return (r == x ? true : false);
  }

  print(isPalindrome(x));
}
