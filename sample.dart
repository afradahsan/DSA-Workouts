import 'Linked List/array-to-linklist.dart';

class Node {
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

class Linkedlist{
  Node? head = null;
  Node? tail = null;

  void push(int value){
    head = Node(value, head);
    tail ??= head;
  }

  void append(int value){
    if(head==null){
      push(value);
      return;
    }
    tail!.next = Node(value);
    tail = tail!.next;
  }

  Node? nodeAt(int index){
    Node? currentNode = head;
    int currentIndex = 0;

    while (currentNode!=null && currentIndex<index) {
      currentNode = currentNode.next;
      currentIndex++;
    }

    return currentNode;
  }

  Node? insertAfter(int value, Node node){
    if(tail==node){
      append(value);
      return tail;
    }
    node.next = Node(value, node.next);
    return node.next;
  }

  

  void pop(){
    var temp = null;
    if(head!=null){
      temp = head!.next;
      head!.next = null;
      head = temp;
    }
  }

  void display(){
    Node? temp = head;
    while (temp!=null) {
      print(temp.data);
      temp = temp.next;
    }
  }

  int removeAfter(Node node){
    final value = node.next!.data;
    if(node.next==tail){
      tail = node;
    }

    node.next = node.next!.next;
    return value;
  }
}

void main(){
  Linkedlist linkedlist = Linkedlist();

  linkedlist.push(5);
  linkedlist.push(6);
  linkedlist.push(7);
  linkedlist.push(8);

  linkedlist.append(2);
  Node? nodeAt = linkedlist.nodeAt(2);
  linkedlist.insertAfter(3, nodeAt!);

  linkedlist.pop();
  

  linkedlist.display();
}