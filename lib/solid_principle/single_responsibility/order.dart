
// # Single-responsibility Principle:
// A class should have one and only one reason to change, meaning that a class should have only one job.

class OrderCalculator {
  double? amount1;
  double? amount2;
  double? amount3;

  void calculateOrder() {
    final orderValue = amount1! + amount2! + amount3!;
    print(orderValue);
    // sendEmail();
  }

  // void sendEmail() {
  //   final email = "sanju@sanju.com";
  //   print('Sending email to $email');
  // }
}

// instead of mixing email sending functionality with calcelateOrder() we can seperate. then we can achieve 
// single responsibility

class sendEmailOrder {

 static void sendEmail() {
    final email = "sanju@sanju.com";
    print('Sending email to $email');
  }
}

void main() {
  final order = OrderCalculator();
  order.amount1 = 100;
  order.amount2 = 200;
  order.amount3 = 300;
  order.calculateOrder();
  sendEmailOrder.sendEmail();
}


