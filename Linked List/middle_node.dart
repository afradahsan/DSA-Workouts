void main(){
  Linkedlist MiddleLL = Linkedlist();

  MiddleLL.push(40);
  MiddleLL.push(30);
  MiddleLL.push(20);
  MiddleLL.push(10);

  Node? middlenode = MiddleLL.findMiddle();

  // print(middlenode!.data);

  // MiddleLL.pop();

  // MiddleLL.removeLast();

  MiddleLL.display();
}

class Node{
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

class Linkedlist{
  Node? head = null;
  Node? tail = null;

  bool get isEmpty => head == null;

  void push(int value){
    head = Node(value, head);
    tail??=head;
  }

  Node? nodeAt(int index){
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode!=null && currentIndex<index) {
      currentNode = currentNode.next;
      currentIndex++;
    }

    return currentNode;
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

  void delete(){
    if(head!=null){

    }
  }

  Node? findMiddle(){
    if(isEmpty){
      return null;
    };

    Node? slowPointer = head;
    Node? fastPointer = head;

    while(fastPointer!=null && fastPointer.next!=null){
      slowPointer = slowPointer!.next;
      fastPointer = fastPointer.next!.next;
    }
    return slowPointer;
  }
}