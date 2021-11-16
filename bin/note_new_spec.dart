// TODO 可空类型
int? getNum(int? num) {
  return num;
}

// TODO 类型断言
void printStr(String? str) {
  try {
    print("str : ${str!.length}");
  } catch (e) {
    print(e);
  }
}

//TODO late 关键词 用于延迟初始化
class Person {
  late String name;

  void setName(String name) {
    this.name = name;
  }
}

//TODO required 关键词
class Person1 {
  //不指定默认值 就必须传入参数 使用 required 标注
  void printInfo(String name, {int age = 27, required String sex}) {
    print('name:$name,age:$age,sex:$sex');
  }
}

void noteNewSpec() {
  // TODO 可空类型
  int? num = 123;
  num = null;
  print('num : $num');

  print('--------');

  // TODO 类型断言
  printStr(null);
  printStr("zl");

  //TODO late 关键词 用于延迟初始化
  Person().setName("name");

  Person1().printInfo("name", sex: "sex");
}
