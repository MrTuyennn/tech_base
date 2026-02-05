List<int> findCommonSet(List<int> listA, List<int> listB) {
  Set<int> setA = Set.from(listA);
  Set<int> setB = Set.from(listB);

  Set<int> commonSet = setA.intersection(setB);
  return commonSet.toList();
}

void main() {
  List<int> listA = [1, 2, 3, 4, 5];
  List<int> listB = [4, 5, 6, 7, 8];

  List<int> commonElements = findCommonSet(listA, listB);
  print(commonElements); // Output: [4, 5]
}
