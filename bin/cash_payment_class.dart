import 'payment_class.dart';

// Make Cash payment class and credit card class to achieve single responsibility
// Also, we apply here interface segregation principle.
class CashPayment implements Payment {
  //  Lsp is applied while each class overrides the payAmount method
  @override
  void payAmount(double amount) {
    print('Cash payment of $amount done successfully!');
  }
}
