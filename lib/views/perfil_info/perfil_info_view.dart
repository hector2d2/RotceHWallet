import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/views/perfil_info/perfil_info_controller.dart';

class PerfilInfo extends StatelessWidget {
  const PerfilInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PerfilInfoController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(controller.title),
            actions: [
              TextButton(
                onPressed: () => {},
                child: Text("Listo"),
              ),
            ],
          ),
          body: Stack(
            children: [
              Text(
                controller.title,
              ),
              TextField(),
              CircularProgressIndicator(),
            ],
          ),
        );
      },
    );
  }
}
