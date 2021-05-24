import 'package:card_app/utils/app_colors.dart';
import 'package:card_app/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Field extends StatefulWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final Function(String value) validator;
  bool hidden;

  Field(
      {this.textEditingController, this.hintText, this.validator, this.hidden});

  @override
  _FieldState createState() => _FieldState();
}

class _FieldState extends State<Field> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.formFieldColor,
        borderRadius: BorderRadius.circular(Constants.APP_RADIUS),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: widget.textEditingController,
              validator: widget.validator,
              obscureText: widget.hidden ?? false,
              style: TextStyle(
                color: AppColors.primary,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                border: InputBorder.none,
                hintText: widget.hintText,
              ),
            ),
          ),
          if (widget.hidden != null)
            IconButton(
              icon: Icon(
                widget.hidden ? CupertinoIcons.eye : CupertinoIcons.eye_slash,
                color: AppColors.primary,
              ),
              onPressed: () {
                setState(() {
                  widget.hidden = !widget.hidden;
                });
              },
            )
        ],
      ),
    );
  }
}
