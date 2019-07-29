import './test_future.dart';
import './test_future2.dart';

main() {
  // test_future();
  test_future2_1();
  test_future2();

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
