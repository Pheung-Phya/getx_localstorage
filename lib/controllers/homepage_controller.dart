import 'package:get/get.dart';

class HomepageController extends GetxController {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    print("==================================");
  }

  @override
  void onReady() {
    super.onReady();
    print("----------------------------------");
  }

  @override
  void onClose() {
    super.onClose();
    print('************************************');
  }

  void increment() => count.value++;
}
