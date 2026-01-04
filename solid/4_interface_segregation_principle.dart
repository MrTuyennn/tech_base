/// Interface segregation principle
/// Đừng ép class implement những thứ nó không cần

/// *** ❌ Sai
abstract class Worker {
  void work();
  void eat();
}

class Robots implements Worker {
  @override
  void work() => print('Working');

  @override
  void eat() {
    throw Exception('Robot does not eat');
  }
}

/// *** ✅ Đúng (tách interface)
abstract class Workable {
  void work();
}

abstract class Eatable {
  void eat();
}

class Human implements Workable, Eatable {
  @override
  void work() {}

  @override
  void eat() {}
}

class Robot implements Workable {
  @override
  void work() {}
}
