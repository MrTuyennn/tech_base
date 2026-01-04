///Mục đích: mở rộng chức năng object tại runtime mà không thay đổi lớp gốc.
///Khi dùng: thêm behavior (logging, caching, retry) cho 1 service.
///Ưu: composable;
///Nhược: nhiều lớp wrapper có thể gây phức tạp
///
abstract class DataService {
  Future<String> fetch();
}

class RealDataService implements DataService {
  @override
  Future<String> fetch() async => "data";
}

class LoggingDecorator implements DataService {
  final DataService _inner;
  LoggingDecorator(this._inner);
  @override
  Future<String> fetch() async {
    print("Start fetch");
    final r = await _inner.fetch();
    print("Fetched: $r");
    return r;
  }
}

/// final service = LoggingDecorator(RealDataService());
/// await service.fetch();
