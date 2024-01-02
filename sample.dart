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

  void insert(int data){
    Node? currentNode = root;
    if(root==null){
      root = Node(data);
      return;
    }

    while (true){
      if(data<currentNode!.data!.toInt()){
      if(currentNode.left == null){
        currentNode.left = Node(data);
        break;
      }else{
        currentNode = currentNode.left;
      }
    }
      else{
        if (currentNode.right == null) {
          currentNode.right = Node(data);
          break;
        }
        else{
          currentNode = currentNode.right;
        }
      }
    }
  }

  void remove(int data){
    root = removehelper(root, data);
  }

  Node minValue(Node node){
    while (node.left!=null) {
      node = node.left!;
    }
    return node;
  }

  Node? removehelper(Node? root, int data){
    if(root==null){
      return root;
    }

    if (data<root.data!.toInt()) {
      root.left = removehelper(root.left, data);
    }
    else if(data>root.data!.toInt()){
      root.right = removehelper(root.right, data);
    }else{
      //3 Conditions:
      // (i) Zero child
      if(root.left == null && root.right == null){
        return null;
      }

      // (ii) Only one child.
      if(root.left == null){
        return root.right;
      }
      if(root.right == null){
        return root.left;
      }

      // (iii) Two childs.

      Node? successor = minValue(root.right!);
      root.data = successor.data;
      root.right = removehelper(root.right, successor.data!);
    }
    return root;
  }
}

void main(){
  BST bst = BST();

  bst.insert(10);
  bst.insert(5);
  bst.insert(15);

  bst.remove(10);

  bst.displayInOrder();
}