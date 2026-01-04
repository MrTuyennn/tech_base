/// inheritance (kế thừa)
/// Inheritance is a fundamental OOP concept that allows a class to inherit properties and methods from another class.
/// The extends keyword in Dart is used to implement inheritance. Let's extend our example further:
/// *********
/// Kế thừa là một khái niệm OOP cơ bản cho phép một lớp kế thừa các thuộc tính và phương thức từ một lớp khác.
/// Từ khóa khóa Entends được sử dụng để thực hiện kế thừa. Ví dụ:

class Animal {
  const Animal({this.name = '', this.age = 0});

  final String name;
  final int age;

  void getSound() {
    print('$name $age');
  }
}

class Cat extends Animal {
  const Cat({this.breed = '', this.age = 0, this.name = ''})
    : super(age: 0, name: '');

  final String breed;
  final int age;
  final String name;

  @override
  void getSound() {
    print('Sound cat');
    super.getSound();
  }

  void showDetails() {
    print('Show detail ===> Cat');
  }
}

class Dog extends Animal {
  const Dog({this.hasStripes = '', this.age = 0, this.name = ''})
    : super(age: 0, name: '');

  final String hasStripes;
  final int age;
  final String name;

  @override
  void getSound() {
    print('Sound Dog');
    super.getSound();
  }

  void showDetails() {
    print('Show detail ===> Dog');
  }
}

void main() {
  var cat = Cat(breed: 'Cat', name: "baby");
  cat.getSound();
}
