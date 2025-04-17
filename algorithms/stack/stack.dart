void main() {
  myStack stack = myStack();

  stack.push(10);
  stack.push(20);
  stack.push(30);

  print(stack.toString());

  stack.removeL();
  print(stack.toString());

  print(stack.isEmpty());

  stack.peek();
}

class myStack<T> {
  List<T> stack = [];

  // push method
  void push(T number) {
    stack.add(number);
  }

  // remove last
  void removeL() {
    stack.removeLast();
  }

  void peek() {
    if (stack.isEmpty) return null;
    print(stack.last);
  }

  bool isEmpty() {
    if (stack.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return stack.toString();
  }
}
