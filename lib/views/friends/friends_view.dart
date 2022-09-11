import 'package:flutter/material.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            title: Text('Nuevo Grupo'),
          ),
          ListTile(
            title: Text('Nuevo Contacto'),
          ),
        ],
      ),
    );
  }
}
