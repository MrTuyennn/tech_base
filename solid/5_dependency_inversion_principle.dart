/// D — Dependency Inversion Principle (DIP)
/// *** Phụ thuộc vào abstraction, không phụ thuộc implementation
///
class User {}

class UserApi {
  Future<User> fetchUser() async {
    return User();
  }
}

/// *** ❌ Sai (code cứng)
class UserBlocs {
  final UserApi api = UserApi();

  void load() {
    api.fetchUser();
  }
}

/// *** ✅ Đúng (senior + testable)

abstract class UserRepository {
  Future<User> getUser();
}

class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> getUser() {
    return UserApi().fetchUser();
  }
}

class UserBloc {
  final UserRepository repository;

  UserBloc(this.repository);

  void load() {
    repository.getUser();
  }
}
