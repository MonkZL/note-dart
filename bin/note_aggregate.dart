void noteAggregate() {
  //TODO List
  var l1 = <String>["a", "b", "c"];
  print(l1);
  //固定长度 List
  var l2 = List.filled(3, "fill");
  print(l2);

  //TODO Set
  var set = new Set();
  set.add('1');
  set.add('2');
  set.add('1');
  print(set);

  //TODO 去重
  var l3 = [1, 2, 3, 4, 1, 2];
  var set1 = l3.toSet();
  print(set1);
  print(set1.toList());

  //TODO Map
  var map = new Map();
  map["name"] = "zl";
  map["age"] = 27;
  print(map);
  print(map.keys.toList());
  print(map.values.toList());
}
