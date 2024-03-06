import 'dart:developer';

import 'Find_digits.dart';
// import 'Student_Database.dart';
// import 'flutter_training/bill_splitting.dart';
import 'sum_of_list.dart';
import 'String_operations.dart';
import 'map_programs.dart';
import 'dart:io';
import 'class_Inheritance.dart';
import 'bill_splitting.dart';
import 'map_merging.dart';
import 'interfaces_implementation.dart';
import 'bankingApplication.dart';
import 'even_odd.dart';
import 'shuffling_and_combininglist.dart';
import 'hello_word.dart';
import 'list_fold.dart';
import 'vehicle_demo.dart';

void main() {
  ///map merging program
  // Map<String, int> map1 = {'a': 1, 'b': 2};
  // Map<String, int> map2 = {'c': 3, 'd': 4};
  // mapMerging(map1, map2);
  /// Bill Splitter program
  // print('Welcome to the Bill Splitter!');
  // double totalBill = getBillAmount();
  // int numberOfPeople = getNumberOfPeople();
  //
  // double amountPerPerson = calculateAmount(totalBill, numberOfPeople);
  //
  // print('\nEach person needs to contribute: \RS ${amountPerPerson.toStringAsFixed(2)}');
  ///studentDatabase program
  // studentDatabase();
  ///switchCase program
  // switchCase();
  // var circle = Circle('blue', 6).calculateArea();
  ///interface implementation
  // Guitar guitar = Guitar();
  // guitar.play();
  // BankAccount account = BankAccount(1000.0);
  // account.choice();
  /// odd  even program
  // evenOdd();
  /// sum of the list
  // sumOfList();
  ///shuffling list
  // shuffling();
  ///String Concatenation
  //   stringConcatenation();
  ///Banking application in dart.
//   print("......................................................");
//   print("press 1: For SavingsAccount\npress 2: For CheckingAccount");
//   int choice = int.parse(stdin.readLineSync()!);
//   if(choice==1) {
//     SavingsAccount savingsAccount = SavingsAccount(5000, 2);
//     savingsAccount.choice();
//   }
//   else if(choice==2){
//     CheckingAccount checkingAccount = CheckingAccount(3000);
//     checkingAccount.choice();
//   }
//   else{
//     print("Please enter a valid number");
//   }
    Car car= Car("20 jan", 2014, 500, 14, 25, 'petrol', "50km");
    car.distanceTravele();
    car.maximumSpeed();
    car.totalFuelEfficiency();
}
