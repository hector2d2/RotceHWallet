import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:rwallet/routes/route_app.dart';

import '../../models/user_model.dart';
import '../../provider/user_provider.dart';
import '../../services/user_service.dart';

class AuthenticationController extends GetxController {
  @override
  void onReady() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      await getUserInfo(user.uid);
      goToHomeView();
    } else {
      goToLoginView();
    }
    super.onReady();
  }

  void goToHomeView() {
    Get.toNamed(RouteApp.home);
  }

  void goToLoginView() {
    Get.toNamed(RouteApp.login);
  }

  Future<void> getUserInfo(String uid) async {
    final userInfo = await UserService.getUser(uid);
    if (userInfo != null) {
      setGlobalUser(userInfo);
    }
  }

  void setGlobalUser(UserModel user) {
    Get.find<UserProvider>().currentUser = user;
  }
}
