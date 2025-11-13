import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Widgets/list_category.dart';
import 'package:my_first_app/data/category_data.dart';
import 'package:my_first_app/pages/ProfileScreen.dart';
import 'package:my_first_app/Route.dart';
import 'package:my_first_app/pages/SearchScreen.dart';
import 'package:my_first_app/Style/String.dart';
import 'package:my_first_app/Widgets/list_popular.dart';
import 'package:my_first_app/data/post_data.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

// Provider 
final currentLocaleProvider = StateProvider<String>((ref) => 'ru');

final localizationProvider = Provider<AppLocalizations>((ref) {
  final currentLocale = ref.watch(currentLocaleProvider);
  return localizationMap[currentLocale]!;
});

void main() {
  runApp(const ProviderScope(child: MyApp())); // УБРАЛ лишние скобки
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
    );
  }
}

// ИЗМЕНИ НА ConsumerStatefulWidget
class StartScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends ConsumerState<StartScreen> {
  int _currentBottomIndex = 1;

  List<Widget> pagesWidget = [
    ProfileScreen(),
    HomeScreen(),
    Searchscreen(),
  ];

  void _indexSwapBottom(int index) {
    setState(() {
      _currentBottomIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final localizations = ref.watch(localizationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.appName), 
      ),
      body: pagesWidget[_currentBottomIndex],
      bottomNavigationBar: StylishBottomBar(
        option: DotBarOptions(
          dotStyle: DotStyle.tile,
        ),
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.person_2_outlined),
            title: Text('Профиль') 
          ),
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('Главная') 
          ),
          BottomBarItem(
            icon: Icon(Icons.search),
            title: Text('Поиск') 
          ),
        ],
        currentIndex: _currentBottomIndex,
        onTap: _indexSwapBottom,
      ),
    );
  }
}


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) { 


    final localizations = ref.watch(localizationProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                  child: Text(
                    localizations.plantCategory, 
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryes.length,
                itemBuilder: (context, index) {
                  return ListCategory(
                    title: categoryes[index].title,
                    imagePath: categoryes[index].imagePath,
                  );
                }
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 10, 0, 0),
                  child: Text(
                    localizations.popularPlants, 
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 190,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return ListPopular(
                    title: posts[index].title,
                    imagePath: posts[index].imagePath,
                    category: posts[index].category,
                    indexId: posts[index].id,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}