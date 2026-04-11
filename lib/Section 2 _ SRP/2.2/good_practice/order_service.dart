
import 'package:solid_principles/Section%202%20_%20SRP/2.2/good_practice/calculate_tax.dart';
import 'package:solid_principles/Section%202%20_%20SRP/2.2/good_practice/generate_invoice.dart';
import 'package:solid_principles/Section%202%20_%20SRP/2.2/good_practice/order_validation.dart';
import 'package:solid_principles/Section%202%20_%20SRP/2.2/good_practice/save_order.dart';
import 'package:solid_principles/Section%202%20_%20SRP/2.2/good_practice/send_config_email.dart';

import '../order_manager_bad.dart';

class OrderService {
  CalculateTax calculateTax;
  GenerateInvoice generateInvoice;
  OrderValidation orderValidation;
  SaveOrder saveOrder;
  SendConfigEmail sendConfigEmail;

  OrderService(this.calculateTax,
      this.generateInvoice,
      this.orderValidation,
      this.saveOrder,
      this.sendConfigEmail,);

  bool processOrder(Order order) {
    if (orderValidation.isValidOrder(order)) {
      print("invalid order");
      return false;
    }
    print("order success");
    return true;
  }
}
