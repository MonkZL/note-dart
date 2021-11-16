//TODO 泛型方法
T getData<T>(T value) {
  return value;
}

//TODO 泛型类
class Printer<T> {
  T t;

  Printer(this.t);

  void printInfo() {
    print('t : $t');
  }
}

//TODO 泛型接口
abstract class Cache<T> {}

void noteGeneric() {
  //TODO 泛型方法
  print('getData : ${getData<String>("data")}');

  print('--------');

  //TODO 泛型类
  Printer("zl").printInfo();
  Printer(getData).printInfo();
}
