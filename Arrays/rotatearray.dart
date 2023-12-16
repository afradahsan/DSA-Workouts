// Rotate an array of n elements to the right by k steps.

void rotateArray(List<int> nums, int k) {
  int n = nums.length;
  
  if (n == 0 || k == 0) return;

  k %= n;

  _reverse(nums, 0, n - 1); // Reverse the entire array
  _reverse(nums, 0, k - 1); // Reverse the first k elements
  _reverse(nums, k, n - 1); // Reverse the remaining elements
}

void _reverse(List<int> nums, int start, int end) {
  while (start < end) {
    int temp = nums[start];
    nums[start] = nums[end];
    nums[end] = temp;
    start++;
    end--;
  }
}

void main() {
  List<int> array = [1, 2, 3, 4, 5];
  int k = 2;

  rotateArray(array, k);
  print(array);
}
