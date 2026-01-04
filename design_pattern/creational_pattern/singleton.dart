/// Mục đích: đảm bảo chỉ tồn tại 1 instance trên toàn app (global service: logger, db, config).
/// Khi dùng: service toàn cục, connection pool, cache, logger.
/// Ưu: dễ truy cập khắp app;
/// Nhược: có thể làm global state khó test nếu lạm dụng.

class AppLogger {
  AppLogger._internal();

  factory AppLogger() => _instance;

  static final AppLogger _instance = AppLogger._internal();

  static AppLogger get instance => _instance;

  void log() {
    print('---->');
  }
}


/// using
/// AppLogger.instance....
/// Or AppLogger().log().