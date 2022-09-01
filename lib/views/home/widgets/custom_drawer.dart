import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../helpers/image/image_helper.dart';
import '../home_controller.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 35, 62, 115),
      child: GetBuilder<HomeController>(
        builder: (controller) {
          return ListView(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: GetBuilder<HomeController>(
                  id: 'infoEmployee',
                  builder: (controller) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage:
                              imageFromBase64String(controller.photoPerfil)
                                  .image,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.displayName,
                              style: TextStyle(
                                color: Color(0xffF3C981),
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              controller.userEmail,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
              ListTile(
                title: Text(
                  'Inicio',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                onTap: () => controller.changeView(
                  0,
                  'RWALLET',
                ),
              ),
              ListTile(
                title: Text(
                  'Mi Perfil',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                onTap: () => controller.changeView(
                  1,
                  'PERFIL',
                ),
              ),
              ListTile(
                title: const Text(
                  'Mis Amigos',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                onTap: () => controller.goToMyFriends(),
              ),
              const ListTile(
                title: Text(
                  'Mis Grupos',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
              ListTile(
                title: const Text(
                  'Cerrar Sesión',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                onTap: () => controller.logOut(),
              ),
            ],
          );
        },
      ),
    );
  }
}
