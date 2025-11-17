import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPopular extends StatefulWidget {
  final String title;
  final String imagePath;
  final String category;
  final int indexId;


  ListPopular ({
    required this.title, 
    required this.imagePath, 
    required this.category,
    required this.indexId,
    });

  @override
  State<ListPopular> createState() => _ListPopularState();
}

class _ListPopularState extends State<ListPopular> {

  double cardWidth = 130;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          context.push('/cards/${widget.indexId}');
        },

        child: Container(

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,

          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 1,
              offset: Offset(0.5, 0.5),
              spreadRadius: 0.2,      
            )
          ],

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
                    width: cardWidth / 2 + 10, 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,

                      border: Border.all(
                        color: Colors.black,
                        width: 0.2
                      )
                    ),
                    child: Center(
                      child: Text(widget.category, 
                      style:  GoogleFonts.poppins(
                        fontSize: 11,
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
                    fontSize: 12,
                    color: Colors.black
                  ),
                  )
                ),
              ),
            ),
          ],
        )
      )
      )
    );
  } 
}
