import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watree/config/config.dart';
import 'package:watree/widgets/widgets.dart';

class WTAppBar extends AppBar {
  WTAppBar({
    required this.titleText,
    Color? backgroundColor,
    Key? key,
  }) : super(
          key: key,
          title: WTText(
            titleText,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: backgroundColor ?? WTColor.transparent,
          primary: true,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          shadowColor: WTColor.transparent,
        );

  final String titleText;
}
