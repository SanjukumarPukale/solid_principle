// Memento pattern


// The memento pattern is implemented with three objects: the originator, a caretaker and a memento. 
// The originator is some object that has an internal state. 
// The caretaker is going to do something to the originator, 
// but wants to be able to undo the change. The caretaker first asks the originator for a memento object. 
// Then it does whatever operation (or sequence of operations) it was going to do. 
// To roll back to the state before the operations, it returns the memento object to the originator. 
// The memento object itself is an opaque object (one which the caretaker cannot, or should not, change). 
// When using this pattern, care should be taken if the originator may change other objects or 
// resources—the memento pattern operates on a single object.



// Originator
class Browser {
  String? address;

  createState() {
    return BrowserState(address!);
  }

  restoreState(BrowserState state) {
    address = state.content;
  }
}


// Memento
class BrowserState {
  final String content;

  BrowserState(this.content);
}


// Caretaker
class History {
  List<BrowserState> history = <BrowserState>[];

  void push(BrowserState state) {
    history.add(state);
  }

  BrowserState pop() {
    return history.removeAt(history.length - 1);
  }
}


void main() {
  final chrome = Browser();
  final history = History();

  chrome.address = 'google.com';
  history.push(chrome.createState());

  chrome.address = 'twitter.com';
  history.push(chrome.createState());

  chrome.address = 'facebool.com';
  chrome.restoreState(history.pop());

  print(chrome.address);

  chrome.restoreState(history.pop());

  print(chrome.address);


}