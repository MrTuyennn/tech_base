/// Constructors are special methods used for initializing objects.
///  Dart supports both default and named constructors. Let's extend the previous example to include named constructors:
/// ***********
/// Constructors là các phương thức đặc biệt được sử dụng để khởi tạo các đối tượng.
/// Dart hổ trợ cả các hàm mặc định và được đặt tên. Ví dụ

class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  Animal.namedConstructor(this.name) : age = 0;

  void makeSound() {
    print('Animal makes a sound');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  Dog.namedConstructor(String name, String breed)
    : breed = breed,
      super.namedConstructor(name);

  @override
  void makeSound() {
    print('Dog barks');
  }

  void showDetails() {
    print('Name: $name, Age: $age, Breed: $breed');
  }
}

void main() {
  var myDog = Dog('Buddy', 3, 'Golden Retriever');

  var anotherDog = Dog.namedConstructor('Max', 'Labrador');

  myDog.showDetails();
  anotherDog.showDetails();
}
