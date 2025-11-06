import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Style/String.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {



  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(RuStrings.sectionsTitles[3]),
      ),
      backgroundColor: const Color.fromARGB(255, 237, 237, 237),
      body: SafeArea(
        child: Column(
          children: [

            Padding(padding: EdgeInsetsGeometry.all(10),
            child: Container(
              width: screenWidth,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.amber
                      ),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.only(
                      left: 60),
                    child: Text('Настройки', style: GoogleFonts.poppins(
                      fontSize: 24
                    ),)
                    ),
                ],
              ),
            ),
            ),

            Text(
              'f'
            )


          ],
        )
      )
    );
  }
}