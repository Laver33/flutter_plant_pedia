import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/Style/AppAssets.dart';
import 'package:my_first_app/Widgets/loadscreen/load_screen_btn.dart';
import 'package:my_first_app/main.dart';

class LoadScreen extends ConsumerStatefulWidget {
  LoadScreen({super.key});

  @override
  ConsumerState<LoadScreen> createState() => _LoadScreenState();
}

class _LoadScreenState extends ConsumerState<LoadScreen> {

  @override
  Widget build(BuildContext context) {
    
    final localizations = ref.watch(localizationProvider);
    
    return Scaffold(
        body: Stack(
          children: [

            Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Center(
                  child: Container(
                    child: Image.asset(AppAssets.preImage),
                  ),
                ),
                const SizedBox(height: 20),

                RichText(
                  text: TextSpan(
                    text: localizations.appNameFirst,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),

                    children: <TextSpan>[
                      TextSpan(
                        text: localizations.appNameEnd,
                        style: TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                Text(
                  localizations.descript1,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 101, 101, 101),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            
            Positioned(

              bottom: 35, 
              left: 0,
              right: 0,

              child: Center(
                child: CustomBtnAnimate()
              ),
            ),
          ],
        ),
    );
  }
}