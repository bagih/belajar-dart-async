Stream<String> stream() {
  return Stream.periodic(Duration(seconds: 2), (i) {
    if (i % 2 == 0) {
      return 'Genap';
    } else {
      return 'Ganjil';
    }
  });
}

void main() {
  Stream<String> stringStream = stream();
  Stream<String> broadcastStringStream = stringStream.asBroadcastStream();

  broadcastStringStream.listen((event) {
    print(event);
  });

  broadcastStringStream.listen((event) {
    print(event);
  });

  print('done');
}
