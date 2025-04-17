import 'dart:math';

void main() {
  final random = Random();
  final numbers = List.generate(5, (_) => random.nextInt(1000));

  print("Before sorting $numbers");

  print("After sorting ${quickSort(numbers)}");
}

List<int> quickSort(List<int> arr) {
  if (arr.length < 1) return arr;

  // choose middle element pivot
  int pivot = arr[arr.length ~/ 2];

  // less array
  List<int> less = [];

  // equal array
  List<int> equal = [];

  // greater array
  List<int> greater = [];

  for (var element in arr) {
    if (element < pivot) {
      less.add(element);
    } else if (element > pivot) {
      greater.add(element);
    } else {
      equal.add(element);
    }
  }
  return [...quickSort(less), ...equal, ...quickSort(greater)];
}

List<int> quickSorting(List<int> arr) {
  int pivot = arr[arr.length ~/ 2];

  List<int> less = [];
  List<int> equal = [];
  List<int> greater = [];

  for (var element in arr) {
    if (element < pivot) {
      less.add(element);
    } else if (element > pivot) {
      greater.add(element);
    } else {
      equal.add(element);
    }
  }
  return [...quickSorting(less), ...equal, ...quickSort(greater)];
}
