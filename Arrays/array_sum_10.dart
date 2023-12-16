//BELOW IS THE FIRST APPROACH TO FIND THE PAIR OF NUM HAVING SUM 10.
//But, this approach has a Time Complexity of O(n^2) - Bcz we're having 2 for loops in the prog. But we can reduce the time complexity to O(n) using another prog.

// Set<int> result(List list, int target){
//   Set<int> result = {};
//   for(int i=0; i<list.length; i++){
//     for(int j=0; j<list.length; j++){
//       if(list[i]+list[j] == 10){
//         result.addAll([list[i], list[j]]);
//       }
//     }
//   }
//   return result;
// }



import 'dart:collection';

void main(){
  List list = [6,7,9,4,0,2];
  int target =  10;

  print(result(list, target));
}

Set<int> result(List list, int target){
  Set<int> nums = HashSet();
  for(int i=0; i<list.length; i++){
    int number = list[i];
    int match = target - number;
    if(nums.contains(match)){
      return {match, number};
    }
    else
    {
      nums.add(number);
    }
  }
  return {};
}


// But, in the above problem the Time Complexity is O(n) which is better than before..