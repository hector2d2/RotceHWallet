import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rwallet/helpers/dialogs/info_dailog.dart';
import 'package:rwallet/services/authentication_service.dart';
import 'package:rwallet/services/user_service.dart';

class CreateAccountController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameAccountController = TextEditingController();

  Future<void> createAccount(BuildContext context) async {
    try {
      final resp = await AuthenticationService.registerUser(
        emailController.text,
        passwordController.text,
      );
      if (resp.user != null) {
        await saveInfoUser(resp.user!);
        goToHomeView();
      }
    } catch (e) {
      showInfoDialog(
        context: context,
        title: 'Error al Crear cuenta',
        body: 'Por favor de revisar los datos ingresados',
      );
    }
  }

  Future<bool> saveInfoUser(User user) async {
    final resp = await UserService.saveDataRegister(
      user,
      nameAccountController.text,
      'email',
    );
    return resp;
  }

  Future<void> goToHomeView() async => await Get.toNamed('/home');

  Future<void> goToLoginView() async => await Get.toNamed('/login');
}
