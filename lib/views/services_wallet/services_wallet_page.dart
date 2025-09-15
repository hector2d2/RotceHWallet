import 'package:flutter/material.dart';
import 'package:rwallet/views/menu_groups/widgets/balance_widget.dart';

class ServicesWalletPage extends StatelessWidget {
  const ServicesWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xff1C3361,
      ),
      appBar: AppBar(
        backgroundColor: Color(
          0xff1C3361,
        ),
        foregroundColor: Colors.white,
        title: Text(
          'CARRO',
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BalanceWidget(),
        ),
      ),
    );
  }
}
