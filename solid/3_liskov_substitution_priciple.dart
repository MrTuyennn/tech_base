/// Liskov substition priciple
/// **** Class con phải thay thế được class cha mà không làm sai hành vi

/// *** ❌ Sai (rất hay gặp)
class Birds {
  void fly() {
    print('Flying');
  }
}

class Penguins extends Birds {
  @override
  void fly() {
    throw Exception('Penguins cannot fly');
  }
}

/// **** ✅ Đúng (senior tư duy lại abstraction)
abstract class Bird {}

abstract class FlyingBird extends Bird {
  void fly();
}

class Sparrow extends FlyingBird {
  @override
  void fly() {
    // TODO: implement fly
  }
}

class Penguin extends Bird {
  void swim() => print('Swimming');
}
