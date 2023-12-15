  void main(){
    List list = [6, 6, 4, 0, 2, 6, 6];
    int target =  6;

    print(result(list, target));
  }

  result(List list, int target){
    for(int i=0; i<list.length; i++){
      if(list[i] == target){
        print('lll $i');

        list.removeAt(i);
        list.insert(list.length-1, target);

        for(int j=0; j<list.length; j++){
          if(list[i] == target){
        print('lll $i');

        list.removeAt(i);
        list.insert(list.length-1, target);
          }
        }
      }
    }
    return list;
  }