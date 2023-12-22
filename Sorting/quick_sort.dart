import 'dart:math';

void main(){
  List array = [1,11,111,2,22,222,3,33,333,4,44,444];
  quickSort(array, 0, array.length-1);
  print(array);
}

void quickSort(List array, int lb, int ub){
  if(lb<ub){
    int pos = partition(array, ub, lb);
    quickSort(array, lb, pos-1);
    quickSort(array, pos+1, ub);
  }
}

int partition(List array, int ub, int lb){
  int pivot = array[lb];
  int start = lb+1;
  int end = ub;
  while (start<=end) {
    while(array[start]<=pivot){
      start++;
    }
    while (array[end]>pivot) {
      end--;
    }
    if(start<end){
      int temp = array[start];
      array[start] = array[end];
      array[end] = temp;
    }
  }
  int tem = array[lb];
  array[lb] = array[end];
  array[end] = tem;

  return end;
}