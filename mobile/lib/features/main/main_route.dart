import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile/config/config.dart';
import 'package:mobile/features/history/history_screen.dart';
import 'package:mobile/features/home/home_screen.dart';
import 'package:mobile/features/main/tab_cubit.dart';
import 'package:mobile/widgets/widgets.dart';
import 'package:mobile/widgets/wt_appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainRoute extends GoRoute {
  MainRoute()
      : super(
          path: routePath,
          builder: (context, _) => BlocProvider(
            create: (context) => TabCubit(),
            child: const MainScreen(),
          ),
        );

  static String get routePath => '/';
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  Widget? _buildBody(WTTab tab) {
    switch (tab) {
      case WTTab.home:
        return const HomeScreen();
      case WTTab.history:
        return const HistoryScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    final _tabs = [
      BottomNavigationBarItem(
        icon: const SizedBox(),
        label: context.l10n.main_route_home_tab,
      ),
      BottomNavigationBarItem(
        icon: const SizedBox(),
        label: context.l10n.main_route_history_tab,
      ),
    ];

    return BlocBuilder<TabCubit, WTTab>(
      builder: (context, tab) => Scaffold(
        appBar: WTAppBar(
          titleText: context.l10n.main_route_title,
        ),
        backgroundColor: WTColor.background,
        body: _buildBody(tab),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tab.index,
          onTap: (index) => context.read<TabCubit>().change(
                WTTab.values[index],
              ),
          items: _tabs,
        ),
      ),
    );
  }
}
