void main(){

  if(LineCount==null){
    LineCount = 1;
  }
  else{
    LineCount = 0;
  }

  print("hello word");
  print(Name);
  print(LineCount);
  print(age);
  print(manyobject);
  print(weight);
  checkLate();
}
int? LineCount;
String? Name;
var age = '22';
var weight = '70.5';
var humane  = 'true';
var manyobject = ['Shailesh','Sharma','daveloper'];
var name = 'bob';

final String nickname = 'bobby';


late String Fname;
void checkLate(){
  Fname ='Shailesh sharma';
  name = 'don';
  print(Fname);
  print(name);
  print(atm);
}


const bar = 1000000;
const double atm = 1.0135*bar;