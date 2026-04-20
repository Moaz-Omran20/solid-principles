import 'package:solid_principles/Section%204%20_%20LSP/4.1/good_practice/base/refundable_payment.dart';
import 'package:solid_principles/Section%204%20_%20LSP/4.1/good_practice/base/reloadable_payment.dart';

import 'bank_account.dart';
import 'base/payment_method.dart';
import 'credit_card.dart';
import 'gift_card.dart';

bool processRefund(double amount) {
  throw Exception(
    'Gift cards cannot receive refunds! They can only be reloaded.',
  );
}

void refund(RefundablePayment paymentMethod, double amount) {
  print('\n--- Processing return of \$$amount ---');
  paymentMethod.processRefund(amount);
}

void reload(ReloadablePayment paymentMethod, double amount) {
  print('\n--- Processing return of \$$amount ---');
  paymentMethod.reload(amount);
}

void chargePayment(PaymentMethod paymentMethod, double amount) {
  print('\n--- Processing return of \$$amount ---');
  paymentMethod.processPayment(amount);
}

void main() {
  final RefundablePayment creditCard = CreditCard(
    accountNumber: '4532123456789012',
    cvv: '123',
    expiryDate: '12/25',
  );

  final RefundablePayment bankAccount = BankAccount(
    accountNumber: '123456789',
    bankName: 'ABC Bank',
  );

  final ReloadablePayment giftCard = GiftCard(
    accountNumber: "adw",
    cardNumber: 'GIFT-5000',
    balance: 50.0,
  );

  refund(creditCard, 29.99);

  refund(bankAccount, 49.99);

  reload(giftCard, 19.99);

  print('\n--- Using special checks (bad practice) ---');
}
