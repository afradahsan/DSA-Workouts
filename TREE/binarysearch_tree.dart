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
        if(currentNode.left ==null){
        currentNode.left = Node(data);
        break;
      }
      else{
        currentNode = currentNode.left;
      }
      }
      else{
        if(currentNode.right == null){
          currentNode.right = Node(data);
          break;
        }
        else{
          currentNode = currentNode.right;
        }
      }
    }
  }

  void displayInOrder() {
    _inOrderTraversal(root);
  }

  void _inOrderTraversal(Node? root) {
    if (root != null) {
      _inOrderTraversal(root.left);
      print(root.data);
      _inOrderTraversal(root.right);
    }
  }

  bool contains(int data){
    bool a = false;
    Node? currentNode = root;
    while(currentNode!=null){
    if(data == currentNode.data){
      a = true;
    }
    if (data<currentNode.data!.toInt()) {
      currentNode = currentNode.left;
      if(currentNode!=null && currentNode.data == data){
        a = true;
      }
    }
    else{
      currentNode = currentNode.right;
      if(currentNode!=null && currentNode.data == data){
        a = true;
      }
    }}
    return a;
  }
}

void main(){
  BST bst = BST();

  bst.insert(10);
  bst.insert(5);

  bst.displayInOrder();

  print(bst.contains(1));
}