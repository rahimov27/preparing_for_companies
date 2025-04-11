import 'dart:math';

void main() {
  final random = Random();
  List<int> numbers = List.generate(10, (_) => random.nextInt(1000));

  print("original list $numbers");
  print("sorted list $numbers");

  print(insertionSort(numbers));
}

List<int> insertionSort(List<int> arr) {
  for (int i = 1; i < arr.length; i++) {
    int key = arr[i];
    int j = i - 1;

    while (j < 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j--;
    }
  }
  return arr;
}
