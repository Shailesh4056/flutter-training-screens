import 'dart:io';

void shuffling() {
  List<int> list1 = [5, 6, 2, 8];
  List<int> list2 = [5, 6, 2, 8];
  list1.shuffle();
  list2.shuffle();
  print(list1);
  print(list2);
  List<int> combineList = [...list1, ...list2];
  combineList.shuffle();
  print(combineList);
  combineList.sort();
  print(combineList);


  /// Removing all the duplicate elements from list
  List<int> uniqueNumbersList = combineList.toSet().toList();
  print(uniqueNumbersList);
  specificElements();
}

///find a specific element
void specificElements() {
  stdout.write("Please enter a number of records");
  int numOfRecords = int.parse(stdin.readLineSync()!);

  List<String> list1 = [];
  for (int i = 0; i < numOfRecords; i++) {
    list1.add(stdin.readLineSync()!);
  }
  stdout.write("Please enter a searching records");
  String value = stdin.readLineSync()!;

  for (int i = 0; i < list1.length; i++) {
    if (value == list1[i]) {
      print(list1[i]);
    } else {
      print("$value is not found");
    }
  }
  int count = list1.fold(0, (int acc, String curr) => acc+1);
  print(count);
  print(list1);
}
