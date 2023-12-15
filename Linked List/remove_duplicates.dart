void main(){
  LinkedList linkedList = LinkedList();

  linkedList.addNode(4);
  linkedList.addNode(5);
  linkedList.addNode(5);
  linkedList.addNode(5);
  linkedList.addNode(9);

  linkedList.display();

  linkedList.removeDuplicate();

  print('');

  linkedList.display();
}

class Node{
  int? data;
  Node? next;

  Node(this.data, [this.next]);
}

class LinkedList{
  Node? head = null;
  Node? tail = null;

  void addNode(int data){
  Node newNode = Node(data);

  if (head == null){
    head = newNode;
  } else {
    tail!.next = newNode;
  }
  tail = newNode;
  }
  
  void removeDuplicate(){
    Node? current = head;

    while(current!=null){
      Node? next = current.next;
      while(next!=null && current.data==next.data){
        next=next.next;
      }
      current.next = next;

      if(next==tail && current.data==next!.data){
        tail = current;
        tail!.next = null;
      }
      current = next;
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
}