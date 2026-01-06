/// *** Should we declare a variable to allocate size from media query in build method? why?
/// *** Chúng ta có nên khai báo một biến để phân bổ kích thước từ media query trong phương thức build không? 
/// *** Tại sao?
/// *** MediaQuery là InheritedWidget
/// *** khai báo trong build() sẽ được gọi lại khi MediaQuery thay đổi
/// Nhưng… có trường hợp được dùng ngoài build() không? 
/// ✅ Được – nhưng phải dùng didChangeDependencies()
/// ---> Nên lấy MediaQuery trong build vì MediaQuery có thể thay đổi và build sẽ được gọi lại để cập nhật layout;
///  không nên lấy trong initState vì không phản ứng với thay đổi.
/// 
/// 
/// *** How to check if any widget is placed in widget tree?
/// Làm thế nào để kiểm tra xem có widget nào được đặt trong cây widget hay không?
/// Flutter không cho phép kiểm tra tuỳ ý widget trong widget tree.
/// Cách đúng là quản lý UI thông qua state; trong trường hợp đặc biệt có thể dùng context 
/// để tìm ancestor hoặc dùng GlobalKey,
/// nhưng đây thường là dấu hiệu architecture chưa tốt.
/// 
/// *** Difference between mounted vs past-franse callback
/// *** Sự khác biệt giữa lệnh gọi lại "mounted" và "past-franse".
/// 
/// *** mounted là một thuộc tính boolean của State -> Tránh gọi setState khi widget đã bị dispose
/// *** Post-frame callback là callback chạy sau khi frame hiện tại render xong
/// ví dụ: 
/// WidgetsBinding.instance.addPostFrameCallback((_) {
/// code ở đây chạy SAU build + layout + paint
///});
///
///*** When and why should we use widget binding observer?
///*** WidgetsBindingObserver
/// WidgetsBindingObserver là một observer cho phép widget lắng nghe các thay đổi ở mức hệ thống / app lifecycle
/// App vào background / foreground, Màn hình xoay, Text scale, locale thay đổi
/// 
/// 
/// 
/// *** What is InheritedWidget? Why/when do we use it? How to pass data through InheritedWidget and access it from other widgets?
/// *** InheritedWidget là gì? Tại sao/khi nào chúng ta sử dụng nó? 
/// *** Làm thế nào để truyền dữ liệu thông qua InheritedWidget và truy cập dữ liệu đó từ các widget khác?
/// 
/// *** InheritedWidget là một widget đặc biệt dùng để chia sẻ dữ liệu xuống toàn bộ subtree
/// và tự động rebuild các widget con khi dữ liệu thay đổi.
/// Flutter UI = Tree -> Widget con phụ thuộc context của widget cha -> Khi data ở trên thay đổi → widget dưới cần rebuild
/// Khi nào nên dùng: data dùng chung cho nhiều Widget, data thay đổi -> UI cần cập nhật, data mang tính contextual
/// *** InheritedWidget dùng để chia sẻ dữ liệu xuống widget tree và tự động rebuild các 
/// widget phụ thuộc khi dữ liệu thay đổi,
///  giúp tránh prop drilling và tối ưu hiệu năng; nó là nền tảng của Theme, MediaQuery và Provider.
/// 
/// *** Provider:
/// Provider là package state-management dựa trên InheritedWidget, 
/// giúp chia sẻ và quản lý state một cách đơn giản,
///  tự động rebuild UI khi state thay đổi và giảm boilerplate so với việc viết InheritedWidget thủ công.
/// 
/// *** Inherited widget is Provider which is is better and why?
/// Provider là abstraction được xây trên InheritedWidget để giúp việc chia sẻ state trong app dễ hơn và ít boilerplate hơn.
/// InheritedWidget phù hợp cho framework hoặc khi cần kiểm soát rebuild chi tiết, 
/// còn Provider phù hợp cho phát triển ứng dụng vì tính tiện lợi và dễ bảo trì.
