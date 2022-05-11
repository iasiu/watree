import 'package:flutter/material.dart';
import 'package:mobile/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: WTText(
          'home',
          fontSize: 20,
        ),
      );
}
