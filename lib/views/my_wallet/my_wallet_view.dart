import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class MyWalletView extends StatelessWidget {
  const MyWalletView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Text(
            'walletview',
          ),
        ),
        ElevatedButton(
          onPressed: () async {
            final fcmToken = await FirebaseMessaging.instance.getToken();
            print("TOken : ");
            print(fcmToken);
          },
          child: Text(
            "Obtener token FCM",
          ),
        )
      ],
    );
  }
}
