import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/Style/AppAssets.dart';

class Test extends StatefulWidget {
  

  final String namePlant;
  final String descripPlant;
  final String climatePlant;
  final String specialPlant;
  

  Test({
    required this.namePlant,
    required this.descripPlant,
    required this.climatePlant,
    required this.specialPlant,
  });

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Container(
            decoration: BoxDecoration(  
              borderRadius: BorderRadius.circular(15),
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 1
                )
              )

              ),

            child: Image.asset(
            AppAssets.aloe,
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
                    fontSize: 18,
                    )
                  ),

                  SizedBox(
                    height: 10,
                  ),
              
                  Text('Описание: ${widget.descripPlant}',
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
    );
  }
}