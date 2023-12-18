class Stack{
  Node? top;

  void push(int data){
    Node newNode = Node(data);

    if(top == null){
      top = newNode;
    }
    else{
      newNode.next = top;
      top = newNode;
    }
  }

  void pop(){
    if(top==null) {
      print('stack underflow');
      return;
    }
    top = top!.next;
  }

  void display(){
    Node? current = top;

    while(current!=null){
      print(current.data);
      current = current.next;
    }
  }
  
}

class Node{
  int? data;
  Node? next;

  Node(this.data, [this.next]);
}

void main(){
  Stack stack = Stack();

  stack.push(1);
  stack.push(2);
  stack.push(3);

  stack.pop();

  stack.display();
}