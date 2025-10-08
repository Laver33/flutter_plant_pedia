import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Style/CastColors.dart';

class ListPopular extends StatelessWidget {
  final String title;

  ListPopular ({required this.title});
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
                  Icon(Icons.abc_sharp)
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



