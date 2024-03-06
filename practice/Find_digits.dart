import 'dart:io';

void findDigits() {
  int originalNumber;
  stdout.write("Enter a number ");
  originalNumber = int.parse(stdin.readLineSync()!);
    int reversNumber;
    int reverseInt(int number) {
      String newNumber = number.toString();
      String reversString = newNumber.split("").reversed.join("");
      reversNumber = int.parse(reversString);
      return reversNumber;
    }
    reversNumber = reverseInt(originalNumber);
    while (originalNumber > 0) {
      int digits = originalNumber % 10;
      originalNumber ~/= 10;
      switch (digits) {
        case 0:
          print("Zero");
          break;
        case 1:
          print("One");
          break;
        case 2:
          print("Two");
          break;
        case 3:
          print("Three");
          break;
        case 4:
          print("Four");
          break;
        case 5:
          print("Five");
          break;
        case 6:
          print("Six");
          break;
        case 7:
          print("Seven");
          break;
        case 8:
          print("Eight");
          break;
        case 9:
          print("Nine");
          break;
        default:
          print("Enter a valid number");
      }
    }
  }