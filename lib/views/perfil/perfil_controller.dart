import 'package:get/get.dart';
import 'package:rwallet/routes/route_app.dart';

import '../../provider/user_provider.dart';

class PerfilController extends GetxController {
  String photoPerfil = '';
  String userName = '';
  String email = '';
  String phone = '';

  PerfilController() {
    final user = Get.find<UserProvider>().currentUser;
    photoPerfil = user!.photo;
    userName = user.displayName;
    email = user.email;
    phone = user.phoneNumber;
  }

  void navigateToEditPerfilPage(
    String titleInfo,
    String titleBody,
    int indexSelectInfo,
  ) {
    Get.toNamed(RouteApp.perfilInfo);
  }
}
