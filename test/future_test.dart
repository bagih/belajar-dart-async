import 'package:test/test.dart';

Future<String> getName() async {
  return 'Bagi Hartawan';
}

Future<String> getNickName() async {
  return Future.delayed(Duration(seconds: 2), () => 'Bagih');
}

void main() async {
  test('future test', () async {
    final name = await getName();
    expect(name, 'Bagi Hartawan');
  });

  test('future matcher', () {
    final name = getNickName();
    expect(name, completion(equals('Bagih')));
  });
}
