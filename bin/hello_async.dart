Future<void> helloAsync() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Bagi hartawan');
  });
}

Future<String> helloWithParam(String name) {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Hello $name';
  });
}

void main() {
  // helloAsync();
  // print('done');

  // helloWithParam('Bagi Hartawan').then((value) => print(value));
  // print('done');

  // helloWithParam('Bagih')
  //     .onError((error, stackTrace) => "fallback")
  //     .then((value) => print(value));
  // print('done');

  // helloWithParam('Bagihartawan')
  //     .then((value) => print(value))
  //     .catchError((error) => print('error with message ${error.message}'));
  // print('done');

  helloWithParam('hartawanbagi')
      .whenComplete(() => print('Future finished'))
      .then((value) => print(value))
      .catchError((error) => print('error with message ${error.message}'));
  print('done');
}
