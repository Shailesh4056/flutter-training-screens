
double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}
String divideNum(double a, double b) {
  if (b != 0) {
    return (a / b).toString();
  } else {
    return "Cannot divide by zero.";
  }
}

void main(List<String> arg) {
double num1 = 10;
double num2 = 20;

// i done this program whith static value

  print("sum of ${num1} + ${num2} is ${add(num1, num2)} ");
  print("sub of ${num1} - ${num2} is ${subtract(num1, num2)} ");
  print("mul of ${num1} * ${num2} is ${multiply(num1, num2)} ");
  print("div of ${num1} / ${num2} is ${divideNum(num1, num2)} ");
}
