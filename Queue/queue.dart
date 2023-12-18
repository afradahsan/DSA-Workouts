class Queue{
  Node? front;
  Node? rear;

  void enqueue(int data){
    Node newNode = Node(data);

    if(rear==null){
      rear = newNode;
      front = rear;
    }
    else{
      rear!.next = newNode;
      rear = newNode;
    }
  }

  void dequeue(){
    if(front==null){
      print('empty');
      rear = null;
    }
    else{
      front = front!.next;
    }
  }

  void display(){
    Node? current = front;
    while (current!=null) {
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
  Queue queue = Queue();

  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);

  queue.dequeue();

  queue.display();
}