import 'base/refundable_payment.dart';

class CreditCard implements RefundablePayment {
  @override
  String accountNumber;

  @override
  String get holderName => "Credit Card";

  final String cvv;
  final String expiryDate;

  CreditCard({
    required this.cvv,
    required this.expiryDate,
    required this.accountNumber,
  });

  @override
  bool processPayment(double amount) {
    print(
      'Charging \$$amount to credit card ending in ${accountNumber.substring(accountNumber.length - 4)}',
    );
    return true;
  }

  @override
  bool processRefund(double amount) {
    print(
      'Refunding \$$amount to credit card ending in ${accountNumber.substring(accountNumber.length - 4)}',
    );
    return true;
  }
}
