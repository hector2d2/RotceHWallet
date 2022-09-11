import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/views/menu_groups/menu_gruop_controller.dart';
import 'package:rwallet/views/menu_groups/widgets/balance_widget.dart';

class MenuGroupView extends StatelessWidget {
  const MenuGroupView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenuGroupController>(builder: (controller) {
      return Scaffold(
        backgroundColor: const Color(
          0xff1C3361,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () => controller.goBack(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Saldo (Renta)',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffF3C981),
                      ),
                    ),
                  ],
                ),
                IndexedStack(
                  children: [
                    BalanceWidget(),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: const Color(
            0xff1C3361,
          ),
          items: [
            BottomNavigationBarItem(
              label: 'Saldo',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Recibos',
              icon: Icon(
                Icons.checklist,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(
                Icons.chat,
              ),
            ),
          ],
        ),
      );
    });
  }
}
