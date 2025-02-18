import 'payment_class.dart';
import 'user_class.dart';
import 'cash_payment_class.dart';
import 'credit_card_payment_class.dart';

void main() {
  // Test...
  // First, create an instance of cash payment
  Payment cashPayment = CashPayment();
  // Second, create an instance of credit card payment
  Payment creditPayment = CreditCardPayment();

  // Create an instance of user class
  // First user uses Cash --
  User user1 = User(cashPayment);
  user1.checkout(100);

  // Second user uses Credit --
  User user2 = User(creditPayment);
  user2.checkout(500);
}
