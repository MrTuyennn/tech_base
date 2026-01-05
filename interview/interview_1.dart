///*** */ is Dart multithreaded? If not how does it process Future calls?
///Dart có hỗ trợ đa luồng không?
/// Nếu không thì nó xử lý các lệnh gọi Future như thế nào?
/// 
/// **** Dart không hổ trợ đa luồng dart là ngôn ngữ đơn luồn
/// Future dùng event loop để xử bất đồng bộ
/// còn muốn chạy song song thì dùng Isolate
/// 
/// **** What is an isolate ? (Isolate là gì?)
/// **** How isolate works ? (Isolate hoạt động như nào?)
/// 
/// Isolate là đơn vị xử lý song song của Dart. Mỗi Isolate là chương trình độc lập
/// chạy 1 thread riêng 1 bộ nhớ riêng
/// Vì các event loop chạy đơn luồng nên chạy vòng lặp hay tính toán nặng trên luồng chính
/// dẫn đến block UI --> Isolate sinh ra để giải quyết vấn đề đó
/// Có 2 cách giao tiếp với Isolate đó là dùng compute() và tạo Isolate thủ công
/// *** compute() sẽ đơn giản hơn tự tạo Isolate và giao tiếp ngầm bên dưới và trả 1 future và tự đóng khi có kết quả hoặc lỗi
/// *** Isolate.pawn vì nguyên tắt của Isolate không chia sẽ bộ nhớ bên khi tạo Isolate phải có Port giao tiếp nếu
/// *** không main thread sẽ không truyền data từ ISoalte phụ đã tạo
/// -- khi tính toán 1 nghiệp vụ single-Isolate nhận 1 kết quả thì dùng compute()
/// -- Khi muốn giữ trạng thái tương tắc giữa main thread và Isolate phụ thì tạo thủ công Isolate.pawn
/// 
/// *** Tại sao isolate chạy trên Top-level và static method
/// Vì Isolate không chia sẽ và chạy bộ nhớ riêng nên fun cục bộ với static method là hợp lý
/// 
/// *** Event loop
/// Dart chạy single-threaded
/// Event loop quản lý các tác vụ bất đồng bộ
/// Gồm có Mircotask queue (ưu tiên cao nhất) chạy sau là các synchonou và tiếp tới event queue là ưu tiên thấp nhất
/// *** Event loop -> run synchonous --> miroctask queue --> event queue
/// 
/// 
/// ** completer
/// **** completer quyết định thời điểm hoàn thành một future
/// .future: _> future mà bạn trả về caller
/// .complete(value) -> hoàn thành future
/// .completeError(e) -> lỗi error
/// .iscompleted -> tránh complete 2 lần
/// --> lắng nghe về kết quả cuối cùng thì dùng complete
/// 
///  Future<void> loadStates() {
   ///         final completer = Completer();
      ///      WidgetsBinding.instance.addPostFrameCallback((_) async {
     ///          await Future.wait([
      ///           ref.read(appSettingProvider.notifier).loadAppSetting(),
     ///            ref.read(appStateProvider.notifier).loadAppState(),
       ///        ]);
    ///           completer.complete();
      ///       });
      ///       return completer.future;
    ///       }