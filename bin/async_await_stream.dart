Stream<String> names() {
  return Stream.fromIterable(['Bagi', 'Hartawan', 'Bagih']);
}

Future<String> fullName() async {
  String name = '';
  await for (var i in names()) {
    name += '$i ';
  }

  return name.trim();
}

void main() {
  fullName().then((value) => print(value));
  print('done');
}
