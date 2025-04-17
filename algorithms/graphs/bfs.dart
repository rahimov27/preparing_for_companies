import 'dart:collection';

void main() {
  Map<String, List<String>> graph = {
    'A': ['B', 'C'],
    'B': ['D', "E"],
    'C': ['F'],
    'D': [],
    'E': ['E'],
    'F': [],
  };

  bfs(graph, 'A');
}

void bfs(Map<String, List<String>> graph, String start) {
  Queue<String> queue = Queue();
  Set<String> visited = {};

  queue.add(start);
  visited.add(start);

  while (queue.isNotEmpty) {
    String node = queue.removeFirst();
    print("Посетили $node");

    for (String neighbor in graph[node] ?? []) {
      if (!visited.contains(neighbor)) {
        queue.add(neighbor);
        visited.add(neighbor);
      }
    }
  }
}
