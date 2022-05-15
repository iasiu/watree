import 'package:flutter/material.dart';
import 'package:watree/config/config.dart';
import 'package:watree/widgets/wt_text.dart';

class WTButton extends StatelessWidget {
  const WTButton({
    required this.label,
    this.onTap,
    Key? key,
  }) : super(key: key);

  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => SizedBox(
        width: double.maxFinite,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(WTColor.mainGreen),
            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
            elevation: MaterialStateProperty.all(8),
            overlayColor: MaterialStateProperty.all(WTColor.black),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          onPressed: onTap,
          child: FittedBox(
            child: WTText(
              label,
              color: WTColor.textWhite,
              fontSize: 18,
            ),
          ),
        ),
      );
}
