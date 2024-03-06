void mergeList() {
  ///program to merge two lists of integers into a single list.
  List<int> numbers = [5, 6, 2, 8];
  List<int> numbers2 = [1,2,3,4,5,6];
  numbers2+=numbers;
  print(numbers2);
}
