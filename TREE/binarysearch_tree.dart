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

  Node? removeNode(Node? root, int data) {
    if (root == null) {
      return root;
    }

    if (data < root.data!) {
      root.left = removeNode(root.left, data);
    } else if (data > root.data!) {
      root.right = removeNode(root.right, data);
    } else {
      // Node with only one child or no child
      if (root.left == null) {
        return root.right;
      } else if (root.right == null) {
        return root.left;
      }

      // Node with two children: Get the in-order successor (smallest in the right subtree)
      root.data = minValue(root.right!);

      // Delete the inorder successor
      root.right = removeNode(root.right, root.data!);
    }
    return root;
  }

  int minValue(Node node) {
    int minValue = node.data!;
    while (node.left != null) {
      minValue = node.left!.data!;
      node = node.left!;
    }
    return minValue;
  }

  void remove(int data) {
    root = removeNode(root, data);
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