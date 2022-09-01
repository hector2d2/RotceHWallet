import 'package:get/get.dart';
import 'package:rwallet/views/friends/friends_controller.dart';

class FriendsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FriendsController());
  }
}
