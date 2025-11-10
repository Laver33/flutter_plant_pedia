import 'package:flutter/material.dart';
import 'package:my_first_app/Style/AppAssets.dart';
import 'package:my_first_app/Style/CastColors.dart';
import 'package:my_first_app/Style/String.dart';
import 'package:my_first_app/Widgets/list_%20section.dart';
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                  child: Text(RuStrings.Static, 
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 16
                  ),
                  ),
                )
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

            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Text('Разделы', style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16
                ),
                ),
              ),
            ),

            ListSection(
              titleFirst: RuStrings.sectionsTitles[0],
              imageFirst: AppAssets.plantsImg,
              colorFirst: AppColors.plantsColor,
              navigateFirst: '/settings',

              titleSecond: RuStrings.sectionsTitles[1],
              imageSecond: AppAssets.calendarImg,
              colorSecond: AppColors.calendarColor,
              navigateSecond: '/settings',
            ),

            SizedBox(
              height: 30,
            ),

            ListSection(
              titleFirst: RuStrings.sectionsTitles[2],
              imageFirst: AppAssets.recordingImg, 
              colorFirst: AppColors.recordingColor,
              navigateFirst: '/record',

              titleSecond: RuStrings.sectionsTitles[3],
              imageSecond: AppAssets.settingsImg, 
              colorSecond: AppColors.settingsColor, 
              navigateSecond: '/settings',
            )

          ],
      ))
    );
  }
}