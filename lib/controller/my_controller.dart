import 'package:get/get.dart';

class MyController extends GetxController {
  final count = 0.obs;
  counterIncrement() {
    count.value++;
  }

  counterDecrement() {
    count.value--;
  }
}
