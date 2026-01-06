/// *** pubspec.yaml: là file cấu hình trung tâm của một project dart/flutter
/// project name, version. thư viện, Assets và SDK dart/ Flutter yêu cầu phiên bản nào
/// ** Dart có 2 loại dependency:
/// ****  dependencies: thư viện được dùng khi app chạy thật
/// Được buidle vào app : android APK/AAB, IOS IPA là khi app dc chạy user sài dc app
/// **** dev_dependencies: là thư viện chỉ dùng cho quá trình phát triển
/// không có trong production build, dùng khi code gen, testing, link
/// **** dependency_overrides: ép version bất chấp xung dột, khi xung đột version
/// 
/// *** runtime: là thời điểm chương trình đang chạy
/// *** compile-time: là thời điểm code dc kiểm tra và dịch trước khi chạy 


/// *** sự khác nhau giữa final và const: đều dùng để khai báo biến không thể gán lại
/// 
/// *** final – gán 1 lần tại runtime --> Giá trị chỉ biết khi app chạy
/// *** const – giá trị bất biến tại compile-time Dart biết giá trị trước khi app chạy
/// 
/// *** static const Hằng số cấp class, giá trị xác định tại compile-time.
/// *** static final Biến cấp class, khởi tạo tại runtime, gán 1 lần.
/// 
/// *** Ảnh hưởng tới Flutter rebuild dùng const: Biết widget immutable, Skip rebuild subtree, Tăng performance