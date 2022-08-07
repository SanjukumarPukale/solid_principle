// # Interface segregation principle
// A client should never be forced to implement an interface that it doesn’t use or 
// clients shouldn’t be forced to depend on methods they do not use.



abstract class Animal {
  void eat();
  void see();
}

abstract class FlyInterface {
  void fly();
}

class Bird implements Animal, FlyInterface {
  @override
  void eat() {
    print('Bird is eating');
  }

  @override
  void fly() {
    print('Bird is flying');
  }

  @override
  void see() {
    print('Bird is seeing');
  }

}

class Dog implements Animal {
  @override
  void eat() {
    print('Dog is eating');
  }

  @override
  void see() {
    print('Dog is Seeing');
  }

}



void main() {
  var bird = Bird();
  bird.eat();
  bird.fly();
  bird.see();
  var dog = Dog();
  dog.eat();
  dog.see();
}