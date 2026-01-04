/// Abstraction involves hiding complex implementation details and showing only the necessary features of an object.
/// Dart achieves abstraction through abstract classes and methods.
/// Let's create an abstract class and extend it:
/// *********
/// Trừu tượng liên quan đến việc ẩn các chi tiết triển khai phức tạp và chỉ hiển thị các tính năng cần thiết của 1 đối tượng
/// Dart đạt được sự trừu tượng thông qua các lớp và các phương thức trừu tượng:

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

  myCircle.draw();
  myCircle.getInfo();

  mySquare.draw();
  mySquare.getInfo();
}
