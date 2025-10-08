import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Style/CastColors.dart';

class ListPopular extends StatelessWidget {
  final String title;
  final String imagePath;


  ListPopular ({required this.title, required this.imagePath});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 0.5,
            style: BorderStyle.solid,
          ),
        ),

        width: 100,
        
        child: Column(
          children: [
            Container(
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Image.asset(
                    imagePath,
                    height: 70,
                  )              


                ],
              ),
              height: 100
            ),
            Center(
              child: Text(title,  
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.black
              ),
              )),
          ],
        )

      ));
  }
}



