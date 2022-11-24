import 'package:get/get.dart';

class PerfilInfoController extends GetxController {
  String title = "";
  String body = "";
  int indexSelectInfo = 0;

  @override
  void onInit() {
    super.onInit();
    title = Get.arguments["title"];
    body = Get.arguments["body"];
    indexSelectInfo = Get.arguments["indexSelectInfo"];
  }
}
