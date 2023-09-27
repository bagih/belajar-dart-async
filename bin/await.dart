Future<String> firstName() async {
  return 'Bagi';
}

Future<String> lastName() async {
  return 'Hartawan';
}

Future<String> nickName() async {
  return 'Bagih';
}

void main() async {
  try {
    var first = await firstName();
    var last = await lastName();
    var nick = await nickName();

    var result = await '$first $last $nick';
    print(result);
  } catch (e) {
    print(e);
  } finally {
    print('checks done');
  }

  print('done');
}
