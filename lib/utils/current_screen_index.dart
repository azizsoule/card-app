import 'package:card_app/screens/card_screen.dart';
import 'package:card_app/screens/home_page_sceen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrentScreenIndex extends StatelessWidget {
  final int index;

  CurrentScreenIndex(
    this.index,
  );

  @override
  Widget build(BuildContext context) {
    switch (index) {
      case 0:
        {
          return HomePageScreen();
        }
        break;
      case 1:
        {
          return CardScreen();
        }
        break;
      case 2:
        {
          return CardScreen();
        }
        break;
      default:
        {
          return HomePageScreen();
        }
        break;
    }
  }
}
