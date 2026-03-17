void main() {
  List<int> nums = [3, 4, 5, 2];

  int maximumProduct(List<int> nums) {
    int max = -1, smax = -1;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] > max) {
        smax = max;
        max = nums[i];
      } else if (nums[i] > smax) {
        smax = nums[i];
      }
    }
    return (max - 1) * (smax - 1);
  }

  print(maximumProduct(nums)); // Output: 12
}
