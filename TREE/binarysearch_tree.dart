class Node{
  int? data;

  Node? left;
  Node? right;

  Node(int data){
    this.data = data;
    left = null;
    right = null;
  }
}

class BST{
  Node? root;

  void insert(int data){
    Node? currentNode = root;
    if(root==null){
      root = Node(data);
      return;
    }

    while (true) {
      if(data<currentNode!.data!.toInt()){
        currentNode.left = Node(data);
      }
      else{
        currentNode = currentNode.left;
      }
    }
  }
}