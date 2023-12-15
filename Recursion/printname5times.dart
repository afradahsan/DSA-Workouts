void main(){
  int count=1;
  function(count);
}

void function(int count){
    if(count==6){  //This is base conditn. till cnt bcm 6 func will keep executing
      return;
    }else{
      print('name');
      count++;
    }
    function(count);
  }

  // Time complexity - O(n)
  // Space complexity - O(n)

// ALTERNATE METHOD