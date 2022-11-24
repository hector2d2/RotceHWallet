import 'package:flutter/material.dart';

class IconsAppBar extends StatelessWidget {
  const IconsAppBar({
    super.key,
    required this.indexView,
  });

  final int indexView;

  @override
  Widget build(BuildContext context) {
    if (indexView == 2 || indexView == 3) {
      return IconButton(
        alignment: Alignment.topLeft,
        padding: EdgeInsets.zero,
        onPressed: () {},
        icon: Icon(
          Icons.group_add,
          color: Colors.white,
          size: 40,
        ),
      );
    }
    return IconButton(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.zero,
      onPressed: () {},
      icon: Icon(
        Icons.notifications,
        color: Colors.white,
        size: 40,
      ),
    );
  }
}
