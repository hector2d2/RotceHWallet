import 'package:get/get.dart';
import 'package:rwallet/views/my_wallet/my_wallet_controller.dart';

class MyWalletBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyWalletController());
  }
}
