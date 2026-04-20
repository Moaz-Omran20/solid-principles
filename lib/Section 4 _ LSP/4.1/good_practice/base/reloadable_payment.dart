import 'package:solid_principles/Section%204%20_%20LSP/4.1/good_practice/base/payment_method.dart';

abstract class ReloadablePayment extends PaymentMethod {


  double get balance;

  void reload(double amount);

}