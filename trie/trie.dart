class Trie {
  TrieNode root = TrieNode();
  String endsymbol = '*';

  void populateSuffixTrie(String str) {
    for (int i = 0; i < str.length; i++) {
      insertSubstringstartingAt(i, str);
    }
  }

  void insertSubstringstartingAt(int index, String str) {
    TrieNode node = root;
    for (int i = index; i < str.length; i++) {
      String key = str[i];
      if (!node.children.containsKey(key)) {
        node.children[key] = TrieNode();
      }
      node = node.children[key]!;
    }
    node.children.putIfAbsent(endsymbol, () => TrieNode());
  }

  bool contains(String str) {
    TrieNode? node = root;
    for (int i = 0; i < str.length; i++) {
      String key = str[i];
      if (!node!.children.containsKey(key)) {
        return false;
      }
      node = node.children[key];
    }
    return node!.children.containsKey(endsymbol);
  }
}

class TrieNode {
  Map<String, TrieNode> children = {};
}

void main() {
  String str = 'mannan';
  Trie trie = Trie();
  trie.populateSuffixTrie(str);
  print(trie.contains('anna')); // Output: true
}
