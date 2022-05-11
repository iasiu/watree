import 'package:flutter/material.dart';
import 'package:mobile/generated/l10n.dart';
import 'package:mobile/wt_navigator.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  static const _appName = 'Watree';

  final navigator = WTNavigator();

  @override
  Widget build(BuildContext context) => MultiProvider(
        providers: [
          Provider.value(value: navigator),
        ],
        child: MaterialApp.router(
          routeInformationParser: navigator.router.routeInformationParser,
          routerDelegate: navigator.router.routerDelegate,
          title: _appName,
          localizationsDelegates: const [S.delegate],
        ),
      );
}
