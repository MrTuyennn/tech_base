/// Open closed principle
/// **** Mở để mở rộng và đóng để chỉnh sửa

/// *** ❌ Sai
class PaymentServices {
  void pay(String type) {
    if (type == 'paypal') {
      print('Pay with Paypal');
    } else if (type == 'momo') {
      print('Pay with Momo');
    }
  }
}

/// *** ✅ Đúng (dùng abstraction)
abstract class PaymentMethod {
  void pay();
}

class PaypalPayment implements PaymentMethod {
  @override
  void pay() => print('Pay with Paypal');
}

class MomoPayment implements PaymentMethod {
  @override
  void pay() => print('Pay with Momo');
}

class PaymentService {
  void process(PaymentMethod method) {
    method.pay();
  }
}

/// khi thêm thì tạo mới 1 class không sửa code cũ
class ZaloPayPayment implements PaymentMethod {
  @override
  void pay() => print('Pay with ZaloPay');
}
