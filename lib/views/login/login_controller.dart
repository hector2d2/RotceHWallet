import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/models/user_model.dart';
import 'package:rwallet/provider/user_provider.dart';
import 'package:rwallet/routes/route_app.dart';
import 'package:rwallet/services/authentication_service.dart';
import 'package:rwallet/services/user_service.dart';

import '../../helpers/dialogs/info_dailog.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void goToCreateAccountView() => Get.toNamed(RouteApp.createAccount);

  Future<void> signIn(BuildContext context) async {
    try {
      final userCredential = await AuthenticationService.signInWithEmail(
        emailController.text,
        passwordController.text,
      );
      final user = userCredential.user;
      await getUserInfo(user!.uid);
      Get.toNamed(RouteApp.home, arguments: user);
    } on FirebaseAuthException catch (e) {
      print('Error en Sing in $e');
      String messageError = '';
      if (e.code == 'invalid-email') {
        messageError = 'El correo electronico es invalido';
      } else if (e.code == 'user-disabled') {
        messageError =
            'El usuario ha sido baneado por lo cual no es posible acceder.';
      } else if (e.code == 'user-not-found') {
        messageError =
            'No se encontro un usuario con las credenciales ingresadas.';
      } else if (e.code == 'wrong-password') {
        messageError = 'Contraseña Incorrecta';
      } else {
        messageError =
            'Se ha producido un error inesperado, por favor intentalo mas tarde';
      }
      await showInfoDialog(
        context: context,
        title: 'Login Icorrecto',
        body: messageError,
      );
    }
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
