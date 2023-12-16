import 'dart:collection';

// THIS IS A PROGRAM TO SHOW HOW TO ADD, DELETE AND PRINT LINKEDLIST

void main(){
  SlinkedList linkedlist = SlinkedList();

  linkedlist.addNode(10);
  linkedlist.addNode(20);
  linkedlist.addNode(50);

  // linkedlist.append(10);

  // linkedlist.insertBetween(20, 30);
  // linkedlist.insertBetween(30, 40);

  linkedlist.display();

  print('object');

  // Node? insertnode = linkedlist.nodeAt(1);
  // linkedlist.insertAfter(23, insertnode!);

    final firstNode = linkedlist.nodeAt(0);
  linkedlist.insertAfter(5, firstNode!);
  
  linkedlist.display();
}

class Node {
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

class SlinkedList{
  Node? head = null;
  Node? tail = null;

  //TO INSERT A NEW VALUE AT HEAD! - We call it push
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

  void addNode(int data){
  Node newNode = Node(data);

  if (head == null){
    head = newNode;
  } else {
    tail!.next = newNode;
  }
  tail = newNode;
  }

  void insertBetween(int pos, int data){
  Node newNode = Node(data);
  Node? temp = head;

  while (temp!=null && temp.data!=pos) {
    temp = temp.next;
  }

  if(temp==null){
    return;
  }

  if(temp==tail){
    tail!.next = newNode;
    tail = newNode;
    return;
  }

  newNode.next = temp.next;
  temp.next = newNode;
  }

  void pop(){
    var temp = null;
    if(head!=null){
      temp = head!.next;
      head!.next = null;
      head = temp;
    }
  }

  void removeLast(){
    if(head!.next==null){
      return pop();
    }

    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }
    tail = current;
    tail!.next = null;
  }

  int removeAfter(Node node){
    final value = node.next!.data;
    if(node.next == tail){
      tail = node;
    }

    node.next = node.next!.next;
    return value;
  }

  void delete(int data){
  Node? temp = head;
  Node? cur = null;

  //To Delete Head
  if(temp!=null && temp.data==data){
    head = temp.next;
    return;
  }

  //To delete in between elements
  while(temp!=null && temp.data!=data){
    cur = temp;
    temp = temp.next;
  }

  if(temp==null){
    return;
  }

  //To delete last element
  if(temp==tail){
    tail = cur;
    tail!.next = null; //bcz current value has a next..
    return;
  }

  cur!.next = temp.next;
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
}