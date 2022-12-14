import 'package:get/get.dart';
import 'package:rwallet/routes/route_app.dart';
import 'package:rwallet/views/authentication/authentication_binding.dart';
import 'package:rwallet/views/authentication/authentication_view.dart';
import 'package:rwallet/views/create_account/create_account_binding.dart';
import 'package:rwallet/views/create_account/create_account_view.dart';
import 'package:rwallet/views/home/home_binding.dart';
import 'package:rwallet/views/home/home_view.dart';
import 'package:rwallet/views/login/login_binding.dart';
import 'package:rwallet/views/login/login_view.dart';
import 'package:rwallet/views/menu_groups/menu_group_view.dart';
import 'package:rwallet/views/perfil_info/perfil_info_view.dart';

import '../views/menu_groups/menu_group_binding.dart';
import '../views/perfil_info/perfil_info_binding.dart';

class PagesApp {
  static List<GetPage> pages = [
    GetPage(
      name: RouteApp.login,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: RouteApp.createAccount,
      page: () => const CreateAccountView(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: RouteApp.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: RouteApp.authentication,
      page: () => const AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: RouteApp.groupMenu,
      page: () => const MenuGroupView(),
      binding: MenuGroupBinding(),
    ),
    GetPage(
      name: RouteApp.perfilInfo,
      page: () => const PerfilInfo(),
      binding: PerfilInfoBinding(),
    ),
  ];
}
