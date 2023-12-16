//you are given two numbers a,b. write a function which return a^b.

import 'dart:io';

void main(){
  print('enter a & b: ');
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  print("$a^$b = ${power(a, b)}");
}

int power(int a, int b){
  if(b==1){
    return a;
  }
  else{
    return a*power(a, b-1);
  }
}