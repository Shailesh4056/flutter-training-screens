import 'dart:io';

enum Months  {january,february,march,april,may,june,july,august,september,october,november,december}
class Task4{
  ///calculatingDiscount discount
  void calculatingDiscount(){
    print("...............First program calculate Discount......... ");
    stdout.write("Please enter amount here");
    double amount = double.parse(stdin.readLineSync()!);

    if(amount>=100){
      double discount = amount*10/100;
      amount-=discount;
      print("you have to pay $amount");
    }
    else if(amount<=100){
      double discount = amount*5/100;
      amount-=discount;
      print("you have to pay $amount");
    }
  }
  /// find given number is positive or not
  void positiveNumber() {
    print("...............Second program find positive number......... ");
    stdout.write("Please enter a any number");

    try {
      int number = int.parse(stdin.readLineSync()!);
      if (number >= 0) {
        print("Number is positive $number");
      }
      else {
        print("Given number is negative");
      }
    }
    catch(e){
      print("There was an error $e");
    }
    print("Thanks You!");
  }

  /// find a temperature
  void temperature() {
    print("............... find a outside temperature......... ");
    stdout.write("Please enter temperature");

    try {
      int temperature = int.parse(stdin.readLineSync()!);
      if (temperature <= 0) {
        print("It's freezing outside The temperature is $temperature  degrees Celsius");
      }
      else {
        print("It's above freezing");
      }
    }
    catch(e){
      print("There was an error $e");
    }
    print("Thanks You!");
  }
  ///student's grade function
  void studentGrade(){
    print("...............find studentGrade using marks......... ");
    try{
      stdout.write("Please enter a student marks");
      int grade = int.parse(stdin.readLineSync()!);
      if(grade<=100 && grade>=90){
        print("The student grade is A marks:$grade");
      }
      else if(grade<=90 && grade>80){
        print("The student grade is B marks:$grade");
      }
      else if(grade<=80 && grade>70){
        print("The student grade is C marks:$grade");
      }
      else if(grade<=70 && grade>60){
        print("The student grade is D marks:$grade");
      }
      else if(grade<=60 && grade>=0){
        print("The student grade is Fail marks:$grade");
      }
      else{
        print("Enter a valid number");
      }
    }
    catch(e){
      print("There was an error $e");
    }
    print("Thank you");
  }

  /// find a month name using month number

   void monthNumber(){
     print("...............Find a month name using month number......... ");
    stdout.write("Please enter a month number");
    int month = int.parse(stdin.readLineSync()!);
    switch(month){
      case 1:
        print(Months.january.name);
        break;
      case 2:
        print(Months.february.name);
        break;
      case 3:
        print(Months.march.name);
        break;
      case 4:
        print(Months.april.name);
        break;
      case 5:
        print(Months.may.name);
        break;
      case 6:
        print(Months.june.name);
        break;
      case 7:
        print(Months.july.name);
        break;
      case 8:
        print(Months.august.name);
        break;
      case 9:
        print(Months.september.name);
        break;
      case 10:
        print(Months.october.name);
        break;
      case 11:
        print(Months.november.name);
        break;
      case 12:
        print(Months.december.name);
        break;
    }
   }

   void sumOfEven(){
     print("...............sum of all even numbers......... ");
    int result = 0;
    for(int i = 0;i<=50;i++){
      if(i%2!=0){
        result+=i;
      }
    }
    print(result);
   }
}