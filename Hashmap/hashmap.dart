import 'dart:collection';

void main(){
  HashMap map = HashMap<String, String>();

  map.putIfAbsent('Name', () => 'Afrad');
  map.putIfAbsent('Age', () => '21');
  map.putIfAbsent('Place', () => 'Calicut');
  
  print(map);
}