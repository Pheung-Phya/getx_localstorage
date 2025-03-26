import 'package:get/get.dart';
import 'package:getx_route/controllers/homepage_controller.dart';

class HomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomepageController>(() => HomepageController());
    //Get.put(HomepageController);
  }
}
