void palindrome() {
  var value = "kayak";
  String reversString = value.toLowerCase().split("").reversed.join();
//palindrome program
  if (value == reversString) {
    print("palindrome");
  } else {
    print("not palindrome");
  }
  print(reversString);
}
