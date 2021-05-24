import 'package:card_app/screens/user_space/home_screen.dart';
import 'package:card_app/screens/user_space/operations_screen.dart';
import 'package:card_app/screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserSpaceController extends GetxController {

  Widget body;

  RxInt currentBody = 0.obs;

  List<Widget> bodies = [
    HomeScreen(),
    OperationsScreen(),
    WelcomeScreen(),
  ];

  List<IconData> menuIcons = [
    Icons.home,
    Icons.access_time,
    Icons.account_balance,
  ];

  void onMenuItemTap(int i) {
    currentBody.value = i;
  }

}