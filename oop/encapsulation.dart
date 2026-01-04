/// Encapsulation is the concept of bundling data and methods that operate on that data within a single unit, i.e., a class.
/// Dart supports encapsulation through the use of access modifiers (public, private, and protected).
/// Dart uses an underscore _ as a convention for marking private members. Let's modify our example to incorporate encapsulation:
/// *******
/// Đóng gói là khái niệm bó dữ liệu và các phương thức hoạt động trên dữ liệu đó trong một đơn vị duy nhất, tức là 1 lớp
/// Dart hổ trợ đóng gói thông qua việc sử dụng các công cụ sửa đổi truy cập (public, private and protected)
/// Dart sử dụng _ để đánh dấu private
/// ******* Ví dụ
///

class Animal {
  // Animal._(this._name, this._age); // case không cho khởi tạo
  Animal(this._name, this._age); // cho khởi tạo bình thường

  String _name;

  /// private
  int _age;

  /// private

  void makeSound() {
    print('Animal makes a sound ${name} ${age}');
  }

  // Getter for private property _name
  String get name => _name;

  // Setter for private property _name
  set name(String value) => _name = value;

  // Getter for private property _age
  int get age => _age;

  // Setter for private property _age
  set age(int value) => _age = value;
}

void main() {
  var animal = Animal('tuyen', 12);
  animal.makeSound();
}
