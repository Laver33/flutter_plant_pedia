import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_first_app/Style/CastColors.dart';
import 'package:my_first_app/Style/String.dart';

class LoadScreen extends StatefulWidget {
  LoadScreen({super.key});

  @override
  State<LoadScreen> createState() => _LoadScreenState();
}

class _LoadScreenState extends State<LoadScreen> {
  final String preImages = 'lib/assets/images/Pic.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [

            Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Center(
                  child: Container(
                    child: Image.asset(preImages),
                  ),
                ),
                const SizedBox(height: 20),

                RichText(
                  text: TextSpan(
                    text: RuStrings.AppNameFirst,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),

                    children: <TextSpan>[
                      TextSpan(
                        text: RuStrings.AppNameEnd,
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
                  RuStrings.Descript1,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 101, 101, 101),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            
            Positioned(

              bottom: 30, 
              left: 0,
              right: 0,

              child: Center(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      context.go('/main');
                    });
                  },

                  style: OutlinedButton.styleFrom(
                    backgroundColor: AppColors.butColor1,
                    minimumSize: Size(350, 50),
                  ),

                  child: Text(
                    "Продолжение",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}