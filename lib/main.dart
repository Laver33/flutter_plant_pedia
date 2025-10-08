import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Route.dart';
import 'package:my_first_app/Style/CastColors.dart';
import 'package:my_first_app/Style/String.dart';
import 'package:my_first_app/list_popular.dart';
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

        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 5),

                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.popularColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                        child: Text(
                          RuStrings.PopularPlants, 
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 150,
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

          bottomNavigationBar: StylishBottomBar(
            option: DotBarOptions(
              dotStyle: DotStyle.tile, 
            ), 
            items: <BottomBarItem>[

              BottomBarItem(
                icon: Icon(Icons.heart_broken),
                title: Text('Избранные')
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
