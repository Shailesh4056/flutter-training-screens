void vowelsCount(){
  String value = "kayak";
  int vCount = 0;
  for(var i = 0;i<value.length;i++){
    if(value[i]=='a' || value[i]=='e' || value[i]=='i' || value[i]=='o' || value[i]=='u'){
      vCount++;
    }
  }
  print(vCount);
}