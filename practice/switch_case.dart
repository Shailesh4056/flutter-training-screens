void switchCase(){
  int a =1000000000000000000;
  print("$a");

  BigInt longnumber;
  longnumber = BigInt.parse("100000000000000000002255555554884444848454454484848455454545445");
  print("$longnumber");
  int number =5;
  switch (number) {
    case 0:
      print("Zero");
      break;
    case 1:
      print("One");
      break;
    case 2:
      print("Two");
      break;
    case 3:
      print("Three");
      break;
    case 4:
      print("Four");
      break;
    case 5:
      print("Five");
      break;
    case 6:
      print("Six");
      break;
    case 7:
      print("Seven");
      break;
    case 8:
      print("Eight");
      break;
    case 9:
      print("Nine");
      break;
    default:
      print("Enter a valid number");
  }

}