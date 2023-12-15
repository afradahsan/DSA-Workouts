void main(){
  DoubleLL doubleLL = DoubleLL();

  doubleLL.addNode(5);
  doubleLL.addNode(10);
  doubleLL.addNode(15);
  doubleLL.addNode(20);

  doubleLL.reverse();
}

class Node{
  int? data;
  Node? next;
  Node? prev;

  Node(this.data, [this.next, this.prev]);
}

class DoubleLL{
  Node? head = null;
  Node? tail = null;

  void addNode(int data){
    Node newNode = Node(data);
    if(head==null){
      head = newNode;
    }else{
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void display(){
    Node? temp = head;
    if(head==null){
      print('empty'); 
    }
    else{
      temp = head;
      while(temp!=null){
        print(temp.data);
        temp = temp.next;
      }
    }
  }

  void reverse(){
    Node? temp = tail;
    while (temp!=null) {
      print(temp.data);
      temp = temp.prev;
    }
  }
}