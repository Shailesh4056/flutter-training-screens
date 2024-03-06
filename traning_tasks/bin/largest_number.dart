void largestNumber() {
  List<int> numbers = [45, 78, 12, 67, 89, 23];

  // Finding the largest number using if condition
  int largest = numbers[0];
  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
  }

  print("The largest number is: $largest");
}