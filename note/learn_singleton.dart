/// Singleton không liên quan gì đến Widget lifecycle
/// Nó sống theo Dart Isolate lifecycle
/// Trong flutter app mặc định -> 1 isolate = 1 single instance
/// Nếu dùng multiple Isolate -> mỗi isolate có singleton riêng
///
/// Factory constructor
///
class ApiClient {
  ApiClient._internal();

  static final ApiClient _instance = ApiClient._internal();

  factory ApiClient() => _instance;
}

/// static instance
class Logger {
  static final Logger instance = Logger._();
  Logger._();
}

/// Lazy singleton với getter
class CacheManager {
  static CacheManager? _instance;
  CacheManager._();

  static CacheManager get instance => _instance ??= CacheManager._();
}
