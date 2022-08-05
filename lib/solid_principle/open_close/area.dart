// ignore_for_file: public_member_api_docs, sort_constructors_first

// # Open-closed Principle
// Objects or entities should be open for extension, but closed for modification.

import 'dart:math';

abstract class ShapeInterface {
  area();
}

class Circle implements ShapeInterface {
  double radius;

  Circle({
    required this.radius,
  });
  
  @override
  area() {
    return pi * pow(radius, 2);
  }
}

class Square implements ShapeInterface {
  double length;

  Square({
    required this.length,
  });

  @override
  area() {
    return pow(length, 2);
  }

}

class Rectangle implements ShapeInterface {
  double length;
  double width;

  Rectangle({
    required this.length,
    required this.width,
  });

  @override
  area() {
    return length * width;
  }

}

class AreaCalculator {
  ShapeInterface? shape;
  calculateArea(shape) {
    return shape.area();
  }
}


void main() {
  ShapeInterface circle = Circle(radius: 1);
  ShapeInterface square = Square(length: 2);
  AreaCalculator area = AreaCalculator();
  print(area.calculateArea(circle));
  print(area.calculateArea(square));
  ShapeInterface rectangle = Rectangle(length: 2, width: 3);
  print(area.calculateArea(rectangle));
}
