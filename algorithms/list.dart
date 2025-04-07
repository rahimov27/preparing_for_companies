void main() {
  // reverse list
  print(reverseList([1, 2, 3, 4]));

  // find min
  print(findMin([4, 2, 3, 4, 1, 2312]));

  // removeAll
  print(removeAll([1, 2, 3, 4, 5, 6, 11, 1], 1));
}

// reverse list
List<int> reverseList(List<int> list) {
  List<int> reversed = [];
  for (int i = list.length - 1; i >= 0; i--) {
    reversed.add(list[i]);
  }
  return reversed;
}

// find min
int findMin(List<int> list) {
  int min = list[0];

  for (int i = 1; i < list.length; i++) {
    if (list[i] < min) {
      min = list[i];
    }
  }
  return min;
}

// removeAll
List<int> removeAll(List<int> list, int target) {
  List<int> result = [];
  for (int num in list) {
    if (num != target) {
      result.add(num);
    }
  }
  return result;
}
