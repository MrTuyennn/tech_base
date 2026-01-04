///Mục đích: đóng gói các thuật toán/chiến lược khác nhau trong các class riêng, có thể thay đổi runtime.
///Khi dùng: nhiều thuật toán xử lý (sort, filter, payment).
///Ưu: mở rộng dễ;
///Nhược: nhiều class nhỏ.

abstract class SortStrategy {
  List<int> sort(List<int> data);
}

class AscSort implements SortStrategy {
  @override
  List<int> sort(List<int> data) => (List.of(data)..sort());
}

class DescSort implements SortStrategy {
  @override
  List<int> sort(List<int> data) => (List.of(data)..sort((a, b) => b - a));
}

class SortedList {
  SortStrategy strategy;
  SortedList(this.strategy);
  List<int> doSort(List<int> data) => strategy.sort(data);
}

/// final s = SortedList(AscSort());
///print(s.doSort([3,1,2])); // [1,2,3]
///s.strategy = DescSort();
///print(s.doSort([3,1,2])); // [3,2,1]
