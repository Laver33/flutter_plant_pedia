import 'package:flutter/material.dart';
import 'package:my_first_app/Style/String.dart';
import 'package:my_first_app/Widgets/list_stats.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(RuStrings.Static)
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              
                  ListStats(
                    cardData: '1',
                    cardName: 'Растения',
                  ),
              
                  ListStats(
                    cardData: '1',
                    cardName: 'Растения',
                  ),
              
                  ListStats(
                    cardData: '1',
                    cardName: 'Записей',
                  ),
              
                ],
              ),
            ),

            Center(
              child: Text('Разделы', style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16
              ),
              ),
            )


          ],
      ))
    );
  }
}