import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Style/CastColors.dart';

class ListPopular extends StatefulWidget {
  final String title;
  final String imagePath;
  final String category;


  ListPopular ({required this.title, required this.imagePath, required this.category});

  @override
  State<ListPopular> createState() => _ListPopularState();
}

class _ListPopularState extends State<ListPopular> {

  // Переменные
  double cardWidth = 120;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.testCardColor, // цвет карты
          borderRadius: BorderRadius.circular(10),
        ),

        width: cardWidth,
        
        child: Column(
          children: [
            Row(
              children: [

                Padding(
                  padding: EdgeInsets.fromLTRB(10, 8, 0, 8),
                  child: Container(
                    height: 20,
                    width: cardWidth / 2 + 5, 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white
                    ),
                    child: Center(
                      child: Text(widget.category, 
                      style:  GoogleFonts.poppins(
                        fontSize: 12,
                        color: Colors.black
                      ),
                  
                    ),),
                  ),
                )
              ],
            ),

            Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image.asset(
                      widget.imagePath,
                      height: 80,
                    ),
                  ),             
                ],
              )
            ),

            Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                height: 28,
                width: 85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
              
                child: Center(
                  child: Text(widget.title,  
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



