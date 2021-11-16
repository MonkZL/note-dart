//TODO class
class Person {
  String name = "";
  int age = 0;

  //TODO 构造函数 只能有一个构造函数
  Person({String name1 = 'zl', int age1 = 27}) {
    name = name1;
    age = age1;
  }

  //TODO 命名构造函数 可以有多个
  Person.now({String name1 = 'zl', int age1 = 27}) {
    print('命名构造函数 now ');
  }

  //TODO 命名构造函数 可以有多个
  Person.now1({String name1 = 'zl', int age1 = 27}) {
    print('命名构造函数 now1 ');
  }

  void getInfo() {
    print('$name,$age');
  }

  //TODO 方法前加下划线 将其变为私有
  void _privateFun() {}

  //TODO 参数前加下划线 将其变为私有
  final String _privateValue = "";

  //TODO 静态属性和方法
  static String info = "info";

  static String getStaticInfo() {
    return info;
  }
}

class Rect {
  num height;
  num width;

  Rect(this.height, this.width);

  //Rect():height=10,width=10; // TODO 默认参数

  get area {
    return height * width;
  }

  set areaHeight(value) {
    height = value;
  }
}

//TODO 继承
class Util {
  String name;
  String version;

  Util(this.name, this.version);

  printInfo() {
    print('name:$name,version:$version');
  }
}

class ScreenUtil extends Util {
  String user;

  ScreenUtil(String name, String version, this.user) : super(name, version);

  @override
  printInfo() {
    print("name:$name,version:$version,user:$user");
  }
}

//TODO abstract 抽象类
abstract class Animal {
  String name;

  Animal(this.name);

  void run();
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void run() {
    print('狗$name在跑');
  }

  void eat(){
    print('狗$name在吃');
  }
}

void noteClass() {
  //TODO class
  Person().getInfo();
  Person(name1: "zl").getInfo();
  Person(name1: "zl", age1: 27).getInfo();

  print('------------');

  Person.now().getInfo();
  Person.now(name1: "zl").getInfo();
  Person.now(name1: "zl", age1: 27).getInfo();

  print('------------');

  Person.now1().getInfo();
  Person.now1(name1: "zl").getInfo();
  Person.now1(name1: "zl", age1: 27).getInfo();

  print('------------');

  //TODO getter setter
  var rect = Rect(10, 50);
  print('area : ${rect.area}');
  rect.areaHeight = 100;
  print('area : ${rect.area}');

  print('------------');

  //TODO 条件运算符 ?.
  //TODO 类型判断 is
  var p1 = Person();
  print('p1 is Person : ${p1 is Person}');
  //TODO 类型转换 as
  var p2;
  p2 = '';
  p2 = Person();
  (p2 as Person).getInfo();
  //TODO 级联操作（连缀） ..
  var p3 = Person();
  p3
    ..name = "zxx"
    ..age = 1
    ..getInfo();

  print('------------');

  //TODO 继承
  ScreenUtil("屏幕工具", "1.0.0", "zl").printInfo();

  print('------------');

  //TODO abstract 抽象类
  Dog("tom").run();

  print('------------');

  //TODO 多态
  Animal animal = Dog("tom");
  animal.run();
  if(animal is Dog) animal.eat();
  (animal as Dog).eat();
}
