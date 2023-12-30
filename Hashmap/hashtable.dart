// class HashTable {
//   int? _size;
//   List<List<dynamic>>? _data;

//   HashTable(int size) {
//     _size = size;
//     _data = List<List<dynamic>>.filled(size, []);
//   }

//   int _hash(String key) {
//     int hash = 0;
//     for (int i = 0; i < key.length; i++) {
//       hash = (hash + key.codeUnitAt(i) * (i + 1)) % _size;
//     }
//     return hash;
//   }

//   void set(String key, dynamic value) {
//     int index = _hash(key);
//     _data[index].add([key, value]);
//   }

//   dynamic get(String key) {
//     int index = _hash(key);
//     for (var pair in _data[index]) {
//       if (pair[0] == key) {
//         return pair[1];
//       }
//     }
//     return null;
//   }
// }


// void main(){
//   HashTable myTable = HashTable(10);
//   myTable.set('apple', 20);
//   myTable.set('banana', 30);
//   myTable.set('cherry', 40);

//   myTable.get('banana');
// }