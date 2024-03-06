void operatorUsage() {
  int a = 10, b = 5;
  print("Addition: ${a + b}");
  print("Subtraction: ${a - b}");
  print("Multiplication: ${a * b}");
  print("Division: ${a / b}");
  print("Modulus: ${a % b}");

  print("Greater than: ${a > b}");
  print("Less than: ${a < b}");
  print("Equal to: ${a == b}");
  print("Not equal to: ${a != b}");

  bool x = true, y = false;
  print("AND: ${x && y}");
  print("OR: ${x || y}");
  print("NOT: ${!x}");

  print("Type test: ${a is int}");
  print("Type test: ${a is! String}");

  // Increment-Decrement operators
  int num = 5;
  num++;
  print("Increment: $num");
  num--;
  print("Decrement: $num");

  int result = (a > b) ? a : b;
  print("Conditional operator: $result");

  List<int> numbers = [1, 2, 3];
  numbers
    ..add(4)
    ..add(5);
  print("Cascade notation: $numbers");
}