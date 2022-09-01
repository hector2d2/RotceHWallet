import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:rwallet/models/user_model.dart';
import 'package:rwallet/provider/user_provider.dart';
import 'package:rwallet/routes/route_app.dart';
import 'package:rwallet/services/drawer_service.dart';

class HomeController extends GetxController {
  UserModel? userModel;

  String homeTitle = 'RWALLET';
  String photoPerfil = '';
  String displayName = '';
  String userEmail = '';
  int indexView = 0;

  HomeController() {
    final user = FirebaseAuth.instance.currentUser;
    userModel = Get.find<UserProvider>().currentUser;
    setInfoEmployee(
      userModel!.photo,
      userModel!.email,
      userModel!.displayName,
    );
    print(userModel);
  }

  void setHomeTitle(String title) {
    homeTitle = title;
    update(['homeTitle']);
  }

  void setIndexView(int index) {
    indexView = index;
    update(['indexView']);
  }

  void changeView(int index, String title) {
    DrawerService.closeDrawer();
    setHomeTitle(title);
    setIndexView(index);
  }

  void setInfoEmployee(String photo, String email, String name) {
    photoPerfil = photo;
    userEmail = email;
    displayName = name;
    update(['infoEmployee']);
  }

  void goToMyFriends() async {
    changeView(2, 'Friends');
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    Get.toNamed(RouteApp.login);
  }
}
