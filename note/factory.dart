/// *** valid dữ liệu
///
class User {
  final String name;
  final String email;

  User({required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(name: json['name'] as String, email: json['email'] as String);
  }
}

/// *** Cache/Singleton
///
class Logger {
  static final Logger _instance = Logger._internal();

  Logger._internal();

  factory Logger() => _instance;
}

/// *** trả về subclass
///
abstract class Shape {}

class Circle extends Shape {}

class Square extends Shape {}

class ShapeFactory {
  static Shape createShape(String type) {
    switch (type) {
      case 'circle':
        return Circle();
      case 'square':
        return Square();
      default:
        throw Exception('Unknown shape type');
    }
  }
}

/// trả về const
class ColorApp {
  final int value;
  const ColorApp._(this.value);

  factory ColorApp.red() {
    return const ColorApp._(0xFFFF0000);
  }
}

/// có nghĩa là trả về 1 instance đã tồn tại (complie-time constant)
/// không tạo object mới mỗi lần gọi hàm tạo (factory constructor)
/// tái sử dụng instance đã tồn tại trong bộ nhớ.

/// case high-level
/// *** Factory được dùng khi ít loại obj - chỉ cần tạo 1 hệ object
/// Logic tạo đơn giản
///
/// *** abstract factory được dùng khi nhiều loại obj - cần tạo nhiều hệ object
/// Tạo ra cả 1 hệ (Family) object liên quan với nhau
///

// *** Step 1: Abstract products

abstract class Button {
  void render();
}

abstract class TextField {
  void render();
}

// *** Step 1: Abstract products

class IOSButton implements Button {
  @override
  void render() {
    print('Rendering iOS Button');
  }
}

class AndroidButton implements Button {
  @override
  void render() {
    print('Rendering Android Button');
  }
}

class IOSTextField implements TextField {
  @override
  void render() => print('Render iOS TextField');
}

class AndroidTextField implements TextField {
  @override
  void render() => print('Render Android TextField');
}

// ** Step 3: Abstract Factory
abstract class UIFactgory {
  Button createButton();
  TextField createTextField();
}

// ** Step 4: Concrete Factories
class IOSFactory implements UIFactgory {
  @override
  Button createButton() => IOSButton();

  @override
  TextField createTextField() => IOSTextField();
}

class AndroidFactory implements UIFactgory {
  @override
  Button createButton() => AndroidButton();

  @override
  TextField createTextField() => AndroidTextField();
}

void buildUI(UIFactgory factory) {
  final button = factory.createButton();
  final textField = factory.createTextField();

  button.render();
  textField.render();
}

void main() {
  UIFactgory factory = IOSFactory();
  buildUI(factory);
}
