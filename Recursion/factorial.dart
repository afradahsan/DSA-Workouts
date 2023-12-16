//return the factorial of a number using recursion.

void main(){
  int n=5;
  print('factorial of $n - ${factorial(n)}');
}

int factorial(int n){
  if(n<=1){
    return 1;
  }
  else{  
    return(n*factorial(n-1));
  }
}