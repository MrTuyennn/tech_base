int listNumber(List<int> ls) {
  if (ls.isEmpty) {
    print('Ls not empty');
  }
  int maxValue = ls[0];

  for (int i = 1; i < ls.length; i++) {
    if (ls[i] < maxValue) {
      maxValue = ls[i];
    }
  }
  return maxValue;
}

/// thuật toán
void sort(List<int> ls) {
  int n = ls.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (ls[j] < ls[j + 1]) {
        int temp = ls[j];
        ls[j] = ls[j + 1];
        ls[j + 1] = temp;
      }
    }
  }
}

/// sortAscending
List<int> sortAscending(List<int> ls) {
  final result = List<int>.from(ls);
  result.sort();
  return result;
}

/// sortDescending
List<int> sortDescending(List<int> ls) {
  final result = List<int>.from(ls);
  result.sort((a, b) => b.compareTo(a));
  return result;
}

void main() {
  /// *** tìm lớn nhất nhỏ nhất
  // List<int> ls = [1, 5, 454, 54, 32, 23];
  // int value = listNumber(ls);
  // print(value);

  /// *** sắp xếp giảm dần
  List<int> arr = [3, 7, 2, 9, 5];
  // sort(arr);
  // print(arr); // [9, 7, 5, 3, 2]
  final ls = sortAscending(arr);
  print(ls); // [2, 3, 5, 7, 9]
  // sortDescending(arr);
  // print(arr); // [9, 7, 5, 3, 2]
}
