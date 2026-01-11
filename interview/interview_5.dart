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

void main() {
  // List<int> ls = [1, 5, 454, 54, 32, 23];
  // int value = listNumber(ls);
  // print(value);
  List<int> arr = [3, 7, 2, 9, 5];
  sort(arr);
  print(arr); // [9, 7, 5, 3, 2]
}
