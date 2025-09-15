import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:rwallet/views/login/login_controller.dart';

import '../widgets/social_authentication.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xff1C3361,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: GetBuilder<LoginController>(
              builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(
                        8,
                        40,
                        0,
                        40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Bienvenido',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffF3C981),
                            ),
                          ),
                          Text(
                            'RWALLET',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(
                        40,
                      ),
                      child: Column(
                        children: [
                          TextField(
                            controller: controller.emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Correo Electronico',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xffF3C981),
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xffF3C981),
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              fillColor: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: controller.passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Contraseña',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xffF3C981),
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xffF3C981),
                                  width: 3,
                                ),
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              fillColor: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: const StadiumBorder(),
                                padding: const EdgeInsets.all(10)),
                            onPressed: () => controller.signIn(context),
                            child: const Text(
                              'Iniciar Sesión',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1C3361),
                              ),
                            ),
                          ),
                          SocialAuthentication(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'No tienes cuenta?, ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              TextButton(
                                onPressed: () =>
                                    controller.goToCreateAccountView(),
                                child: const Text(
                                  'Crear una cuenta.',
                                  style: TextStyle(
                                    color: Color(0xffF3C981),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
