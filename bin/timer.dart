import 'dart:async';

void main() {
  // Timer(Duration(seconds: 1), () {
  //   print('Hello timer');
  // });

  Timer.periodic(Duration(seconds: 2), (timer) {
    print('timer ke ${timer.tick}');
    if (timer.tick == 5) {
      timer.cancel();
    }
  });

  print('done');
}
