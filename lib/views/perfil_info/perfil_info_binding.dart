import 'package:get/get.dart';
import 'package:rwallet/views/perfil_info/perfil_info_controller.dart';

class PerfilInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PerfilInfoController());
  }
}
