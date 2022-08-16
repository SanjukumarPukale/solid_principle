// examples of different types of relationship

// Inheritance ---->  is a relationship

import '../solid_principle/dependency_inversion/service.dart';

class Person {

}

class Sanju extends Person {

}

// Composition ----->  has a relationship

class Service {
  ConnectionInterface connection;
  Service({
    required this.connection,
  });
}

// Dependency 
class TaxRegion {

}

class Order {
  calculate (TaxRegion taxRegion) {

  }
}
