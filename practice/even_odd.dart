import 'dart:io';

void evenOdd(){
  stdout.write("Enter a number of records ");
  int number = int.parse(stdin.readLineSync()!);
  List<int> num = [];
  List<int> oddNumbers = [];
  List<int> modified = [];
  print(number);
  for(int i= 0;i<number;i++){
    num.add(int.parse(stdin.readLineSync()!));
  }
  for(int j =0; j<num.length;j++){
    if(num[j]%2==0){
      print("The number is even ${num[j]}");
    }
    else{
      oddNumbers.add(num[j]);
      modified.add(num[j]*2);
      print("The number is odd ${num[j]}");

    }
  }
  print(num);
  print("odd number list is $oddNumbers");
  print("odd modified number list is $modified");
}
