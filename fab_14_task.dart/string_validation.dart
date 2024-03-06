import 'dart:io';

void stringValidation(){
  String firstName = "shailesh";
  String lastName  = "sharma";
  stdout.write("Enter your first name");
  String fName =  stdin.readLineSync()!;
  stdout.write("Enter your last name");
  String lName = stdin.readLineSync()!;
  if(fName==firstName && lName==lastName){
    print("Your first name and last name is ${firstName+lastName}");
  }
  else{
    print("Please enter a valid username and password");
  }
}