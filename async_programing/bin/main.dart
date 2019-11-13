import 'package:async_programing/async_programing.dart' as async_programing;

import 'dart:async';

main(List<String> arguments) async {
//  var v = await checkVersion();
//  print(v);

  Future<String> version = checkVersion1();

//  version.then((version) => {print(version)}, onError: (e) => {print(e)});

  await version.then((version) => {print(version)}).catchError((e) => {});

  print("2.0.0");

  await for (var i in countStream(10)) {
    print(i);
  }
}

Future<String> checkVersion1() async {
  return "123";
}

Future<String> checkVersion() {
  return Future.delayed(Duration(seconds: 1), () => "1.0.0");
}

Future<String> checkVersion2() {
  return Future.value(checkVersion());
}

Future<String> checkVersion3() {
  return Future.sync(() => "1.0.1");
}

Future<String> getVersion() => Future.sync(() => "1.0.2");

Stream<int> countStream(int to) async* {
  for (int i = 1; i <= to; i++) {
    yield i;
  }
}
