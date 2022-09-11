import 'package:get/get.dart';
import 'package:rwallet/views/menu_groups/menu_gruop_controller.dart';

class MenuGroupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuGroupController());
  }
}
