import './test_future.dart';
import './test_future2.dart';
import './test_stream.dart';

main() {
  test_future();
  test_future2_1();
  test_future2();
  test_stream();
  print("<< main");
}

test_future() {
  printDailyNewsDigest();
  printWinningLotteryNumbers();
  printWeatherForecast();
  printBaseballScore();
}

test_future2() {
  var name = getName();
  name.then((n) => {print(n)}).whenComplete(() => {print("complete")}).catchError((onError) => {print(onError)});

  print("test_future2: " + name.toString());
}

test_future2_1() async {
  var name = await getName();

  print("test_future2_1: " + name);
}

test_stream() async {
  var value = asynchronousNaturalsTo(10);
  await for (var item in value) {
    print(item);
  }

  var list = naturalsDownFrom(10);
  await for (var item in list) {
    print(item);
  }

  var list2 = asynchronousNaturalsTo(10);

  list2.map((data) => {data * data}).listen((data) => {print(data)});
}
