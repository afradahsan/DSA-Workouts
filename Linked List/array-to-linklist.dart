void main(){
  List array = [1,2,3,4];
 
  Linkedlist linkedlist = Linkedlist();

  linkedlist.arrtoLinklist(array);
  linkedlist.printlist();
}

class Node{
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

class Linkedlist{
  Node? head;

void arrtoLinklist(List array){
  if(array.isNotEmpty){
    head = Node(array[0]);
    Node? current = head;

    for(int i=1; i<array.length; i++){
      Node newNode = Node(array[i]);
      current!.next = newNode;
      current = newNode;
    }
  }
}

void printlist(){
  Node? temp = head;
  while (temp!=null) {
    print(temp.data);
    temp = temp.next;
  }
}
}