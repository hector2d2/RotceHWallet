import 'package:get/get.dart';
import 'package:rwallet/views/groups/groups_controlles.dart';
import 'package:rwallet/views/home/home_controller.dart';
import 'package:rwallet/views/perfil/perfil_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => GroupsController());
    Get.lazyPut(() => PerfilController());
  }
}
