void string_functions() {
  String message = "Hello Shailesh";

  int length = message.length;
  print("Length of the string: $length");

  String Message2 = " Welcome!";
  String combinedMessage = message + Message2;
  print("Combined message: $combinedMessage");


  String substring = message.substring(0, 10);
  print("Substring: $substring");


  String uppercaseMessage = message.toUpperCase();
  String lowercaseMessage = message.toLowerCase();
  print("Uppercase: $uppercaseMessage, Lowercase: $lowercaseMessage");

  bool containsSubstring = message.contains("Shailesh");
  print("Contains 'Shailesh': $containsSubstring");
}