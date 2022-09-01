import 'package:flutter/material.dart';

class DrawerService {
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();

  static void toogleDrawer() {
    if (scaffoldKey.currentState?.isDrawerOpen ?? false) {
      closeDrawer();
    } else {
      openDrawer();
    }
  }

  static void openDrawer() {
    scaffoldKey.currentState?.openDrawer();
  }

  static void closeDrawer() {
    scaffoldKey.currentState?.closeDrawer();
  }
}
