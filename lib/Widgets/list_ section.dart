import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListSection extends StatefulWidget {
  final String titleFirst;
  final String imageFirst;
  final Color colorFirst;
  final String navigateFirst;

  final String titleSecond;
  final String imageSecond;
  final Color colorSecond;
  final String navigateSecond;




  ListSection({
    required this.titleFirst,
    required this.imageFirst,

    required this.titleSecond,
    required this.imageSecond,

    required this.colorSecond,
    required this.colorFirst,

    required this.navigateFirst,
    required this.navigateSecond,
    });


  @override
  State<ListSection> createState() => _ListSectionState();
}

class _ListSectionState extends State<ListSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [

        GestureDetector(
          onTap: () {
            context.push(widget.navigateFirst);
          },
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: widget.colorFirst,

              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  offset: Offset(3, 3),
                  spreadRadius: 0.5,
                )
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Image.asset(
                  widget.imageFirst,
                  height: 32,
                  ),

                  SizedBox(
                    height: 10,
                  ),

                Text(widget.titleFirst)
              ],
            ),
          ),
        ),

        GestureDetector(
          onTap: () {
            context.push(widget.navigateSecond);
          },

          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: widget.colorSecond,

              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  offset: Offset(3, 3),
                  spreadRadius: 0.5,
                )
              ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Image.asset(
                  widget.imageSecond,
                  height: 32,
                  ),

                  SizedBox(
                    height: 10,
                  ),

                Text(widget.titleSecond)
            ],
          ),
        ),
        )
      ],
    );
  }
}