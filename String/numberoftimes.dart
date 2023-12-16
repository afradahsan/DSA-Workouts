// Program to find the number of times a single char occurs in a string.

void main() {
  String str = 'aabcdde';
  print(numberOfTimes(str));
}

Map<String, int> numberOfTimes(String str) {
  Map<String, int> count = {};
  for (int i = 0; i < str.length; i++) {
    if (count.containsKey(str[i])) {
      count[str[i]] = count[str[i]]!+1;
    } else {
      count[str[i]] = 1;
    }
  }
  return count;
}