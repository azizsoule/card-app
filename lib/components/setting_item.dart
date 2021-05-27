import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final String title;
  final String subtitle;

  SettingItem({this.subtitle, this.title = "Setting Item"});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: Icon(CupertinoIcons.person_alt),
            decoration: BoxDecoration(
              color: AppColors.formFieldColor,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          if (subtitle == null)
            Text(
              title,
              style: TextStyle(
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            )
          else
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: AppColors.third,
                  ),
                ),
              ],
            ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(15),
            child: Icon(CupertinoIcons.chevron_forward),
            decoration: BoxDecoration(
              color: AppColors.formFieldColor,
              borderRadius: BorderRadius.circular(
                Constants.APP_RADIUS,
              ),
            ),
          )
        ],
      ),
    );
  }
}
