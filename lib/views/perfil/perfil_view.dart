import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/theme/colors.dart';

import '../../helpers/image/image_helper.dart';
import 'perfil_controller.dart';

class PerfilView extends StatelessWidget {
  const PerfilView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      child: GetBuilder<PerfilController>(
        builder: (controller) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage:
                    imageFromBase64String(controller.photoPerfil).image,
              ),
              Divider(
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0),
                color: ColorsApp.colorCard,
                width: Get.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Container(
                        alignment: Alignment.centerLeft,
                        width: Get.width * .25,
                        child: Text(
                          'Nombre',
                          style: TextStyle(
                            color: ColorsApp.colorTitle,
                          ),
                        ),
                      ),
                      title: Text(
                        controller.userName,
                        style: TextStyle(
                          color: ColorsApp.colorBody,
                        ),
                      ),
                      onTap: () => controller.navigateToEditPerfilPage(
                        "Nombre de Usuario",
                        controller.userName,
                        0,
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        alignment: Alignment.centerLeft,
                        width: Get.width * .25,
                        child: Text(
                          'Correo Eletronico',
                          style: TextStyle(
                            color: ColorsApp.colorTitle,
                          ),
                        ),
                      ),
                      title: Text(
                        controller.email,
                        style: TextStyle(
                          color: ColorsApp.colorBody,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Container(
                        alignment: Alignment.centerLeft,
                        width: Get.width * .25,
                        child: Text(
                          'Número de telefono',
                          style: TextStyle(
                            color: ColorsApp.colorTitle,
                          ),
                        ),
                      ),
                      title: Text(
                        controller.phone,
                        style: TextStyle(
                          color: ColorsApp.colorBody,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
