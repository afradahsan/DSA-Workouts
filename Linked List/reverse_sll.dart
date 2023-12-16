class Node {
  int data;
  Node? next;

  Node(this.data);
}

Node? reverseLinkedList(Node? head) {
  Node? previous = null;
  Node? current = head;
  Node? next;

  while (current != null) {
    next = current.next; // Store the next node
    current.next = previous; // Reverse the pointer

    // Move pointers forward
    previous = current;
    current = next;
  }

  return previous; // New head of the reversed list
}



void printLinkedList(Node? head) {
  Node? temp = head;
  while (temp != null) {
    print(temp.data);
    temp = temp.next;
  }
}

void main() {
  Node head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);
  head.next!.next!.next = Node(4);
  head.next!.next!.next!.next = Node(5);

  print("Original Linked List:");
  printLinkedList(head);

  Node? reversedHead = reverseLinkedList(head);

  print("\nReversed Linked List:");
  printLinkedList(reversedHead);
}