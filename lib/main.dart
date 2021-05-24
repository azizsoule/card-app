import 'package:card_app/screens/on_boarding_screen.dart';
import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    CardApp(),
  );
}

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constants.APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: AppColors.secondary,
          iconTheme: IconThemeData(
            color: AppColors.primary
          )
        ),
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: AppColors.secondary,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android : CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS : CupertinoPageTransitionsBuilder(),
          }
        ),
        dialogTheme: DialogTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.APP_RADIUS),
          ),
        ),
      ),
      home: OnBoardingScreen(),
    );
  }
}
