import 'dart:io';

abstract class Account {
  double balance = 0;
  Account(this.balance);
  /// deposit amount
  void deposit(double amount);
  ///withdraw amount
  void withdraw(double amount);
  /// check current balance
  double getBalance();
}
class SavingsAccount extends Account{
  double interestRate;
  SavingsAccount(super.balance,this.interestRate);
  @override
  void deposit(double amount) {
    balance+=amount;
    print("your current balance is $balance");
    calculateInterest(balance);
    choice();
    // TODO: implement deposit
  }
  /// calculating Interest
 double calculateInterest(double amount){
    double interest = amount*interestRate/100*12;
    balance = amount+interest;
    print("Your one year interest is $interest");
    print("your total balance is $interest+$amount = ${balance}");
    return interest;
  }
  @override
  void withdraw(double amount) {
    if(balance>=amount){
      balance-=amount;
      print("you withdraw successfully $amount /n your current balance is $balance");
      choice();
    }
    else{
      print("insufficient balance $balance");
      choice();
    }
    // TODO: implement withdraw
  }
  @override
  double getBalance() {
    // TODO: implement getBalance
    print(balance);
    choice();
    return balance;
  }

  void choice(){
    print("......................................................");
   print("press 1: For deposit\n"
        "press 2: For withdraw\npress 3: For check balance\nPress key which Transaction you want to perform");
    int choice = int.parse(stdin.readLineSync()!);
    switch(choice){
      case 1:
        stdout.write("Please enter a deposit amount");
        double amount = double.parse(stdin.readLineSync()!);
        deposit(amount);
        break;
      case 2:
        stdout.write("Please enter a withdraw amount");
        double amount = double.parse(stdin.readLineSync()!);
        withdraw(amount);
        break;
      case 3:
        getBalance();
        break;
      default:
        print("Please enter a valid number");
    }
  }
}
///CheckingAccount
class CheckingAccount extends Account {
  int account=0;
  double newBalance =0;
  CheckingAccount(super.balance);
  @override
  void deposit(double amount) {
    balance += amount;
    print("your current balance is $balance");
    choice();
    // TODO: implement deposit
  }

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("you withdraw successfully $amount /n your current balance is $balance");
      choice();
    }
    else {
      print("insufficient balance $balance");
      choice();
    }
    // TODO: implement withdraw
  }

  @override
  double getBalance() {
    // TODO: implement getBalance
    print(balance);
    choice();
    return balance;
  }
  void transfer(double amount){
    stdout.write("Please enter a account number of customer");
    account = int.parse(stdin.readLineSync()!);
    if (balance >= amount) {
      balance -= amount;
      newBalance+=amount;
      print("you transfer successfully in account number $account the amount is $amount\n your current balance is $balance");
      choice();
    }
    else {
      print("insufficient balance $balance");
      choice();
    }
  }

  void choice() {
    print("......................................................");
    print("press 1: For deposit\npress 2: For withdraw\npress 3: For check balance\n press 4: For check transfer amount\nPress key which Transaction you want to perform");
    int choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        stdout.write("Please enter a deposit amount");
        double amount = double.parse(stdin.readLineSync()!);
        deposit(amount);
        break;
      case 2:
        stdout.write("Please enter a withdraw amount");
        double amount = double.parse(stdin.readLineSync()!);
        withdraw(amount);
        break;
      case 3:
        getBalance();
        break;
      case 4:
        stdout.write("Please enter a transfer amount");
        double amount = double.parse(stdin.readLineSync()!);
        transfer(amount);
        break;
      default:
        print("Please enter a valid number");
    }
  }
}