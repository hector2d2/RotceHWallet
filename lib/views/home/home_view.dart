import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rwallet/services/drawer_service.dart';
import 'package:rwallet/views/friends/friends_view.dart';
import 'package:rwallet/views/groups/groups_view.dart';
import 'package:rwallet/views/home/home_controller.dart';
import 'package:rwallet/views/home/widgets/custom_drawer.dart';
import 'package:rwallet/views/my_wallet/my_wallet_view.dart';
import 'package:rwallet/views/perfil/perfil_view.dart';
import 'package:rwallet/views/setttings/settings_view.dart';

import 'widgets/my_sliver_persistent_header.dart';

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
              child: CustomScrollView(
                slivers: [
                  SliverPersistentHeader(
                    delegate: MySliverPersistentHeader(),
                    floating: true,
                    pinned: true,
                  ),
                  SliverToBoxAdapter(
                    child: GetBuilder<HomeController>(
                      id: 'indexView',
                      builder: (controller) {
                        return IndexedStack(
                          index: controller.indexView,
                          children: const [
                            MyWalletView(),
                            PerfilView(),
                            FriendsView(),
                            GroupsView(),
                            SettingsView(),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
