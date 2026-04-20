import 'package:solid_principles/Section%204%20_%20LSP/4.1/good_practice/base/payment_method.dart';

abstract class RefundablePayment extends PaymentMethod {


 bool processRefund(double amount);

}
