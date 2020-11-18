import 'package:get/get.dart';

class HomePageLogic {
  //

  RxInt _counter = 0.obs;
  RxInt get counter => _counter;

  void incrementCounter() {
    print("clicado!!! " + _counter.toString());

    _counter++;

    var point;
  }
}
