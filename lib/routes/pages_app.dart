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
  ];
}
