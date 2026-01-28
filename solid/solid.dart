/// SOLID là 5 nguyên tắc thiết kế OOP giúp code dễ bảo trì, dễ mở rộng, ít bug,
/// và là thứ mà senior / lead rất hay quan tâm khi review code

/// **** S - Single Responsibility Principle (SRP): 
/// nguyên tắc trách nhiệm đơn nhất đảm bảo tất cả lớp hay module chỉ chịu trách nhiệm cho một chức năng duy nhất.

/// **** O - Open Closed Principle (OCP): 
/// nguyên tắc đóng mở cho phép tất cả lớp đều mở cho bổ sung nhưng đóng cho chỉnh sửa. 
/// Ở đây ta cho phép mở rộng hành vi các thực thể nhưng không được chỉnh sửa code đã tồn tại.

/// **** L - Liskov Substitution Principle(LSP): 
/// nguyên tắc Liskoy nói rằng trạng thái của đối tượng có thể thay thế bằng các thể hiện con 
/// mà không ảnh hưởng đến tính đúng đắn của chương trình.


/// **** I - Interface Segregation Principle (ISP): 
/// nguyên tắc phân tách interface nêu rõ rằng có thể
///  sử dụng nhiều interface cụ thể cho các yêu cầu của client thay vì interface chung. 
/// Client không bị buộc phải thực hiện các chức năng mà họ không yêu cầu

/// **** D - Dependency Inversion Principle:
///  ở đây các module ở level cao nên độc lập với các module level thấp.
///  Các module cao được xem là trừu tượng và module thấp là những triển khai cụ thể.

/// 🧠 Senior mindset khi dùng SOLID
///Không over-engineering
///Chỉ áp dụng khi:
///*** Code bắt đầu phình to
///*** Có nhiều if/else
///*** Khó test
///*** SOLID ≠ pattern
///*** SOLID = cách suy nghĩ
///
///S → One class, one responsibility
// O → Extend code, don’t modify it
// L → Child classes shouldn’t break parent behavior
// I → Small, focused interfaces
// D → Depend on abstractions, not implementations