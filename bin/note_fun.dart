//TODO 方法定义
import 'dart:math';

void fun1() {
  print('info');
}

int fun2() {
  return 1;
}

//TODO 带参方法
void fun3(String value) {
  print(value);
}

//TODO 可选参数方法
void fun4(String value, [value1]) {
  print("$value,$value1");
}

//TODO 默认参数方法
void fun5(String value, [value1 = "default", value2]) {
  print("$value,$value1,$value2");
}

//TODO 命名参数方法
void fun6(String value, {value1 = "zl", value2}) {
  print("$value,$value1,$value2");
}

//TODO 把方法当做参数
void fun7(fun) {
  fun();
}

void noteFun() {
  //TODO 方法定义
  fun1();

  //TODO 方法内方法定义
  int fun2() {
    return 1;
  }

  print(fun2()); //注意这里调用的事上面这个 fun2

  //TODO 带参方法
  fun3('带参方法');

  //TODO 可选参数方法
  fun4("可选参数方法");

  //TODO 默认参数方法
  fun5("默认参数方法");

  //TODO 命名参数方法
  fun6("命名参数方法");

  //TODO 把方法当做参数
  //这一节 为匿名方法
  //() {
  //     print('把方法当做参数');
  //   }
  fun7(() {
    print('把方法当做参数');
  });

  //TODO 箭头函数
  List list = [1, 2, 3];
  list.forEach((element) => print(element));

  //TODO 匿名方法
  var printNum = () {
    print('匿名方法');
  };
  printNum();

  //TODO 自执行方法
  (() {
    print('自执行方法');
  })();

  //TODO 闭包 解决的问题就是 让数据 常驻内存 而且 不污染全局
  fn() {
    var a = 123;
    return () {
      a++;
      print(a);
    };
  }
  var fnb = fn();
  fnb();
  fnb();
  fnb();
}
