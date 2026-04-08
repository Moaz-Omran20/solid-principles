import '../order_manager_bad.dart';

class OrderValidation {

  bool isValidOrder(Order order) {
    return order.total > 0 && order.items.isNotEmpty;
  }


}