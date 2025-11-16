import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/main.dart';

class Test extends ConsumerStatefulWidget {
  

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
  ConsumerState<Test> createState() => _TestState();
}

class _TestState extends ConsumerState<Test> {
  @override
  Widget build(BuildContext context) {

    final localizations = ref.watch(localizationProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.namePlant),
      ),
      body: SafeArea(
        child: Column(
          children: [

            // Отступы для теста

            Padding( 
              padding: const EdgeInsets.all(15.0),
              child: Container(
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

                    // Описание

                    CustRichTextCard(
                      firtsText: localizations.cardTitles[0],
                      descriptText: widget.descripPlant, 
                    ),
                    
                    // Категория

                    CustRichTextCard(
                      firtsText: localizations.cardTitles[1],
                      descriptText: widget.climatePlant, 
                    ),

                    // Поливы

                    CustRichTextCard(
                      firtsText: localizations.cardTitles[2],
                      descriptText: 'Доделать', 
                    ),

                    // Особенности

                    CustRichTextCard(
                      firtsText: localizations.cardTitles[3],
                      descriptText: 'Доделать', 
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


// Виджет для текста

class CustRichTextCard extends StatefulWidget {

  final String firtsText;
  final String descriptText;

  CustRichTextCard({
    required this.firtsText,
    required this.descriptText,
  });

  @override
  State<CustRichTextCard> createState() => _CustRichTextCardState();
}

class _CustRichTextCardState extends State<CustRichTextCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        SizedBox(
          height: 10,
        ),

        RichText(
          text: TextSpan(
            style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 87, 87, 87),
              fontSize: 15,
            ),
            children: <TextSpan>[
              TextSpan(
                text: widget.firtsText, style: TextStyle(
                  fontWeight: FontWeight.bold
                  )
                ),
                TextSpan(
                  text: ': ',
                  ),
                TextSpan(
                  text: widget.descriptText
                )
            ]
          ),
          
        ),
      ],
    );
  }
}