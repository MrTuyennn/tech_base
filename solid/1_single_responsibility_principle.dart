/// Single responsibility_princole
/// *** chỉ class hay 1 module chỉ chịu trách nhiệm 1 nội dung duy nhất
///
/// *** Sai ❌
class UserService {
  void fetchUser() {
    // call API
  }

  void saveUserToDb() {
    // save local
  }

  void showUserDialog() {
    // show UI
  }
}

/// *** Đúng ✅
class UserApi {
  Future<User> fetchUser() async {
    // call API
    return User();
  }
}

class UserLocalStorage {
  void save(User user) {
    // save local
  }
}

class UserPresenter {
  void showUser(User user) {
    // show UI
  }
}

class User {}
