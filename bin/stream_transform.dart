Stream<int> numbers() {
  return Stream.fromIterable([1, 3, 5, 4, 1, 2, 6, 4, 2]);
}

void main() {
  // numbers()
  //     .where((event) => event > 2)
  //     .map((event) => event * 2)
  //     .listen((event) => print(event));

  Future<int> total =
      numbers().fold(0, (previous, element) => previous + element);
  total.then((value) => print('total value $value'));

  print('done');
}
