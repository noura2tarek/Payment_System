import 'payment_class.dart';

// Credit card payment class
class CreditCardPayment implements Payment {
  @override
  void payAmount(double amount) {
    print('Payment of $amount using credit card done successfully!');
  }
}
