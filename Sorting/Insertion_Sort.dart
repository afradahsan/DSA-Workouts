void main(){

}

void insertionSort(List array){
  int current = 0;
  for(int i=1; i<array.length-1; i++){
    current =array[i];
    int j=i-1;
    while(j>=0 && array[j]>current){
      array[j]=array[j+1];
    }
  }
}