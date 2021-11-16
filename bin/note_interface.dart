//TODO 接口
abstract class Db {
  late String uri;

  add(String data);

  save();

  delete();
}

class Mysql implements Db {
  @override
  late String uri;

  Mysql(this.uri);

  @override
  add(String data) {
    print('$uri: Mysql add $data');
  }

  @override
  delete() {
    print('$uri: Mysql delete');
  }

  @override
  save() {
    print('$uri: Mysql save');
  }
}

//TODO 一个类实现多个接口
abstract class A {
  late String name;

  getInfo();
}

abstract class B {
  late String name;

  getInfo();
}

class C implements A, B {
  @override
  String name;

  C(this.name);

  @override
  getInfo() {
    print('name : $name');
  }
}

//TODO mixins 的类型就是其超类的子类型
class A1 {
  void printInfo() {
    print("A1");
  }

  void printAInfo() {
    print("A1");
  }
}

class B1 {
  void printInfo() {
    print("B1");
  }

  void printBInfo() {
    print("B1");
  }
}

//  A1 和 B1 是不能有构造函数的
class C1 with A1, B1 {
  @override
  void printBInfo() {
    print("C1");
  }
}

void noteInterFace() {
  //TODO 接口
  var mysql = Mysql("www.baidu.com");
  mysql.add("zl");
  mysql.delete();
  mysql.save();

  print('-----------');

  //TODO 一个类实现多个接口
  C("zl").getInfo();

  print('-----------');

  //TODO mixins
  C1 c1 = C1();
  c1.printAInfo();
  c1.printBInfo();
  c1.printInfo();
  print(c1 is C1);
  print(c1 is A1);
  print(c1 is B1);
}
