import 'package:get/get.dart';
import 'package:rwallet/views/perfil/perfil_controller.dart';

class PerfilBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PerfilController());
  }
}
