import 'dart:io';

void main(){
  List array = [1,2,3,4,5,6,7,8,9];
  print('enter the target: ');
  int target = int.parse(stdin.readLineSync()!);

  print(binarySearchLoop(array, target));
}

int binarySearchLoop(List array, int target){
  int start = 0;
  int end = array.length-1;

  while (start<=end) {
  int mid = (start + (end-start/2)).toInt();
  if(array[mid]==target){
    return mid;
  }else if(array[mid]>target){
    end = mid-1;
  }else if(array[mid]<target){
    start = mid+1;
  }
}
  return -1;

}