import 'package:go_router/go_router.dart';
import 'package:my_first_app/Widgets/card.dart';
import 'package:my_first_app/data/post_data.dart';
import 'package:my_first_app/pages/LoadScreen.dart';
import 'package:my_first_app/main.dart';
import 'package:my_first_app/pages/sections/CalendarScreen.dart';
import 'package:my_first_app/pages/sections/PlantsScreen.dart';
import 'package:my_first_app/pages/sections/RecordScreen.dart';
import 'package:my_first_app/pages/sections/SettingsScreen.dart';

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
      path: '/cards/:id',
      name: 'cards',
      builder: (context, state){
        String id = state.pathParameters['id']!;
        int cardId = int.parse(id);

        PostData cards = posts.firstWhere((p) => p.id == cardId);

        return Test(
          namePlant: cards.name,
          descripPlant: cards.description, 
          climatePlant: cards.category , 
          specialPlant: cards.category,
          imagePlant: cards.imagePath,
        );
      }
    ), 
    GoRoute(
      path: '/plant',
      builder: (context, state) => PlantsScreen(),
    ), 
    GoRoute(
      path: '/calendar',
      builder: (context, state) => CalendarScreen(),
    ), 
    GoRoute(
      path: '/record',
      builder: (contex, state) => RecordScreen(),
    ), 
    GoRoute(
      path: '/settings',
      builder: (context, state) => SettingsScreen(),
    ), 

    // Категории

    
  ],
);