import 'dart:math';

void noteOperator() {
  int a = 13;
  int b = 2;

  //TODO 算数运算符
  print(a + b);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(a ~/ b); //取整

  //TODO 比较运算符
  print(a == b);
  print(a != b);
  print(a > b);
  print(a < b);
  print(a >= b);
  print(a <= b);

  bool flag1 = true;
  bool flag2 = true;

  //TODO 条件运算符
  print(flag1 && flag2);
  print(flag1 || flag2);

  //TODO 基础赋值运算符
  int a1 = 10;
  int b1 = 10;
  int c1 = a1 + b1;

  // ??= 表示 前面为空 则赋值
  var b2 = null;
  b2 ??= 23;
  print(b2);

  var a2 = 100;
  var a3 = 100.0;
  print(a2 += 10);
  print(a2 -= 10);
  print(a2 *= 10);
  //print(a2 /= 10); //这个报错是因为 a2/10可能为double类型 而a2为int
  print(a3 /= 10);
  print(a2 %= 10);
  print(a2 ~/= 10);

  //TODO 条件表达式

  // if else
  var score = 59;
  if (score > 90) {
    print('优秀');
  } else if (score > 60) {
    print('及格');
  } else {
    print('不及格');
  }

  //switch case
  var sex = 'M';
  switch (sex) {
    case 'M':
      print('男');
      break;
    case 'W':
      print('女');
      break;
    default:
      print('none');
  }

  //三目运算符
  print(sex == 'M' ? '男' : '女');

  //??运算符
  var a5;
  var b4 = a5 ?? 10;
  print(b4);

  //TODO 类型转换
  //String -> int
  String str = "123";
  var num = int.parse(str);
  print(num += 1);
  //int -> String
  int num1 = 100;
  String str1 = num1.toString();
  print(str1);

  var str2 = "xxx";
  if (str2.isEmpty) {
    print('空');
  } else {
    print('不空');
  }
}
