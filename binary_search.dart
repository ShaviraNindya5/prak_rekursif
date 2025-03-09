int binarySearchRecursive(List<int> arr, int left, int right, int target) {
  if (left > right) {
    return -1; // Elemen tidak ditemukan
  }
  
  int mid = left + (right - left) ~/ 2;
  
  if (arr[mid] == target) {
    return mid;
  } else if (arr[mid] > target) {
    return binarySearchRecursive(arr, left, mid - 1, target);
  } else {
    return binarySearchRecursive(arr, mid + 1, right, target);
  }
}

void main() {
  List<int> data = [2, 5, 8, 12, 16, 23, 38, 45, 56, 72, 91];
  int target = 23;

  int result = binarySearchRecursive(data, 0, data.length - 1, target);
  if (result != -1) {
    print("Elemen $target ditemukan pada indeks $result.");
  } else {
    print("Elemen $target tidak ditemukan.");
  }
}