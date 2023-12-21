void main(){
  List array = [3,5,7,7,2,8,6,1,4,6];
  List result = insertionSort(array);
  print(result);
}

List insertionSort(List array){
  for(int i=1; i<=array.length-1; i++){
    int current = array[i];
    int j=i-1;
    while(j>=0 && array[j]>current){
      array[j+1]=array[j];
      j--;
    }
    array[j+1]=current;
  }
  return array;
}