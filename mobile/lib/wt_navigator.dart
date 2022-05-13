import 'package:go_router/go_router.dart';
import 'package:watree/features/main/main_route.dart';

class WTNavigator {
  final router = GoRouter(
    initialLocation: MainRoute.routePath,
    routes: [
      MainRoute(),
    ],
  );
}
