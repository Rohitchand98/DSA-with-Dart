//Squares of a Sorted Array

class Solution {
  List<int> squareofsortedarr(List<int> nums) {
    List<int> ans = List.filled(nums.length, 0);
    int start = 0;
    int end = nums.length - 1; //-1 to access the last element of the list
    int ptr = ans.length - 1;

    while (start <= end) {
      int ss = nums[start] * nums[start];
      int es = nums[end] * nums[end];

      if (ss > es) {
        ans[ptr] = ss;
        start++;
      } else {
        ans[ptr] = es;
        end--;
      }
      ptr--;
    }
    return ans;
  }
}

void main() {
  List<int> nums = [-4, -1, 0, 3, 10];
  final solution = Solution();
  print(solution.squareofsortedarr(nums));
}
