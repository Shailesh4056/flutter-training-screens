void operators(){
  int a = 50;
  int b = 20;
  if(a==b){
    print("both values are equal");
  }
  else{
    print("both values are not equal");
  }
  print("a is less then b: ${a>b}");
  print("a is granter then b:${a<b}");
  print("Equals to:${a==b}");
  print("Not equal to:${a!=b}");

  bool x = true, y=false;
  print("And:${x && y}");
  print("OR ${x}");
  print("Not ${!x}");

  print("Type test ${a is int}");
  print("Type ${a is! String}");

  int number =5;
   number++;
   print("increment is $number");
   number--;
   print("decrement $number");
   int result = a>b ? a:b;
   print("$result");
}
