class myQueue<T> {
  List<T> _items = [];

  // Добавляем элемент
  void enqueue(T item) {
    _items.add(item);
  }

  // Удаление из начала очереди элемента
  T? dequeue() {
    if (isEmpty) return null;
    return _items.removeAt(0);
  }

  bool get isEmpty => _items.isEmpty;

  T? peek() {
    if (isEmpty) return null;
    return _items.first;
  }

  int get size => _items.length;

  @override
  String toString() {
    return _items.toString();
  }
}

void main() {
  myQueue queue = myQueue();

  queue.enqueue("Sagdii");
  print(queue.toString());
}
