import 'dart:io';

void swapTwoNumbers() {
 int num1 = 10;
 int num2 = 20;
  // before swapping
  print("$num1");
  print("$num2");

  // Swapping logic
  int temp = num1 ;
  num1 = num2;
  num2 = temp;

  print("Swapped values: First = $num1, Second = $num2");
}
