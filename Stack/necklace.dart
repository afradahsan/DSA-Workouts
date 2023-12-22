//Your best friend has a very interesting necklace with n pearls. On each of the pearls of the necklace there is an integer. However, your friend wants to modify the necklace a bit and asks you for help. She wants to move the first pearl k spots to the left (and do so with all other pearls).
//For example: if the necklace was originally 1,5,3,4,2 and k=2, now it becomes 3,4,2,1,5 Help your best friend determine how the necklace will look after the modification.
//https://www.codechef.com/practice/course/stacks-and-queues/STAQUEF/problems/NEC

void main() {
  List<int> necklace = [1, 5, 3, 4, 2];
  int k = 2;

  List<int> modifiedNecklace = modifyNecklace(necklace, k);
  print(modifiedNecklace);
}

List<int> modifyNecklace(List<int> necklace, int k) {
  int n = necklace.length;
  List<int> modified = List.filled(n, 0);

  for (int i = 0; i < n; i++) {
    int newPosition = (i - k + n) % n; // Calculate new position after shifting
    modified[newPosition] = necklace[i]; // Place the element in the new position
  }

  return modified;
}
