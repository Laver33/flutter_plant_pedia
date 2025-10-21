import 'package:flutter/material.dart';

class ListStats extends StatefulWidget {
  final String cardName;
  final String cardData;


  const ListStats({
    required this.cardData,
    required this.cardName,
    });

  @override
  State<ListStats> createState() => _ListStatsState();
}

class _ListStatsState extends State<ListStats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 110,

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),

        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            offset: Offset(1, 1),
            spreadRadius: 0.5,
          )
        ]
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Text(widget.cardData),

          Text(widget.cardName)
        ],
      ),
    );
  }
}

// BoxDecoration(
//         border: Border.all(
//           color: Colors.black
//         ),
//         borderRadius: BorderRadius.circular(10)
//       ),