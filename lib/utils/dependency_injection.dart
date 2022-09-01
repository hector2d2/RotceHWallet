import 'package:get/get.dart';
import 'package:rwallet/provider/user_provider.dart';

class DependencyInjection {
  static void init() {
    Get.put(UserProvider());
  }
}
