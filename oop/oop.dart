/// Object-oriented programming (OOP) is a programming paradigm that structures code using objects,
///  which are instances of classes.
///  Dart fully supports OOP principles, and this section provides a comprehensive exploration of key OOP concepts in Dart.
/// ***********
/// OOP là mô hình cấu trúc mã bằng cách sử dụng hướng đối tượng để thể hiện các lop81
/// Dart hổ trợ đầy đủ các nguyên tắc OOP và phần này cung cấp toàn diện về định về các khái niệm OOP chính trong Dart
///

/// ****  Classes and Objects
/// In Dart, a class is a blueprint for creating objects.
///  Objects are instances of classes and encapsulate data and behavior. Let's expand on the basic example:
/// ***********
/// Trong Dart, một lớp là một bản thiết kế để tạo ra các lớp đối tượng. Các đối tượng thể hiện của các lớp và đóng gói
/// dự liệu và hành vi. Ví dụ

class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  @override
  void makeSound() {
    print('Dog barks');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Breed: $breed');
  }
}

void main() {
  // Creating an instance of the Dog class
  var myDog = Dog('Buddy', 3, 'Golden Retriever');

  // Accessing properties
  print('Name: ${myDog.name}, Age: ${myDog.age}, Breed: ${myDog.breed}');

  // Invoking methods
  myDog.makeSound();
  myDog.showDetails();
}
