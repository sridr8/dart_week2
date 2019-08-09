import 'dart:math' as math;

void main() {
  Circle circle = Circle(10);
  print('Area of Circle: ${circle.area()}');

  Cylinder cylinder = Cylinder(10, 8);
  print('Surface area of Cylinder: ${cylinder.area()}');
}

class Circle {
  double radius;

  Circle(double r) {
    radius = r;
    print("Circle class constructor");
  }

  double area() => math.pi * radius * radius;
}

class Cylinder extends Circle {
  double height;

  Cylinder(double radius, double height) : super(radius) {
    this.height = height;
    print("Cylinder class constructor");
  }

  double volume() {
    return math.pi * math.pow(radius, 2) * height;
  }

  double area() {
    return 2 * math.pi * radius * (radius + height);
  }
}
