///Mục đích: che giấu logic khởi tạo phức tạp, trả về subtype theo tham số.
///Khi dùng: khi cần tạo object khác nhau theo điều kiện (platform, config).
///Ưu: tách logic tạo object;
///Nhược: đôi khi làm code khó trace nếu logic quá động.

abstract class NotificationService {
  void notity(String msg);
}

class FirebaseNotification implements NotificationService {
  @override
  void notity(String msg) {
    print('FirebaseNotification');
  }
}

class LocalNotification implements NotificationService {
  @override
  void notity(String msg) {
    print('LocalNotification');
  }
}

class NotificationFactory {
  static NotificationService create({required bool useFirebase}) {
    return useFirebase ? FirebaseNotification() : LocalNotification();
  }
}

void main() {
  NotificationFactory.create(useFirebase: true).notity('Noti');
}
