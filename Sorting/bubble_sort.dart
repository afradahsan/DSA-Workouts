void main(){
  List array = [6,5,43,6,7,8,23,4,67,54,3,2];
  bubblesort(array);
  print(array);
}

void bubblesort(List array){
  for(int i=0; i<array.length-1; i++){
    int flag = 0;
    for(int j=0; j<array.length-1-i; j++){
      if(array[j]>array[j+1]){
        var temp = array[j];
        array[j] = array[j+1];
        array[j+1] = temp;
        flag = 1;
      }
    }
    if(flag==0) break; //why? to prevent unwanted looping of i, after the array is sorted.
  }
}