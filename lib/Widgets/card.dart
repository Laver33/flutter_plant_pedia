import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/data/post_data.dart';
import 'package:my_first_app/main.dart';
import 'package:my_first_app/provider/plants_provider.dart';

class Test extends ConsumerStatefulWidget {
  final String namePlant;
  final String descripPlant;
  final String climatePlant;
  final String specialPlant;
  final String imagePlant;
  final int plantId;

  Test({
    required this.namePlant,
    required this.descripPlant,
    required this.climatePlant,
    required this.specialPlant,
    required this.imagePlant,
    required this.plantId,
  });

  @override
  ConsumerState<Test> createState() => _TestState();
}

class _TestState extends ConsumerState<Test> {

  void _addToMyPlants() {
    final plant = posts.firstWhere(
      (p) => p.name == widget.namePlant, 
      orElse: () => PostData(
        title: widget.namePlant,
        name: widget.namePlant,
        description: widget.descripPlant,
        id: 999, 
        imagePath: widget.imagePlant,
        category: widget.climatePlant,
      ),
    );

    ref.read(plantsProvider.notifier).addPlant(plant);
    final localizations = ref.watch(localizationProvider);
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(text: widget.namePlant),
              TextSpan(text: localizations.notificationTitle),
            ]
          ),
        ),
        duration: Duration(seconds: 2),
      )
    );
  }

  // Лок описание
  String _getLocalizedDescription() {
    final localizations = ref.watch(localizationProvider);
    
    if (localizations.plantsDesc.isNotEmpty && 
        widget.plantId > 0 && 
        widget.plantId <= localizations.plantsDesc.length) {
      return localizations.plantsDesc[widget.plantId - 1]; 
    }
    
    return widget.descripPlant;
  }

  @override
  Widget build(BuildContext context) {
    final localizations = ref.watch(localizationProvider);
    final localizedDescription = _getLocalizedDescription(); // Вызываем функцию

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.namePlant),
      ),
      body: SafeArea(
        child: Column(
          children: [
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
                      descriptText: localizedDescription, 
                    ),
                    
                    // Категория
                    CustRichTextCard(
                      firtsText: localizations.cardTitles[1],
                      descriptText: widget.climatePlant, 
                    ),

                  ],
                ),
              ),
            ),

            SizedBox(height: 40),

            OutlinedButton.icon(
              onPressed: _addToMyPlants,
              icon: Icon(Icons.message, color: Colors.black),
              label: Text(localizations.buttonCard,
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black
                ),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(250, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                side: BorderSide(width: 0.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Виджет каст

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
        SizedBox(height: 10),
        RichText(
          text: TextSpan(
            style: GoogleFonts.poppins(
              color: const Color.fromARGB(255, 87, 87, 87),
              fontSize: 15,
            ),
            children: <TextSpan>[
              TextSpan(
                text: widget.firtsText, 
                style: TextStyle(fontWeight: FontWeight.bold)
              ),
              TextSpan(text: ': '),
              TextSpan(text: widget.descriptText)
            ]
          ),
        ),
      ],
    );
  }
}