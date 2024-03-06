void stringOperation(){
  String value = "kayak";
  int vCount = 0;
  for(var i = 0;i<value.length;i++){
  if(value[i]=='a' || value[i]=='e' || value[i]=='i' || value[i]=='o' || value[i]=='u'){
    vCount++;
  }
  }
  print(vCount);
 // Revers String Program

  String reversString = value.toLowerCase().split("").reversed.join();
  //palindrome program
  if(value == reversString){
    print("palindrome");
  }
  else{
    print("not palindrome");
  }
  print(reversString);
}