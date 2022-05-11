import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile/config/config.dart';
import 'package:mobile/widgets/wt_text.dart';

class WTAppBar extends AppBar {
  WTAppBar({
    required this.titleText,
    Color? backgroundColor,
    Key? key,
  }) : super(
          key: key,
          title: WTText(
            titleText,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: backgroundColor ?? WTColor.background,
          primary: true,
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          shadowColor: WTColor.transparent,
        );

  final String titleText;
}
