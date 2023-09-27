import 'dart:async';

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
  Stream<String> flow = stream();
  StreamSubscription<String> listen = flow.listen((event) {
    print(event);
  });

  // onData
  listen.onData((data) {
    print('listen $data');
  });

  // onDone
  listen.onDone(() => print('listen done'));

  print('done');
}
