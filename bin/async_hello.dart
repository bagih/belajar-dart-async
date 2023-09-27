Future<String> sayHello(String name) async {
  return 'Hello $name';
}

void main() {
  sayHello('Bagih').then((value) => print(value));

  print('done');
}
