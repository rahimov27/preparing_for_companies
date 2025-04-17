import 'dart:math';

void main() {
  // создаем таймер stopwatch
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start(); // начинаем замер времени

  // генерация случайных чисел
  final random = Random();
  List<int> numbers = List.generate(100000000, (_) => random.nextInt(100));

  // Вызов линейного поиска
  print(linearSearch(numbers, 45));

  // Останавливаем таймер
  stopwatch.stop();

  // Выводим время выполнения
  print("Время выполнения: ${stopwatch.elapsedMilliseconds} миллисекунд");
}

int linearSearch(List<int> array, int target) {
  for (int i = 0; i < array.length; i++) {
    if (array[i] == target) {
      print("index: $i, target: ${array[i]}");
      return i;
    }
  }
  return -1; // возвращаем -1, если элемент не найден
}
