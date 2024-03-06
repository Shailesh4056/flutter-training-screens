import 'dart:io';

class Student {
  int ID;
  String Name;
  int Age;
  String Grade;
  Student(this.ID, this.Name, this.Age, this.Grade);
}
void printStudentInfo(Student student) {
  print("Id: ${student.ID}");
  print("name: ${student.Name}");
  print("Age: ${student.Age}");
  print("Grade: ${student.Grade}");
  print(".........................");
}

void updateStudentData(Student student, int newAge, String newGrade){
  if(newAge != null){
    student.Age = newAge;

  }
  if(newGrade != null){
    student.Grade =newGrade;
  }

}
void studentDatabase() {

  List<Student> studentRecords = [];

  late int ID;
  late String Name;
  late int age;
  late String Grade;


  stdout.write("Please enter how many records you want to insert");
  int numOfRecords = int.parse(stdin.readLineSync()!);

  for(int i = 1;i<=numOfRecords;i++) {
    stdout.write("Enter a Student id");
    ID = int.parse(stdin.readLineSync()!);
    stdout.write("Enter a student name");
    Name = stdin.readLineSync()!;
    stdout.write("Enter a Student age");
    age = int.parse(stdin.readLineSync()!);
    stdout.write("Enter a student Grade");
    Grade = stdin.readLineSync()!;
    // if(i==numOfRecords){
      Student newRerecord = Student(ID, Name, age, Grade);
      studentRecords.add(newRerecord);
      //printStudentInfo(newRerecord);
   // }
  }

  for(int i=0;i<studentRecords.length;i++){
    printStudentInfo(studentRecords[i]);
  }

  stdout.write("You Want to update your profile Type Yes/No");
  String choice = stdin.readLineSync()!;
  if(choice=="Yes"){
    //This code is for update
    stdout.write("Enter a new age");
    String newAgeInput = stdin.readLineSync()!;
    int? newAge = newAgeInput.isNotEmpty ? int.parse(newAgeInput):null;

    stdout.write("Enter a new Grade");
    String? newGrade = stdin.readLineSync();
    Student updateStudent = Student(ID, Name, newAge!, newGrade!);

    print("Loading data...........");
    printStudentInfo(updateStudent);
  }
  else if(choice=="No"){
    print("Thanks for Uploading Your Data.....");
    // printStudentInfo(rerecord);
  }
  else{
    print("invalid key please try again");
  }

}

