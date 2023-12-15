import 'middle_node.dart';

void main(){
  LinkedList linkedList = LinkedList();

}

class Node{
  int? data;
  Node? next;
}

class LinkedList{
  Node? head = null;
  Node? tail = null;

  void push(Node node){
    if(head==null){
      tail = head!.next;
    }
  }

   void display(){
  if(head==null){
    print('empty');
  }
  else{
    Node? temp = head;
    while (temp!=null) {
      print(temp.data);
      temp = temp.next;
    }
  }
  }

  void reverse(){

  }
}

