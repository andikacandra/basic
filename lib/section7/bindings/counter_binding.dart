import 'package:basic/section7/materi_11.dart';
import 'package:get/get.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CounterController());
  }
}
