import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/views/authentication/authentication_controller.dart';
import 'package:rwallet/views/home/home_controller.dart';
import 'package:rwallet/views/home/home_view.dart';
import 'package:rwallet/views/login/login_view.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthenticationController>(
      builder: (controller) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
