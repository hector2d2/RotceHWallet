import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/services/drawer_service.dart';
import 'package:rwallet/views/friends/friends_view.dart';
import 'package:rwallet/views/home/home_controller.dart';
import 'package:rwallet/views/home/widgets/custom_drawer.dart';
import 'package:rwallet/views/my_wallet/my_wallet_view.dart';
import 'package:rwallet/views/perfil/perfil_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          key: DrawerService.scaffoldKey,
          backgroundColor: const Color(
            0xff1C3361,
          ),
          drawer: const CustomDrawer(),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          icon: Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 40,
                          ),
                          onPressed: () => DrawerService.openDrawer(),
                        ),
                        GetBuilder<HomeController>(
                          id: 'homeTitle',
                          builder: (controller) {
                            return Text(
                              controller.homeTitle,
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Color(0xffF3C981),
                              ),
                            );
                          },
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GetBuilder<HomeController>(
                      id: 'indexView',
                      builder: (controller) {
                        return IndexedStack(
                          index: controller.indexView,
                          children: const [
                            MyWalletView(),
                            PerfilView(),
                            FriendsView(),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
