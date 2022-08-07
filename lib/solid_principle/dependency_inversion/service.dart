// # Dependency inversion principle
// The last, but definitely not the least states that:

// Entities must depend on abstractions not on concretions. 
// It states that the high level module must not depend on the low level module, 
// but they should depend on abstractions.


class Service {
  ConnectionInterface? connect;

  void attach() {
    connect!.connect();
  }

}

class DBConnection implements ConnectionInterface{
  @override
  void connect() {
    print('DBConnection established');
  }
}

class FirebaseConnection implements ConnectionInterface {
  @override
  void connect() {
    print('FirebaseConnection established');
  }

}

abstract class ConnectionInterface {
  void connect();
}




void main() {
  var service = Service();
  service.connect = DBConnection();
  service.attach();
  service.connect = FirebaseConnection();
  service.attach();
}

