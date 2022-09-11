import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:rwallet/routes/route_app.dart';

class GroupsController extends GetxController {
  void goToGroupMenu() {
    Get.toNamed(RouteApp.groupMenu);
  }
}
