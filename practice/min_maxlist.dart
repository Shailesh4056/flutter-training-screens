void minMaxList(){
  // Minimum and maximum number program
  List<int> numbers = [5, 6, 2, 8];
  int maximum = 0;
  int minimum = numbers[0];
  for (int j = 0; j < numbers.length; j++) {
    if (numbers[j] > maximum) {
      maximum = numbers[j];
    }
    if(numbers[j]<minimum){
      minimum = numbers[j];
    }
  }
  print(minimum);
  print(maximum);
}