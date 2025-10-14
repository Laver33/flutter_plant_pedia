import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Style/CastColors.dart';

class ListCategory extends StatelessWidget {
  final String title;
  final String imagePath;


  ListCategory ({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.testCardColor, // цвет карты
          borderRadius: BorderRadius.circular(10),
        ),

        width: 100,
        
        child: Column(
          children: [
            Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.testBgColor, // Цвет под картой
                      borderRadius: BorderRadius.circular(10)
                    ),

                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        imagePath,
                        height: 70,
                      ),
                    ),
                  )              
                ],
              )
            ),
            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                height: 25,
                width: 85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
              
                child: Center(
                  child: Text(title,  
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.black
                  ),
                  )),
              ),
            ),
          ],
        )

      ));
  }
}



