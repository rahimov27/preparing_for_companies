import 'dart:math';

void main() {
  final random = Random();
  final numbers = List.generate(5, (_) => random.nextInt(1000));

  print("List of random numbers (original): $numbers");

  final sorted = mergeSort(numbers);
  print("After merge sorting algorithm: $sorted");
}

List<int> mergeSort(List<int> list) {
  // Если список из 0 или 1 элемента — он уже отсортирован
  if (list.length <= 1) {
    return list;
  }

  // Делим список на две части
  int middle = list.length ~/ 2;

  // Рекурсивно сортируем каждую половину
  List<int> left = mergeSort(list.sublist(0, middle));
  List<int> right = mergeSort(list.sublist(middle));

  // Сливаем две отсортированные половины
  return _merge(left, right);
}

List<int> _merge(List<int> left, List<int> right) {
  List<int> result = []; // Здесь будет результат
  int i = 0;
  int j = 0;

  // Пока есть элементы и в левом, и в правом списке
  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }

  // Добавляем оставшиеся элементы из левого и правого списков
  result.addAll(left.sublist(i));
  result.addAll(right.sublist(j));

  return result;
}
