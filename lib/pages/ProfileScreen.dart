import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_first_app/Style/AppAssets.dart';
import 'package:my_first_app/Style/CastColors.dart';
import 'package:my_first_app/Widgets/list_%20section.dart';
import 'package:my_first_app/Widgets/list_stats.dart';
import 'package:my_first_app/data/post_data.dart';
import 'package:my_first_app/main.dart';
import 'package:my_first_app/provider/plants_provider.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  
  Map<String, int> _calculateStats(WidgetRef ref) {
    final cartItems = ref.watch(plantsProvider);
    final totalPlantsInApp = posts.length;
    
    // Подсчет мох растений
    final addedPlantsCount = cartItems.fold(0, (sum, item) => sum + item.quantity);
    
    // Записи в календаре
    final calendarRecordsCount = 1; 
    
    return {
      'addedPlants': addedPlantsCount,
      'totalPlants': totalPlantsInApp,
      'calendarRecords': calendarRecordsCount,
    };
  }

  @override
  Widget build(BuildContext context) {
    final localizations = ref.watch(localizationProvider);
    final stats = _calculateStats(ref);

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
                  // Кол-во моих раст
                  ListStats(
                    cardData: '${stats['addedPlants']}',
                    cardName: localizations.statisticTitles[0],
                  ),
              
                  // Кол-во растений
                  ListStats(
                    cardData: '${stats['totalPlants']}', 
                    cardName: localizations.statisticTitles[1],
                  ),
              
                  // Записи
                  ListStats(
                    cardData: '${stats['calendarRecords']}',
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
              navigateFirst: '/plant',

              titleSecond: localizations.sectionsTitles[1],
              imageSecond: AppAssets.calendarImg,
              colorSecond: AppColors.calendarColor,
              navigateSecond: '/calendar',
            ),

            SizedBox(height: 30),

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
        ),
      ),
    );
  }
}