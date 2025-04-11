import 'dart:math';

void main() {
  // random method
  final random = Random();

  // puttin random numbers
  List<int> numbers = List.generate(50, (_) => random.nextInt(1000));

  // our times start
  final stopWatch = Stopwatch()..start();

  // out function printing
  print(bubbleSorting(numbers));

  // timer stopped
  stopWatch..stop();

  // printing the time
  print("time of this algorithm is ${stopWatch.elapsedMilliseconds}");

  from1to100(100);

  findMax([3, 4, 5, 6]);

  findSum([3, 4, 5, 6]);

  palidrome(["s", 'w', 'h']);
}

List<int> bubbleSorting(List<int> arr) {
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

void from1to100(int number) {
  for (int i = 1; i < number; i++) {
    if (i % 3 == 0) {
      print("$i Fizz");
    } else if (i % 5 == 0) {
      print("$i Buzz");
    }
    ;
  }
}

void findMax(List<int> numbers) {
  int defaultNum = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > defaultNum) {
      defaultNum = numbers[i];
    }
  }
  print("max num is $defaultNum");
}

void findSum(List<int> arr) {
  int counter = 0;
  for (int i = 0; i < arr.length; i++) {
    counter += arr[i];
  }
  print("The sum of array is $counter");
}

void palidrome(List<String> word) {
  List<String> reversed = [];
  for (int i = word.length - 1; i >= 0; i--) {
    reversed.add(word[i]);
  }
  if (word == reversed) {
    print("true");
  } else {
    print('fasle');
  }
  print(reversed);
}
