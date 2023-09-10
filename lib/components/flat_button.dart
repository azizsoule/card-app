import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/material.dart';

class FButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  FButton({this.color = AppColors.primary, @required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      onPressed: onPressed,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.APP_RADIUS),
          ),
        ),
      ),
    );
  }
}
