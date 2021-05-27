import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/material.dart';

class ActionWidget extends StatelessWidget {
  final IconData iconData;
  final Function() onTap;
  final String text;

  ActionWidget({this.onTap, this.iconData, this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.primary.withOpacity(0.5),
              borderRadius: BorderRadius.circular(Constants.APP_RADIUS),
              border: Border.all(color: AppColors.primary),
            ),
            padding: EdgeInsets.all(10),
            child: Icon(
              iconData,
              color: AppColors.secondary,
            ),
          ),
          if (text != null)
            SizedBox(
              height: 5,
            ),
          if (text != null)
            Container(
              width: 80,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
