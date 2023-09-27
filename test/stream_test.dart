import 'package:test/test.dart';

void main() {
  test('stream test', () {
    final stream = Stream<int>.periodic(Duration(seconds: 1), (i) => i).take(5);

    expect(
        stream,
        emitsInOrder(
            [emits(0), emits(1), emits(2), emits(3), emits(4), emitsDone]));
  });
}
