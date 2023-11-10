import 'package:get/get.dart';

class CounterController extends GetxController {
  //changeable (obs) change ko observe kare ga
  RxInt counter = 1.obs;
  incrementCounter() {
    counter.value++;
  }
}
