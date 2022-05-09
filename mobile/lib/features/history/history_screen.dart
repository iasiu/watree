import 'package:flutter/material.dart';
import 'package:mobile/widgets/widgets.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: WTText(
          'history',
          fontSize: 20,
        ),
      );
}
