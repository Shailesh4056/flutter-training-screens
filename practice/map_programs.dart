// import 'dart:io';
//
// import 'alldatatypes.dart';
//
//
// void mapPrograms(){
//
//   stdout.write("Enter your name ");
//   var name =stdin.readLineSync();
//   stdout.write("Enter your age ");
//   var age = stdin.readLineSync();
//   stdout.write("Enter your wight ");
//   var wight = stdin.readLineSync();
//   List names = [name];
//   // var userDetails = {
//   //   'name': Name,
//   //   'age': Age,
//   //   'wight': Wight,
//   // };
//
//   print(names);
// }

import 'dart:io';

class Solution {
  Object twoSum(int nums, int target) {
    List<int> numbers=[nums];
    for(int k = 0;k<numbers.length;k++){
      numbers[k]= int.parse(stdin.readLineSync()!);
    }
   for(int i = 0; i<numbers.length;i++){
     for(int j = i+1;j<numbers.length;j++){
       if(numbers[i]+numbers[j]==target){
         return {i,j};
       }
     }
   }
   return
     { };

  }
}