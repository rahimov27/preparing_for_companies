void main() {
  // print(bubbleSort([3, 6, 1, 3, 7, 9]));
  // print(bubbleSortReversed([1, 2, 3]));

  // String star = "";
  // for (int i = 0; i < 10; i++) {
  //   star += "*";
  //   print(star);
  // }

  // for (int j = 9; j > 0; j--) {
  //   print("*" * j);
  // }

  // int height = 10;
  // for (int i = 1; i <= height; i++) {
  //   String spaces = " " * (height - i);
  //   String stars = "*" * i;
  //   print(spaces + stars);
  //   for (int j = 0; j < height; j++) {
  //     print("*" * j);
  //   }
  // }
  // for (int i = 9; i > 0; i--) {
  //   String spaces = " " * (height - i);
  //   String stars = "*" * i;
  //   print(spaces + stars);
  // }

  print(bubblesSort([3, 2, 1]));
}

// List<int> bubbleSort(List<int> array) {
//   int n = array.length;
//   for (int i = 0; i < n - 1; i++) {
//     for (int j = 0; j < n - i - 1; j++) {
//       if (array[j] > array[j + 1]) {
//         int temp = array[j];
//         array[j + 1] = array[j];
//         array[j] = temp;
//       }
//     }
//   }
//   return array;
// }

// List<int> bubbleSortReversed(List<int> arr) {
//   for (int i = 0; i < arr.length - 1; i++) {
//     for (int j = 0; j < arr.length - i - 1; j++) {
//       if (arr[j] < arr[j + 1]) {
//         int temp = arr[j];
//         arr[j] = arr[j + 1];
//         arr[j + 1] = temp;

//         print('Поменяли: ${arr[j + 1]} <-> ${arr[j]} => $arr');
//       }
//     }
//   }
//   return arr;
// }

List<int> bubblesSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
  return arr;
}
