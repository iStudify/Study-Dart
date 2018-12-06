import 'Bicycel.dart';
import 'Rectangle.dart';
import 'Shape.dart';

String scream(int length) => "A ${'a' * length} h!";

void main() {
  var bike = Bicycle(2, 1);
  print(bike);
  bike.speedUp(10);
  print(bike);

  var rectangle = Rectangle(width: 10, height: 10);
  print(rectangle);

  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);

  /**
    * 将函数当做参数进行传递
    * 将函数直接赋值给变量
    * 对函数进行解构，只传递给函数一部分参数来调用它，让它返回一个函数去处理剩下的参数（也被称为柯里化）
    * 创建一个可以被党作为常量的匿名函数（也被称为 lambda 表达式，在 Java 的 JDK 8 release 中支持了 lambda 表达式）
  */

  final values = [1, 3, 5, 7, 9, 11, 20, 50];
  for (var length in values) {
    print(scream(length));
  }

  // 函数式编程
  values.map(scream).forEach(print);

  values.skip(1).take(6).map(scream).forEach(print);
}
