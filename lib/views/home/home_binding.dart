import 'package:get/get.dart';
import 'package:rwallet/views/groups/groups_binding.dart';
import 'package:rwallet/views/groups/groups_controlles.dart';
import 'package:rwallet/views/home/home_controller.dart';
import 'package:rwallet/views/menu_groups/menu_group_binding.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => GroupsController());
  }
}
