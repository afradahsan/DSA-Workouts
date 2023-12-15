void main(){
  List arr = [1,23,4,6,7];
  Node n = Node(arr[0]);

  print('head: ${n.data}');
  // print('arr: ${n.arr}');
}

class Node{
  int data;
  // List arr;
  Node? next;

  Node(this.data){}
}