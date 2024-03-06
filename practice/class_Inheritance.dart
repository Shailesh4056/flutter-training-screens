
class Shape {
  late String color;
  late double area;
  double pi = 3.14;

  void calculateArea() {
    print('Area calculation not implemented for the base class Shape.');
  }

  void displayProperties() {
    print('Color: $color');
    print('Area: $area');
  }
}

class Circle extends Shape {
  double radius;

  Circle(String color, this.radius);

  @override
  void calculateArea() {
    area = pi * radius * radius;
    print(area);
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(String color, this.length, this.width);

  @override
  void calculateArea() {
    area = length * width;
  }
}
