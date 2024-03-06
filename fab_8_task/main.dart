// import 'dart:io';
//
// import 'null_safety.dart';
// import 'library_management.dart';
import 'library_management.dart';
import 'task_4.dart';
void main(){
  /// nul safety operation
  // Person person = Person();
  // person.age=20;
  // person.email="shailesh2003th@gmail.com";
  //person.personDetails();
  /// library management system
  Book book  =  Book(1, "dart", BookStatus.available);

  book.choice();
  Library library = Library(1, "dart", "shailesh", "available");
  library.choice();
  Task4 task4 = Task4();
  /// calculatingDiscount function
  task4.calculatingDiscount();
  /// positiveNumber function
  task4.positiveNumber();
  ///temperature function
  task4.temperature();
  ///calling studentGrade
  task4.studentGrade();
  /// calling monthNumber function
  task4.monthNumber();
  /// sumOfEven function
  task4.sumOfEven();
}