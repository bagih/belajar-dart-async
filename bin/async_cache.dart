import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'getData';
  });
}

void main() async {
  final AsyncCache asyncCache = AsyncCache<String>(Duration(seconds: 10));

  final res1 = await asyncCache.fetch(() => getData());
  print(res1);

  final res2 = await asyncCache.fetch(() => getData());
  print(res2);
}
