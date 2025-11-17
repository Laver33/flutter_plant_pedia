import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/Style/AppAssets.dart';
import 'package:my_first_app/Style/CastColors.dart';
import 'package:my_first_app/Widgets/list_%20section.dart';
import 'package:my_first_app/Widgets/list_stats.dart';
import 'package:my_first_app/main.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    final localizations = ref.watch(localizationProvider);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                  child: Text(localizations.static, 
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
                    cardName: localizations.statisticTitles[0],
                  ),
              
                  ListStats(
                    cardData: '1',
                    cardName: localizations.statisticTitles[1],
                  ),
              
                  ListStats(
                    cardData: '1',
                    cardName: localizations.statisticTitles[2],
                  ),
              
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Text(localizations.sections, style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16
                ),
                ),
              ),
            ),

            ListSection(
              titleFirst: localizations.sectionsTitles[0],
              imageFirst: AppAssets.plantsImg,
              colorFirst: AppColors.plantsColor,
              navigateFirst: '/settings',

              titleSecond: localizations.sectionsTitles[1],
              imageSecond: AppAssets.calendarImg,
              colorSecond: AppColors.calendarColor,
              navigateSecond: '/calendar',
            ),

            SizedBox(
              height: 30,
            ),

            ListSection(
              titleFirst: localizations.sectionsTitles[2],
              imageFirst: AppAssets.recordingImg, 
              colorFirst: AppColors.recordingColor,
              navigateFirst: '/record',

              titleSecond: localizations.sectionsTitles[3],
              imageSecond: AppAssets.settingsImg, 
              colorSecond: AppColors.settingsColor, 
              navigateSecond: '/settings',
            )

          ],
      ))
    );
  }
}