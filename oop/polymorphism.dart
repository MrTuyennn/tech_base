/// Polymorphism allows objects of different types to be treated as objects of a common type.
/// Dart supports polymorphism through method overriding.
/// Let's demonstrate polymorphism using our existing classes:
/// ***********
/// Đa hình là cho phép các đối tượng thuộc các loại khác nhau được coi là các đối tượng thuộc loại chung
/// ví dụ

abstract class Shape {
  // Abstract method
  void draw(); // bắt buôc lớp con phải override

  // Regular method
  void getInfo() {
    // lớp con không cần override lại
    print('This is a shape.');
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void draw() {
    print('Drawing a circle with radius $radius');
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  void draw() {
    print('Drawing a square with side $side');
  }
}

void main() {
  var myCircle = Circle(5.0);
  var mySquare = Square(4.0);

  drawShape(myCircle);
  drawShape(mySquare);
}

void drawShape(Shape shape) {
  shape.draw();
}
