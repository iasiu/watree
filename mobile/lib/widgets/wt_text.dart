import 'package:flutter/material.dart';
import 'package:watree/config/config.dart';

class WTText extends Text {
  WTText(
    String text, {
    Key? key,
    Color? color,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    int maxLines = 1,
  }) : super(
          text,
          key: key,
          style: TextStyle(
            color: color ?? WTColor.text,
            fontSize: fontSize,
            fontWeight: fontWeight,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: maxLines,
        );
}
