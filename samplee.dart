void main(){
  List array = [1,2,3,4,5,6,7,8];
  int target = 6;

  print(binarySearchLoop(array, target));
}

int binarySearchLoop(List array, int target){
  int start = 0;
  int end = array.length-1;

  while (start<=end) {
    int mid = (start + ((end-start)/2)).toInt();
    if(array[mid]==target){
      return mid;
    }
    else if(array[mid]>target){
      end = mid-1;
    }
    else if(array[mid]<target){
      start = mid+1;
    }
  }
  return -1;
}

int binaryRec(List array, int target){
  int start = 0;
  int end = array.length-1;

  return binaryRecHelper(array, target, start, end);
}

int binaryRecHelper(List array, int target, int start, int end){
  if(start>end){
    return -1;
  }

  int mid = (start + (end-start/2)).toInt();

  if(array[mid]==target){
    return mid;
  }
  else if(array[mid]>target){
    return binaryRecHelper(array, target, start, mid-1);
  }
  else if(array[mid]<target){
    return binaryRecHelper(array, target, mid+1, end);
  }
  return -1;
}