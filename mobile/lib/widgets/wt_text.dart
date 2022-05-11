import 'package:flutter/material.dart';
import 'package:mobile/config/config.dart';

class WTText extends Text {
  WTText(
    String text, {
    Key? key,
    double fontSize = 12,
    FontWeight fontWeight = FontWeight.normal,
    int maxLines = 1,
  }) : super(
          text,
          key: key,
          style: TextStyle(
            color: WTColor.text,
            fontSize: fontSize,
            fontWeight: fontWeight,
            overflow: TextOverflow.ellipsis,
          ),
          maxLines: maxLines,
        );
}
