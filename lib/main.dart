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
        primarySwatch: MaterialColor(
            AppColors.primary.value,
            {
              50: AppColors.primary,
              100: AppColors.primary,
              200: AppColors.primary,
              300: AppColors.primary,
              400: AppColors.primary,
              500: AppColors.primary,
              600: AppColors.primary,
              700: AppColors.primary,
              800: AppColors.primary,
              900: AppColors.primary,
            }
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          backgroundColor: AppColors.secondary,
          iconTheme: IconThemeData(
            color: AppColors.primary
          )
        ),
        fontFamily: "Poppins",
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
