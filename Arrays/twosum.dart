//Given an array of integers, return indices of the two numbers such that they add up to a specific target.

void main(){
  List<int> array = [2, 7, 11, 15];

  int target = 9;

  print(twoSum(array, target));
}

List<int> twoSum(List<int> array, int target) {
  for (int i = 0; i < array.length; i++) {
    int complement = target - array[i];
    for (int j = i + 1; j < array.length; j++) {
      if (array[j] == complement) {
        return [i, j];
      }
    }
  }
  return [];
}
