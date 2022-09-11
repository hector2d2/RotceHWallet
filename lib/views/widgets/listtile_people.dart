import 'package:flutter/material.dart';

class ListTilePerson extends StatelessWidget {
  final void Function() onTap;

  const ListTilePerson({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Renta',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        'Hector: Vamo a Comer😝',
        style: TextStyle(
          color: Colors.white60,
          fontWeight: FontWeight.w300,
          fontSize: 16,
        ),
      ),
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: Image.network(
          'https://definicion.de/wp-content/uploads/2011/01/casa-1.jpg',
          fit: BoxFit.cover,
        ).image,
      ),
      onTap: () => onTap(),
    );
  }
}
