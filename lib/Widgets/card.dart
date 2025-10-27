import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Test extends StatefulWidget {
  

  final String namePlant;
  final String descripPlant;
  final String climatePlant;
  final String specialPlant;
  final String imagePlant;
  

  Test({
    required this.namePlant,
    required this.descripPlant,
    required this.climatePlant,
    required this.specialPlant,
    required this.imagePlant,
  });

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(  
                borderRadius: BorderRadius.circular(15),
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 1.5
                  )
                )

                ),

              child: Image.asset(
                widget.imagePlant,
              ),
            ),

            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text(widget.namePlant, 
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      )
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    // Описание

                    RichText(text: TextSpan(
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 87, 87, 87),
                        fontSize: 15
                      ),
                      children: <TextSpan> [
                        TextSpan(
                          text: 'Описание: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: widget.descripPlant
                        )
                      ]
                    )),
                    
                    SizedBox(
                      height: 5,
                    ),

                    // Категория

                    RichText(text: TextSpan(
                      style: GoogleFonts.poppins(
                        color: const Color.fromARGB(255, 87, 87, 87),
                        fontSize: 15
                      ),
                      children: <TextSpan> [
                        TextSpan(
                          text: 'Категория: ',

                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          )
                        ),
                        TextSpan(
                          text: widget.climatePlant,
                        )

                      ]
                    )),

                    Text('Описание: ${widget.specialPlant}',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 87, 87, 87)
                      ),
                    ),
                    
                    ],
                  ),
                ),
              )
            ],
      ),
      )
    );
  }
}