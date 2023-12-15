import 'dart:io';

void main(){
  print('Enter the num');
  int num = int.parse(stdin.readLineSync()!);
  int i = num;
  function(i, num);
}

void function(int i, int n){
  if(i<1){
    return;
  }else{
    print(i);
    function(i-1, n);
  }
}

// Time Complexity - O(N)
// Space Complexity - O(N)