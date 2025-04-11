void main() {
  // reverse list
  print(reverseList([1, 2, 3, 4]));

  // find min
  print(findMin([4, 2, 3, 4, 1, 2312]));

  // removeAll
  print(removeAll([1, 2, 3, 4, 5, 6, 11, 1], 1));

  // find min
  print(findMinum([1, 2, 3, 4, 5]));

  // loops
  // loops([1, 2, 3, 4, 13, 4, 2]);

  // sumN
  sumN(20);

  // times
  // times(20);

  // returned(10);

  // times
  // timesN(10);

  factorial(5);
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

int findMinum(List<int> numbers) {
  int defaultNum = numbers[0];
  for (int num in numbers) {
    if (num < defaultNum) {
      defaultNum = numbers[num];
    }
  }
  return defaultNum;
}

void loops(List<int> lists) {
  for (int i = 0; i < lists.length; i++) {
    for (int j = i + 1; j < lists.length; j++) {
      print("J:${lists[j]} --- I:${lists[i]}");
    }
  }
}

void sumN(int number) {
  int counter = 0;
  for (int i = 1; i <= number; i++) {
    counter += i;
  }
  print("summ of $number is $counter");
}

void returned(int number) {
  for (int i = number; i >= 0; i--) {
    print(i);
  }
}

void timesN(int number) {
  for (int i = 1; i < 10; i++) {
    print("$number * $i = ${number * i}");
  }
}

void factorial(int number) {
  int counter = 1;
  for (int i = number; i >= 1; i--) {
    counter *= i;
    print(counter);
  }
}


