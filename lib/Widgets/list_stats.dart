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
        border: Border.all(
          color: Colors.black
        ),
        borderRadius: BorderRadius.circular(10)
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