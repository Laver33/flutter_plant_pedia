import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Widgets/list_category.dart';
import 'package:my_first_app/category_data.dart';
import 'package:my_first_app/pages/ProfileScreen.dart';
import 'package:my_first_app/Route.dart';
import 'package:my_first_app/pages/SearchScreen.dart';
import 'package:my_first_app/Style/String.dart';
import 'package:my_first_app/Widgets/list_popular.dart';
import 'package:my_first_app/post_data.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

void main() {
  runApp(MyApp());
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

class StartScreen extends StatefulWidget {

  @override
  State<StartScreen> createState() => _StartScreenState();
}



class _StartScreenState extends State<StartScreen> {

  int _currentBottomIndex = 1;

  List <Widget> pagesWidget = const [
    ProfileScreen(),
    HomeScreen(),
    Searchscreen(),
  ];


  void _indexSwapBottom (int index){
    setState(() {
      _currentBottomIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(RuStrings.AppName),
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
            
            )
    );
  }
}


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(35, 10, 0, 0), 

                    child: Text(
                      RuStrings.PlantCategory,
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
                  itemBuilder: (context, index){
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
                      RuStrings.PopularPlants,
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
                  itemBuilder: (context, index){
                    return ListPopular(
                      title: posts[index].title,
                      imagePath: posts[index].imagePath,
                    );
                  },
                ),
              ),
            ])
      ),
    );
  }
}