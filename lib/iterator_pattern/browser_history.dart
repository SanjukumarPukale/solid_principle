import 'myiterator.dart';

class BrowserHistory {
  List<String> _urls = [];

  push(url) {
   _urls.add(url);
  }

  pop() {
   _urls.removeLast();
  }

  MyIterator<String> createIterator() {
    return ListIterator<String>(this);
  }
}

class ListIterator<T> implements MyIterator<T> {
  final BrowserHistory history;
  int index = 0;
  ListIterator(this.history);

  @override
  T current() {
    return history._urls[index] as T;
  }

  @override
  bool hasNext() {
    return index < history._urls.length;
  }

  @override
  void moveNext() {
    index++;
  }

}


void main() {
  final bHistory = BrowserHistory();
  bHistory.push('a.com');
  bHistory.push('b.com');
  bHistory.push('c.com');
  final itr = bHistory.createIterator();

  while (itr.hasNext()) {
    print(itr.current());
    itr.moveNext();
  }
}