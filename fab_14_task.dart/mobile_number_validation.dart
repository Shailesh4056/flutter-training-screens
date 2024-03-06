import 'dart:io';

class Validation{
  void mobileNumber() {
    try {
      stdout.write("Please enter your mobile number");
      int number;
      int mobileNumber = 7041026469;
      number = int.parse(stdin.readLineSync()!);
      int length = '$number'.length;
      print(length);
      if (length==10 && number==mobileNumber) {
        print("your number is valid");
      }
      else if (length>10 &&number<10 && number!=mobileNumber) {
        print("Your number is not valid your number length is ${number.bitLength}");
      }
      else {
        print("enter a valid number");
      }
    }
    catch(e){
      print("Enter a numbers only $e");
    }
  }
}