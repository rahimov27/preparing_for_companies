void main() {
  List<int> array = [1, 124, 3, 25, 32, 13, 454, 2];

  print(selectionSort(array));
}

List<int> selectionSort(List<int> array) {
  // length of array
  int length = array.length;

  // loop
  for (int i = 0; i < length - 1; i++) {
    int minIndex = i;
    for (int j = i + 1; j < length; j++) {
      if (array[j] < array[minIndex]) {
        minIndex = j;
      }
      int temp = array[i];
      array[i] = array[minIndex];
      array[minIndex] = temp;
    }
  }
  return array;
}
