import 'package:final_smart_farm/controller/auth_controller.dart';
import 'package:final_smart_farm/controller/bottom_nav_controller.dart';
import 'package:final_smart_farm/controller/numerical_data_controller.dart';
import 'package:get/get.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
    Get.put(BottomNavController(), permanent: true);
    Get.put(NumericalDataController(), permanent: true);
  }

  static additionalBinding() {

  }
}