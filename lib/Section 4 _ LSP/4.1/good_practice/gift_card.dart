import 'package:solid_principles/Section%204%20_%20LSP/4.1/good_practice/base/reloadable_payment.dart';

class GiftCard implements ReloadablePayment {
  @override
  String accountNumber;

  @override
  double balance;

  @override
  String get holderName => "Gift Card";

  GiftCard({required this.accountNumber, required this.balance, required String cardNumber});

  @override
  bool processPayment(double amount) {
    if (amount > balance) {
      print('Insufficient balance on gift card');
      return false;
    }
    balance -= amount;
    print('Paid \$$amount using gift card. Remaining balance: \$$balance');
    return true;
  }

  @override
  void reload(double amount) {
    balance += amount;
    print('Gift card reloaded with \$$amount. New balance: \$$balance');
  }

  @override
  bool processRefund(double amount) {
    // TODO: implement processRefund
    throw UnimplementedError();
  }
}
