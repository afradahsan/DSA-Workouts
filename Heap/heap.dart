class MaxHeap{

  List elements = [];

  void insert(int value){
    elements.add(value);
    heapifyUpwards(elements.length-1);
  }

  dynamic heapifyUpwards(int index){
    if(index==0) return;
    int parentindex = parent(index);
    if(elements[index] > elements[parentindex]){
      swap(index, parentindex);
      heapifyUpwards(parentindex);
    }
  }

  void buildHeap(List elements){
    this.elements = elements;
    for(int i=parent(elements.length-1); i>=0; i--){
      heapifyDownwards(i);
    }
  }

  dynamic heapifyDownwards(int index){
    int leftchild = left(index);
    int rightchild = right(index);
    int largest = index;

    if(leftchild<elements.length && elements[leftchild] > elements[largest]){
      largest = leftchild;
    }
    if(rightchild < elements.length && elements[rightchild] > elements[largest]){
      largest = rightchild;
    }

    if(largest!=index){
      swap(index, largest);
      heapifyDownwards(largest);
    }
  }

  dynamic swap(int index, int largest){
    int temp = elements[index];
    elements[index] = elements[largest];
    elements[largest] = temp;
  }

  int remove(){
    int top = elements[0];
    elements[0] = elements.removeLast();
    heapifyDownwards(0);
    return top;
  }

  void displaylist(){
    print(elements);
  }
  parent(index) => (index-1)~/2;
  left(index) => index*2+1;
  right(index) => index*2+2;
}

void main(){
  MaxHeap heap = MaxHeap();

  // List elements = [8,5,6,10,4];

  // heap.buildHeap(elements);
  // print(heap.elements);

  heap.insert(8);
  heap.insert(5);
  heap.insert(6);
  heap.insert(10);
  heap.insert(4);

  print(heap.remove());

  heap.displaylist();
}