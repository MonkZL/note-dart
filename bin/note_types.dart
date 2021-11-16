void noteTypes() {
  //TODO String
  String str = "123";
  print(str);

  //多行可以使用3个 单引号 或者 双引号
  String str1 = '''123
  123
  123
  123''';
  print(str1);

  String str2 = """123
  123
  123
  123""";
  print(str2);

  //字符串拼接
  print("$str,$str1,$str2");

  //TODO int
  int a = 123;

  //TODO double
  double b = 123.1;

  //TODO 运算符 + - * /
  print(1 * 10);

  //TODO bool
  bool flag = true;

  var num1 = 123;
  var num2 = '123';
  if (num2 == num1) {
    print('num2=num1');
  } else {
    print('num2!=num1');
  }

  //TODO List
  // 第一种定义方式
  var l1 = ['zl', 20, true];
  print(l1);
  print(l1.length);
  print(l1[0]);
  // 第二种定义方式
  var l2 = <String>["zl", "yz", "zxx"];
  print(l2);
  print(l2.length);
  print(l2[0]);
  l2.add("zdd");
  // 第三种定义方式
  var l3 = [];
  l3.add(1);
  l3.add(2);
  l3.add(3);
  print(l3);
  // 第四种定义方式 a fixed-length list 固定长度的集合
  var l4 = List.filled(10, "-");
  print(l4);
  //l4.add("value"); //这种方式创建的集合是不能新增数据的
  //l4.removeAt(1); //这种方式创建的集合是不能删除数据的
  //l4.length = 0; //这种方式创建的集合是不能修改集合长度的
  //总结 这种集合是不能修改集合长度的

  //TODO map
  // 第一种定义方式
  var person1 = {"name": "zl", "age": 27};
  print(person1);
  print(person1["name"]);
  // 第二种定义方式
  var person2 = new Map();
  person2["name"] = "zl";
  person2["age"] = 27;
  print(person2);
  print(person2["name"]);

  //TODO is关键词
  var str3 = "zl";
  print('str3 is String : ${str3 is String}');
}
