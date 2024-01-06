import 'dart:collection';

class Graph{
  Map <int, List<int>> map = HashMap();

  void addVertex(int data){
    map[data] = [];
  }

  void insert(int vertex, int edge, bool isBidir){
    if(!map.containsKey(vertex)){
      addVertex(vertex);
    }

    if(!map.containsKey(edge)){
      addVertex(edge);
    }

    map[vertex]!.add(edge);
    if(isBidir){
      map[edge]!.add(vertex);
    }
  }

  void display(){
    for(var key in map.keys){
      print('$key: ${map[key]}');
    }
  }
} 

void main(){
  Graph graph = Graph();

  graph.insert(3, 5, true);
  graph.insert(3, 4, true);
  graph.insert(5, 6, false);

  graph.display();
}