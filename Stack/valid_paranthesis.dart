void main(){
  String input = "()";
  bool res = isValid(input);
  print(res);
}

bool isValid(String s) {
  List<String> stack = [];

  for (int i = 0; i < s.length; i++) {
    if (s[i] == '(') {
      stack.add('(');
    } else if (s[i] == ')') {
      if (stack.isEmpty || stack.last != '(') {
        return false; 
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}