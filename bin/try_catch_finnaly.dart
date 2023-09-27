Future<String> sayHello(String name) {
  return Future.error(Exception('error'));
}

void main() {
  sayHello('Bagih')
      .then((value) => print(value))
      .catchError((error) => print('error with message ${error.message}'))
      .whenComplete(() => print('all finished'));
  print('done');
}
