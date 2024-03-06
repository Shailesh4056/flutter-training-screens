class MethodsOfList{
  ///lists
  List<int> lis11 = [1,2,3,4,5,6,7];
  List<int> list2 = [8,9,10,11,12];
  var  list3 = ['shailesh','sharma','uttam','ajay','rao',1,2,3,5.23];

  ///sublist method program
  void sublist(){
   var sublist=  lis11.sublist(4);
   print(sublist);
  }
  ///shuffle Method program
  void shuffleMethod(){
   lis11.shuffle();
    print(lis11);
  }
  ///reversedMethod method program
  void reversedMethod(){
   var reversed =  lis11.reversed;
   print(reversed);

  }
  ///asMapMethod method program
  void asMapMethod(){
    var asMap = list3.asMap();
    print(asMap);
  }
  ///whereTypeMethod method program
  void whereTypeMethod(){
   var whereType=   list3.whereType<int>();
   print(whereType);
  }
  ///getRangeMethod method program
  void getRangeMethod(){
    var getRange = list3.getRange(2,5);
    print(getRange);
  }
  ///replaceRangeMethod method program
  void replaceRangeMethod(){
          list3.replaceRange(2, 4, [10,4,7,88,8,7,2]);
          print(list3);
  }
  ///firstWhereMethod method program
  void firstWhereMethod(){
    var firstWhere = lis11.firstWhere((i)=>i > 4);
    print(firstWhere);
  }
  ///singleWhere method program
  void singleWhere(){
    var singleWhere = lis11.firstWhere((i)=>i < 7 );
    print(singleWhere);
  }
  ///fold method program
  void fold(){
    var fold = lis11.fold(5, (i, j) => i+j);
    print(fold);
  }
  ///reduceMethod method program
  void reduceMethod(){
    var reduceMethod = lis11.reduce((i, j) =>i+j);
    print(reduceMethod);
  }
  ///followedByMethod method program
  void followedByMethod(){
    var followedBy = list3.followedBy(['sharma'].toList());
    print(followedBy);
  }
  ///takeMethod method program
  void takeMethod(){
    var take = list3.take(5);
    print(take);
  }
  ///anyMethod method program
  void anyMethod(){
    var any = lis11.any((element) =>element>2);
    print(any);
  }
  ///everyMethod method program
  void everyMethod(){
    var every = lis11.every((element) => element<2);
    print(every);
  }
  ///skipMethod method program
  void skipMethod(){
    var skip = list3.skip(5);
    print(skip);
  }
}