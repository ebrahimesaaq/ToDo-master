import 'package:get/get.dart';
import 'package:todo_master/core/consts/routes.dart';

class BtmNav extends GetxController {
  RxInt index1 = 0.obs;
  void onTab1(int index) {
    index1.value = index;
    if (index == 0) {
      Get.offNamed(AppRoutes.home);
    } else if (index == 1) {
      Get.offNamed(AppRoutes.dashBoard);
    } else if (index == 2) {
      Get.offNamed(AppRoutes.notification);
    } else {
      Get.offNamed(AppRoutes.profile);
    }
  }
}
