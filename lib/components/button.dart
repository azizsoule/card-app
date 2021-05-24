import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;
  final Color textAndIconColor;
  final IconData icon;
  final Color backgroundColor;
  final Function onPressed;
  final Color borderColor;

  Button({this.text = "", this.icon, @required this.onPressed, this.backgroundColor = AppColors.primary, this.textAndIconColor = AppColors.secondary, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.APP_RADIUS),
        side: borderColor!=null ? BorderSide(
          color: borderColor,
          style: BorderStyle.solid,
        ) : BorderSide.none,
      ),
      height: 50,
      elevation: 25,
      color: backgroundColor,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: TextStyle(
            color: textAndIconColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),),
          if (icon != null)
            SizedBox(width: 10,),
          if (icon != null)
            Icon(icon, color: textAndIconColor,)
        ],
      ),
    );
  }
}
