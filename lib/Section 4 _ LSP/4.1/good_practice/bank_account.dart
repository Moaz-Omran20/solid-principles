import 'package:solid_principles/Section%204%20_%20LSP/4.1/good_practice/base/refundable_payment.dart';

class BankAccount implements RefundablePayment {
  @override
  String accountNumber;

  @override
  String get holderName => "Bank Account";

  final String bankName;

  BankAccount({
    required this.accountNumber,
    required this.bankName,
  });

  @override
  bool processPayment(double amount) {
    print('Withdrawing \$$amount from $bankName account: $accountNumber');
    return true;
  }

  @override
  bool processRefund(double amount) {
    print(
      'Depositing refund of \$$amount to $bankName account: $accountNumber',
    );
    return true;
  }
}
