import 'dart:async';

Stream<int> asynchronousNaturalsTo(int n) async* {
  int k = 0;
  while (k < n) yield k++;
}

Stream<int> naturalsDownFrom(int n) async* {
  if (n > 0) {
    yield n;
    yield* naturalsDownFrom(n - 1);
  }
}
