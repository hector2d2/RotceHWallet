import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:rwallet/Data/user_default.dart';
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
    userModel = getUserInfo();
    setInfoEmployee(
      userModel!.photo,
      userModel!.email,
      userModel!.displayName,
    );
    print(userModel);
  }

  @override
  void onInit() async {
    super.onInit();
    await requestNotificationPermission();
  }

  requestNotificationPermission() async {
    NotificationSettings settings = await FirebaseMessaging.instance
        .requestPermission(
            alert: true,
            announcement: false,
            badge: true,
            carPlay: false,
            criticalAlert: false,
            provisional: true,
            sound: true);

    print(settings.authorizationStatus);
  }

  UserModel getUserInfo() {
    var userModel = Get.find<UserProvider>().currentUser;
    if (userModel != null) return userModel;
    return createFakeUserModel();
  }

  UserModel createFakeUserModel() {
    final user = FirebaseAuth.instance.currentUser;
    print(user?.uid);
    print('DisplayName');
    UserModel userModel = UserModel(
      displayName: user?.displayName ?? 'Unknown',
      uid: user!.uid,
      email: user.email!,
      provider: 'Unknown',
      photo: UserDefault.photo,
    );
    return userModel;
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

  void goToMyGroups() {
    changeView(3, 'Mis Grupos');
  }

  void goToSettings() {
    changeView(4, 'Configuración');
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
    Get.toNamed(RouteApp.login);
  }
}
