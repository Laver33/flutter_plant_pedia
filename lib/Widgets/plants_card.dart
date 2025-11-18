import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlantsCard extends ConsumerStatefulWidget {
  const PlantsCard({super.key});

  @override
  ConsumerState<PlantsCard> createState() => _PlantsCardState();
}

class _PlantsCardState extends ConsumerState<PlantsCard> {

  double cardH = 130;
  
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container (
            height: cardH,
            width: cardH - 20,
            decoration: BoxDecoration(
              border: BoxBorder.all(
                width: 0.5,
                color: Colors.black
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
          ),

          Container (),
        ],
      ),
    );
  }
}