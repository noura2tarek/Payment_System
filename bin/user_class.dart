import 'payment_class.dart';

// Make User class which uses payment method to checkout.
// To apply Dependency Inversion principle, we will depend on abstract payment class
// instead of concrete implementation of specific payment method
class User {
  final Payment _paymentMethod;

  User(this._paymentMethod);

  // Also, Open closed principle applied while we can add new payment method without modifying User class.
  void checkout(double amount) {
    _paymentMethod.payAmount(amount);
  }
}
