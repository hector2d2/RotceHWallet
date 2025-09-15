import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/views/widgets/social_authentication.dart';

import 'create_account_controller.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xff1C3361,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetBuilder<CreateAccountController>(
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
                            controller: controller.nameAccountController,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: 'Nombre de la Cuenta',
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
                            keyboardType: TextInputType.emailAddress,
                            controller: controller.emailController,
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
                            onPressed: () async =>
                                await controller.createAccount(context),
                            child: const Text(
                              'Crear Cuenta',
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
                                'Ya tienes cuenta?, ',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              TextButton(
                                onPressed: () => controller.goToLoginView(),
                                child: const Text(
                                  'Inicia Sesión.',
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
