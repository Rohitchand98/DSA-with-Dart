class Solution {
  List<int> addToArrayForm(List<int> num, int k) {
    List<int> ans = [];

    int p = num.length - 1;
    int carry = 0;

    while (p >= 0 || k > 0) {
      int numval = 0;
      if (p >= 0) {
        numval = num[p];
      }
      int d = k % 10; // last digit from k
      int sum = numval + d + carry;
      int digit = sum % 10;
      carry = sum ~/ 10; // integer division in Dart
      ans.add(digit);
      p--;       // move pointer
      k = k ~/ 10; // remove last digit from k
    }

    if (carry > 0) {
      ans.add(carry); // add carry
    }

    ans = ans.reversed.toList(); // reverse the list
    return ans;
  }
}

void main() {
  Solution sol = Solution();
  List<int> result = sol.addToArrayForm([1, 2, 0, 0], 34);
  print(result); // Output: [1, 2, 3, 4]
}
