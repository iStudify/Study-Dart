import 'dart:async';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => "Gavin");
}
