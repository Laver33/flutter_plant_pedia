import 'package:go_router/go_router.dart';
import 'package:my_first_app/pages/LoadScreen.dart';
import 'package:my_first_app/main.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoadScreen(),
    ),
    GoRoute(
      path: '/main',
      builder: (context, state) => StartScreen(),
    ),
  ],
);