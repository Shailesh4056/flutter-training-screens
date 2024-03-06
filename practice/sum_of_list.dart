void sumOfList() {
  List<int> list1 = [5, 6, 2, 8];
  List<int> list2 = [5, 6, 2, 8];
  ///sum of all elements in the list.
  int sum = 0;
  for (int i = 0; i < list1.length; i++) {
    sum += list1[i];
  }
  print("$sum");
}
