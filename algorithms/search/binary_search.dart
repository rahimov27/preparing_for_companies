void main() {
  // List<int> numbers = [551, 874, 292, 631, 39, 459, 342, 435, 956, 126];

  // numbers.sort();
  // print(numbers);
  // print(binarySearch(numbers, 874));

  rotate([1, 2, 3, 4, 5, 6, 7], 3);
}

int binarySearch(List<int> arr, int target) {
  int left = 0;
  int right = arr.length - 1;

  while (left <= right) {
    int mid = left + ((right - left) ~/ 2);

    if (arr[mid] == target) {
      return mid;
    } else if (arr[mid] < target) {
      left = mid + 1;
    } else if (arr[mid] > target) {
      right = mid - 1;
    }
  }

  return -1;
}

void rotate(List<int> nums, int k) {
  int n = nums.length;
  k = k % n;

  List<int> rotated = nums.sublist(n - k) + nums.sublist(0, n - k);

  nums.clear();
  nums.addAll(rotated);
}
