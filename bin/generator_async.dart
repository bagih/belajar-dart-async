Stream<int> syncNumber() async* {
  for (int i = 0; i < 10; i++) {
    yield i;
  }
}

void main() {
  Stream<int> stream = syncNumber();
  stream.listen((event) {
    print(event);
  });

  print('done');
}
