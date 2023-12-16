void main(){

}

class Node{
  int? data;
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
  
  Node? nodeAt(int index){
    Node? currentNode = head;
    int currentIndex = 0;

    while(currentNode!=null && currentIndex<index){
      currentNode = currentNode.next;
      currentIndex++;
    }
    return currentNode;
  }

  void delete(Node node){
    Node? temp = null;
    if(head!=null){
      temp = node;
      temp.next = null;
      
    }
  }
}

int binarySearch(List array, int target){
  int start = 0;
  int end = array.length-1;

  while (start<end) {
    int mid = (start + (end-start)/2).toInt();

    if(array[mid]==target){
      return mid;
    }
    else if(array[mid]<target){
      end = mid-1;
    }
    else if(array[mid]>target){
      start = mid+1;
    }
  }
}