import 'Bicycel.dart';
import 'Rectangle.dart';
import 'Shape.dart';

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
}
