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
        if(currentNode.left == null){
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

  /////////// ignore this; ⬇ /////////////////
  bool contain(int data){
    Node? currentNode = root;
    while(currentNode!=null){
    if(data == currentNode.data){
      return true;
    }
    if (data<currentNode.data!.toInt()) {
      currentNode = currentNode.left;
      if(currentNode!=null && currentNode.data == data){
        return true;
      }
    }
    else{
      currentNode = currentNode.right;
      if(currentNode!=null && currentNode.data == data){
        return true;
      }
    }}
    return false;
  }

  //Simpler logic, than above:
  
  bool contains(int data){
    Node? currentNode = root;
    while (currentNode!=null) {
      if(data==currentNode.data){
        return true;
      }
      else if(data<currentNode.data!){
        currentNode = currentNode.left;
      }
      else{
        currentNode = currentNode.right;
      }
    }
    return false;
  }

  remove(int data) {
    root = _remove(root, data);
  }

  Node _findMin(Node node){
    while (node.left!=null) {
      node = node.left!;
    }
    return node;
  }

  Node? _remove(Node? node, int data) {
    if (node == null) return null;

    if (data < node.data!.toInt()) {
      // navigating to the target to the left
      node.left = _remove(node.left, data);
    } else if (data > node.data!.toInt()) {
      // navigating to the target to the right
      node.right = _remove(node.right, data);
    } else {
      // data found
      // 0 children? remove;
      if (node.left == null && node.right == null) {
        return null;
      }

      // 1 child? return child;
      if (node.right == null) {
        return node.left;
      } else if (node.left == null) {
        return node.right;
      }

      // 2 children? findMin, make it root;
      Node? succesor = _findMin(node.right!);
      node.data = succesor!.data;
      node.right = _remove(node.right, succesor.data!);
    }
    return node;
  }
}

void main(){
  BST bst = BST();

  bst.insert(10);
  bst.insert(5);
  bst.insert(15);

  bst.remove(10);

  bst.displayInOrder();

  print(bst.contains(35));

  
}