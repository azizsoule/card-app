import 'package:flutter/material.dart';

class WalkThrough extends StatelessWidget {
  final String textContent;
  final String walkImg;
  final String title;
  final Color titleColor;
  final Color contentColor;

  WalkThrough({Key key, this.title, this.textContent, this.titleColor, this.contentColor, this.walkImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: h * 0.05),
            height: h * 0.5,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20,
                      right: 20
                  ),
                  child: Image.asset(walkImg, width: width * 0.8, height: h * 0.4),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.08,
          ),
          text(title==null ? "Title" : title,
            textColor: titleColor==null ? Colors.green : titleColor,
            fontSize: 20.0,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 28.0),
            child: text(
                textContent==null ? "Lorem Ipsum is simply dummy text of the printing and typesetting industry.simply duumy text " : textContent,
                fontSize: 16.0,
                maxLine: 10,
                textColor: contentColor,
                isCentered: true),
          )
        ],
      ),
    );
  }
}

Widget text(String text,
    {var fontSize = 18.0,
      textColor = Colors.black,
      var isCentered = false,
      var maxLine = 1,
      var latterSpacing = 0.25,
      var textAllCaps = false,
      var isLongText = false}) {
  return Text(textAllCaps ? text.toUpperCase() : text,
      textAlign: isCentered ? TextAlign.center : TextAlign.start,
      maxLines: isLongText ? null : maxLine,
      style: TextStyle(fontSize: fontSize, color: textColor, height: 1.5, letterSpacing: latterSpacing, fontWeight: FontWeight.bold));
}