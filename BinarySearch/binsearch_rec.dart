import 'dart:io';

void main(){
  List array = [1,2,3,4,5,6,7,8,9];
  print('enter the target: ');
  int target = int.parse(stdin.readLineSync()!);

  print(binarysearchRec(array, target));
}

int binarysearchRec(List array, int target){
  int start = 0;
  int end = array.length-1;
  return binarySearchHelper(array, target, start, end);
}

int binarySearchHelper(List array, int target, int start, int end){
  if(start>end){
    return -1;
  }
  int mid = (start + (end-start/2)).toInt();

  if(array[mid] == target){
    return mid;
  }else if(array[mid]>target){
    return binarySearchHelper(array, target, start, mid-1);
  }else if(array[mid]<target){
    return binarySearchHelper(array, target, mid+1, end);
  }
    return -1;
}