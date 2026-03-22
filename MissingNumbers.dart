int missingNumberXOR(List<int> nums) {
  int n = nums.length;
  int xorAll = 0;
  int xorNums = 0;

  for (int i = 0; i <= n; i++) {
    xorAll ^= i;
  }

  for (int num in nums) {
    xorNums ^= num;
  }

  return xorAll ^ xorNums;
}

void main() {
  List<int> nums = [9,6,4,2,3,5,7,0,1]; 
  print(missingNumberXOR(nums)); // Output: 8
}
