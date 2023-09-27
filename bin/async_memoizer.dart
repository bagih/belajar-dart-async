import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'getData';
  });
}

void main() async {
  final asyncMemoizer = AsyncMemoizer<String>();

  final res1 = await asyncMemoizer.runOnce(() => getData());
  print(res1);

  final res2 = await asyncMemoizer.runOnce(() => getData());
  print(res2);
}
