import 'package:get/get.dart';
import 'package:rwallet/views/groups/groups_controlles.dart';

class GroupsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupsController());
  }
}
