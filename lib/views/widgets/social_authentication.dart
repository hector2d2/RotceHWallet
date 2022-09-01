import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialAuthentication extends StatelessWidget {
  const SocialAuthentication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleAvatar(
            child: Icon(
              Icons.facebook,
            ),
          ),
          CircleAvatar(
            child: FaIcon(
              FontAwesomeIcons.google,
            ),
          ),
          CircleAvatar(
            child: FaIcon(
              FontAwesomeIcons.github,
            ),
          ),
          CircleAvatar(
            child: FaIcon(
              FontAwesomeIcons.apple,
            ),
          ),
        ],
      ),
    );
  }
}
