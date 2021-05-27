import 'package:card_app/screens/user_space/card_screen.dart';
import 'package:card_app/screens/user_space/home_screen.dart';
import 'package:card_app/screens/user_space/operations_screen.dart';
import 'package:card_app/screens/user_space/settings_screen.dart';
import 'package:card_app/screens/welcome_screen.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserSpaceController extends GetxController {

  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  Widget body;

  RxInt currentBody = 0.obs;

  List<Widget> bodies = [
    HomeScreen(),
    OperationsScreen(),
    CardScreen(),
    SettingsScreen(),
  ];

  List<IconData> menuIcons = [
    CupertinoIcons.home,
    CupertinoIcons.timer,
    CupertinoIcons.creditcard,
    CupertinoIcons.settings_solid,
  ];

  void onMenuItemTap(int i) {
    currentBody.value = i;
    fabKey.currentState.close();
  }

}