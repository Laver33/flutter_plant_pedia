import 'package:go_router/go_router.dart';
import 'package:my_first_app/Widgets/card.dart';
import 'package:my_first_app/pages/LoadScreen.dart';
import 'package:my_first_app/main.dart';
import 'package:my_first_app/pages/SettingsScreen.dart';

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
    GoRoute(
      path: '/test',
      builder: (context, state) => Test(),
    ), 
    
    GoRoute(
      path: '/plant',
      builder: (context, state) => SettingsScreen(),
    ), 
    GoRoute(
      path: '/calendar',
      builder: (context, state) => SettingsScreen(),
    ), 
    GoRoute(
      path: '/record',
      builder: (contex, state) => SettingsScreen(),
    ), 
    GoRoute(
      path: '/settings',
      builder: (context, state) => SettingsScreen(),
    ), 
  ],
);