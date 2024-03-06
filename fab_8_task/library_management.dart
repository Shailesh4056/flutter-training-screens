import 'dart:io';

enum BookStatus { available, checkedOut, reserved }
class Book {
  int id;
  String title;
  BookStatus status;
  String? borrower;
  Book(this.id, this.title, this.status);
  void choice(){
    stdout.write("Please enter your choice\n press:1 For book booking\n press:2 For reserveBook");
    int choice = int.parse(stdin.readLineSync()!);
    switch(choice){
      case 1:
        userBook("shailesh");
        break;
      case 2:
        reserveBook();
        break;
      default:
        print("Please Enter a valid key");
    }
  }
  ///check book is available or not
  void userBook(String? name) {
    stdout.write("Please enter your book title");
    String newTitle = stdin.readLineSync()!;
    if (title == newTitle && status == BookStatus.available) {
      print(name);
      print("book is available");
      borrower = name;
      print("Book is borrower by $borrower");
      status = BookStatus.checkedOut;
      choice();
    } else if (title == newTitle && status == BookStatus.checkedOut ||
        status == BookStatus.reserved) {
      print("Sorry this books is already reserved");
      choice();
    } else {
      print("Please enter a valid book name");
      choice();
    }
  }
/// reserveBook function
  void reserveBook() {
    stdout.write("Please enter your book title");
    String newTitle = stdin.readLineSync()!;
    if (title == newTitle && status == BookStatus.checkedOut ||
        status == BookStatus.reserved) {
       print("Thanks for returning a book:  $title");
       status == BookStatus.available;
       choice();
    }
  }
}
class Library{
  List<Library> records = [];
  late int id;
  late String title;
  late String author;
  late String status;
  Library(this.id, this.title, this.author,this.status);
  void choice(){
    stdout.write("Please enter your choice\n press:1 For add book\n press:2 For new Books");
    int choice = int.parse(stdin.readLineSync()!);
    switch(choice){
      case 1:
        addNewBook();
        break;
      case 2:
        displayBooks();
        break;
      default:
        print("Please Enter a valid key");
    }
  }
  ///add book in list function
  void addNewBook(){
    stdout.write("Please enter a how many records you want to insert in list");
    int numOfRecords = int.parse(stdin.readLineSync()!);
    for(int i = 0;i<numOfRecords;i++){
      stdout.write("Please enter book id");
      id = int.parse(stdin.readLineSync()!);
      stdout.write("Please enter book name");
      title = stdin.readLineSync()!;
      stdout.write("Please enter book author");
      author = stdin.readLineSync()!;
      status = BookStatus.available.name;
      Library newRecords = Library(id,title,author,status);
      records.add(newRecords);
    }
    choice();
  }
  ///display book function
  void displayBooks(){
    for(int i=0; i<records.length;i++){
      displayBookInfo(records[i]);
    }
    choice();
  }
  void displayBookInfo(Library library) {
    print("Id: ${library.id}");
    print("title: ${library.title}");
    print("author: ${library.author}");
    print("status ${library.status}");
    print(".........................");
  }
}
