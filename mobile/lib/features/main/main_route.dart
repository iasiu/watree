import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watree/config/config.dart';
import 'package:watree/features/history/history_cubit.dart';
import 'package:watree/features/history/history_screen.dart';
import 'package:watree/features/home/home_cubit.dart';
import 'package:watree/features/home/home_screen.dart';
import 'package:watree/features/main/tab_cubit.dart';
import 'package:watree/widgets/widgets.dart';

class MainRoute extends GoRoute {
  MainRoute()
      : super(
          path: routePath,
          builder: (context, _) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) => TabCubit()),
              BlocProvider(create: (context) => HomeCubit()..load()),
              BlocProvider(create: (context) => HistoryCubit()..load()),
            ],
            child: const MainScreen(),
          ),
        );

  static String get routePath => '/';
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  Widget _buildBody(WTTab tab) {
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
        activeIcon: Icon(Icons.home_filled, color: WTColor.white),
        icon: Icon(Icons.home_outlined, color: WTColor.black),
        label: context.l10n.main_route_home_tab,
      ),
      BottomNavigationBarItem(
        activeIcon: Icon(Icons.menu_book, color: WTColor.white),
        icon: Icon(Icons.book, color: WTColor.black),
        label: context.l10n.main_route_history_tab,
      ),
    ];

    return BlocBuilder<TabCubit, WTTab>(
      builder: (context, tab) => Scaffold(
        appBar: WTAppBar(
          titleText: context.l10n.main_route_title,
        ),
        backgroundColor: WTColor.background,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: tab.index,
          backgroundColor: WTColor.mainGreen,
          iconSize: 28,
          selectedItemColor: WTColor.white,
          unselectedItemColor: WTColor.black,
          selectedFontSize: 16,
          unselectedFontSize: 16,
          onTap: (index) => context.read<TabCubit>().change(
                WTTab.values[index],
              ),
          items: _tabs,
        ),
        body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          switchInCurve: Curves.easeInOut,
          switchOutCurve: Curves.easeInOut,
          transitionBuilder: (child, animation) => FadeTransition(
            opacity: animation,
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.1, 0),
                end: const Offset(0, 0),
              ).animate(animation),
              child: child,
            ),
          ),
          child: _buildBody(tab),
        ),
      ),
    );
  }
}
