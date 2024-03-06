void stringConcatenation(){
  List<String> list = ["Shailesh","Sharma","!"];
  String concatenatedStrings = concatenateStrings(list);
  print(concatenatedStrings);

}
String concatenateStrings(List<String> string){

  String Result = string.fold(" ", (previousValue, element) => previousValue+element);
  return Result;
}