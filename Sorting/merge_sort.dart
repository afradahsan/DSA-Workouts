void main(){
  List array = [1,11,111,2,22,222,3,33,333,4,44,444];
  mergeSort(array, 0, array.length-1);
  print(array);
}

void mergeSort(List array ,int lb, int ub){
  if(lb<ub){
    int mid=(lb+ub)~/2;
    mergeSort(array, lb, mid);
    mergeSort(array, mid+1, ub);
    merge(array, lb, mid, ub);
  }
}

void merge(List array, int lb, int mid, int ub){
  int i = lb;
  int j = mid+1;
  int k = lb;

  List array2 = List.filled(ub - lb + 1, 0);

  while (i<=mid && j<=ub) {
    if(array[i]<=array[j]){
      array2[k-lb]=array[i];
      i++;
    }else{
      array2[k-lb]=array[j];
      j++;
    }
    k++;
  }
  if(i>mid){
    while (j<=ub) {
      array2[k-lb]=array[j];
      j++;
      k++;
    }
  }
  else{
    while(i<=mid){
      array2[k-lb] = array[i];
      i++;
      k++;
    }
  }
  for(int i=lb; i<=ub; i++){
    array[i] = array2[i-lb];
  }
}