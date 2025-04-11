import 'dart:math';

void main() {
  final random = Random();

  final numbers = List.generate(50, (_) => random.nextInt(1000));

  final stopWatch = Stopwatch()..start();
  print(selectionSorting(numbers));
  stopWatch..stop();
  print("time of this algorithm is ${stopWatch.elapsedMilliseconds}");
}

List<int> selectionSorting(List<int> arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (arr[j] < arr[minIndex]) {
        minIndex = j;
      }
    }
    int temp = arr[i];
    arr[i] = arr[minIndex];
    arr[minIndex] = temp;
  }
  return arr;
}
